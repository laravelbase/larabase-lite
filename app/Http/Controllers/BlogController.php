<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use App\Repositories\CategoryRepository;
use App\Repositories\PostRepository;
use App\Repositories\CollectionRepository;
use GrahamCampbell\Markdown\Facades\Markdown;
use Illuminate\Http\Request;

class BlogController extends Controller
{
    public function __construct(
        PostRepository $postRepository,
        CategoryRepository $categoryRepository,
        CollectionRepository $collectionRepository
    )
    {
        //$this->middleware('auth');
        $this->postRepository = $postRepository;
        $this->categoryRepository = $categoryRepository;
        $this->collectionRepository =$collectionRepository;

    }
    public function showPost($id){

        //获取文章内容
        $post = $this->postRepository->findOrFail($id);
        //点击次数+1
        $post = $this->postRepository->increaseClick($post);
        //获取文章收藏状态
        $post->isLiked = $this->postRepository->isLiked($id);
        //获取文章评论
        $comments = $this->postRepository->getParentPostsComments($post);
        //获取分类
        $categories = $this->categoryRepository->getPostCategories();

        return view('front.show_post',compact('post','categories','comments'));
    }

    public function getCollections(){
        $collections = $this->collectionRepository->all();

        return view('front.collections',compact('collections'));
    }

    public function getCollectionsPost($col_id,$post_id=1){
        //获取专辑
        $collection = $this->collectionRepository->findOrFail($col_id);
        //获取文章内容
        $post = $this->postRepository->find($post_id);
        if(!$post or !$post->isCollectionPost() or !$post->belongsToCollection($collection)){
            flash('出错了，要么这篇文章不存在，要么不是专辑文章，要么不属于该专辑', 'danger');
            return redirect()->route('collections');
        }
        //点击次数+1
        $post = $this->postRepository->increaseClick($post);
        //获取文章收藏状态
        $post->isLiked = $this->postRepository->isLiked($post_id);
        //获取文章评论
        $comments = $this->postRepository->getParentPostsComments($post);

        //获取目录列表
        $contents =$this->collectionRepository->renderContent($col_id);


        return view('front.show_collection_post',compact('post','categories','comments','contents','collection'));

    }


}
