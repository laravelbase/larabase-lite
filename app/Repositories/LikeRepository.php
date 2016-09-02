<?php
namespace App\Repositories;

use App\Models\Like;
use Illuminate\Support\Facades\Auth;
use Illuminate\Container\Container as Application;

class LikeRepository extends BaseRepository{

    public function __construct(Application $app,PostRepository $postRepository)
    {
        parent::__construct($app);
        $this->postRepository = $postRepository;
    }

    public function model(){
        return Like::class;
    }

    public function unlikeLikes($ids,$type){

        foreach($ids as $id){
            $post =$this->postRepository->findOrFail($id);
            $post->likes --;
            $post->save();
            $this->model->where('user_id',Auth::user()->id)->where('likeable_id',$id)->where('likeable_type',$type)->first()->delete();
        }
    }

}