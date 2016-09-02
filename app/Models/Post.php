<?php

namespace App\Models;

use App\Services\SearchableTrait;
use App\Services\TreeServiceTrait;
use GrahamCampbell\Markdown\Facades\Markdown;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class Post extends Model
{
    use SoftDeletes;
    use TreeServiceTrait;
    use SearchableTrait;

    protected $dates = ['created_at', 'updated_at','deleted_at'];
    protected $fillable = ['title','category_id','body','seo_keywords','seo_desc','status','type','likes','clicks','comments','desc','url'];

    protected $casts = [
        'id' => 'string',
    ];
    public $searchable =[
        'columns'=>[
            'title'=>10,
            'body'=>8
        ]
    ];

    //关系绑定
    public function user(){
        return $this->belongsTo('App\Models\User');
    }

    public function categories(){
        return $this->morphToMany('App\Models\Category','categoryable','categoryable');
    }

    public function collection(){
        return $this->belongsTo('App\Models\Collection');
    }

    public function comments(){
        return $this->hasMany('App\Models\Comment');
    }

    public function likes()
    {
        return $this->morphMany('App\Models\Like', 'likeable');
    }

    public function content(){
        return $this->belongsTo('App\Models\Content');
    }

    //动态属性修改

    public function getGenreAttribute(){

        return $this->content()->first()?'专辑':'散文';
    }

    public function getFirstCategoryAttribute(){
        return $this->categories()->first();
    }


    //方法
    public function getCategoriesList(){
        $result ='';
        foreach($this->categories as $category){

            $result .= $category->name.',';
        }
        return substr($result,0,-1);
    }

    public function isDraft(){
        if($this->isDraft == '草稿'){
            return true;
        }else{
            return false;
        }
    }

    public function getCollection(){
        return $this->content()->first()->collection()->get();
    }

    public function isCollectionPost(){
        return $this->content()->first()?true:false;
    }

    public function belongsToCollection($collection){
        if($this->content()->first() and $this->content()->first()->collection_id == $collection->id){
            return true;
        }else{
            return false;
        }

    }

    public function getSummery(){
        return strip_tags(Markdown::convertToHtml($this->body));
    }

    public function renderPostUrl(){

        if($this->type == 'article' && $this->isCollectionPost()){
            $url =route('collection.post',[$this->getCollection()->first()->id,$this->id]);

        }elseif($this->type == 'article' && !$this->isCollectionPost()){
            $url = route('post',$this->id);
        }elseif($this->type == 'extension'){
            $url = route('show.extension',$this->id);
        };
        return $url;
    }


}
