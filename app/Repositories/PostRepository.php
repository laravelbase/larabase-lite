<?php
namespace App\Repositories;

use App\Models\Like;
use Illuminate\Container\Container as Application;
use App\Models\Comment;
use App\Models\Post;
use Illuminate\Support\Facades\Auth;

class PostRepository extends BaseRepository{

    protected $searchable =[
        'columns'=>[
            'title'=>10,
            'body'=>8
        ]
    ];

    public function __construct(Application $app, CommentRepository $commentRepository,CategoryRepository $categoryRepository)
    {
        $this->app = $app;
        $this->commentRepository = $commentRepository;
        $this->categoryRepository = $categoryRepository;
        $this->makeModel();
    }

    public function model(){
        return Post::class;
    }


    public function paginateWithOrder($perPage=10,$order='desc'){

       return  $this->model->orderBy('created_at',$order)->paginate($perPage);
    }

    public function filterByCategory($id){
        $this->model = $this->model->whereHas('categories',function($q)use($id){
            $q->where('categories.id',$id);
        });
        return $this;
    }


    public function getMostRead($amount){

        return  $this->model->orderBy('clicks','desc')->take($amount)->get();
    }

    public function getMostCommentedDynamically($amount,Comment $comment){
        $comments = $comment->select('post_id')->get()->groupBy('post_id');
        $o = collect();
        $comments->each(function($q,$key)use(&$o){
            $o->push([$key=>$q->count()]);
        });
        $post_ids = $o->flatten()->sort()->take(-$amount)->keys()->toArray();
        return $this->model->whereIn($post_ids)->get();
    }

    public function getMostCommented($amount){

        return $this->model->orderBy('comments')->take($amount)->get();
    }

    public function getMostLiked($amount){
        return $this->model->orderBy('likes')->take($amount)->get();
    }

    public function getParentPostsComments(Post $post){
         $comments = $post->comments()->where('parent_id',0)->get();

         $comments->each(function($c){
             $c->user = $c->user()->first();
             $c->likes_count = $c->likes()->count()?$c->likes()->count():0;
             $c->load(['likes.user' => function ($q) use ( &$liked_users ) {
                 $liked_users = $q->get()->unique();
             }]);
             $c->liked_users = $liked_users?$liked_users:[];
             $c->isLiked = $this->commentRepository->isLiked($c->id);
             $c->children_count = $this->commentRepository->getCommentChildrenCount($c->id);
         });

        return $comments;
    }

    public function increaseClick($post){
        $post->clicks +=1;
        $post->timestamps = false;
        $post->save();
        return $post;
    }

    public function togglePostLike($post_id){
        $auth_user = Auth::user();
        $post = $this->find($post_id);
        if($this->isLiked($post_id)){
            Like::where('user_id',$auth_user->id)->where('likeable_id',$post_id)->where('likeable_type','App\Models\Post')->first()->delete();
            $post->likes --;
            $post->save();
            return -1;
        }else{
            $like = new Like();
            $like->user()->associate($auth_user);
            $like->save();
            $post->likes()->save($like);
            $post->likes ++;
            $post->timestamps = false;
            $post->save();
            return 1;
        }
    }



    public function isLiked($post_id){
        if(!Auth::check()){
            return false;
        }
        $auth_user = Auth::user();
        if(Like::where('user_id',$auth_user->id)->where('likeable_id',$post_id)->where('likeable_type','App\Models\Post')->count()>0){
            return true;
        }else{
            return false;
        }
    }

    public function bindCategory($post,$category_id){
        //鉴于前端是单选的下拉菜单，这里就不存多个分类了，直接覆盖之前的
        $post->categories()->sync([$category_id]);
    }

    public function bindUser($post,$user){
        $user->posts()->save($post);
    }

    public function saveFeatureImg($source, $post,$path = 'upload/posts/')
    {
        $img_path = parent::saveImg($source, $path);
        if($img_path){
            $post->feature_img  ='/'.$img_path;
            $post->save();
            return true;
        }else{
            return false;
        }

    }

    public function setDraft($post){
        $post->status = '草稿';
        $post->save();
    }

    public function setStatus($post,$status){
        $post->status = $status;
        $post->save();
    }

    public function setType($post,$type){
        $post->type = $type;
        $post->save();
    }

/*    public function search($query,$perPage){
        dd($this->model);
        return $this->model->search($query);
    }*/


    public function search($q){

        $columns = $this->searchable['columns'];

        $columns = collect($columns);
        $columns->sortByDesc(function($value) {
            return $value;
        });

        $total = collect();

        foreach($columns as $column=>$weight){

            $results = $this->searchGo($column,$q);

            $results->each(function($i)use($total){
                $total->push($i);
            });
        }

        return $total->unique();
    }

    public function searchGo($column,$q){
        $qb = clone $this->model;
        return $qb->where($column,'like','%'.$q.'%')->get();
    }

    public function renderPostUrl($post){
        if($post->type == 'article' && $post->isCollectionPost()){
            $url = '/collection/'.$post->getCollection()->first()->id.'/post/'.$post->id;
        }elseif($post->type == 'article' && !$post->isCollectionPost()){
            $url = route('post',$post->id);
        }elseif($post->type == 'extension'){
            $url = route('show.extension',$post->id);
        };
        return $url;
    }

}