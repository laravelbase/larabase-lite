<?php

namespace App\Http\Controllers\Admin;


use App\Repositories\ContentRepository;
use App\Http\Controllers\Controller;

use App\Repositories\CategoryRepository;
use App\Repositories\PostRepository;
use App\Repositories\CollectionRepository;
use App\Repositories\UserRepository;
use App\Services\TreeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class ApiController extends Controller
{
    public function __construct(
        PostRepository $postRepository,
        CategoryRepository $categoryRepository,
        CollectionRepository $collectionRepository,
        ContentRepository $contentRepository,
        UserRepository $userRepository,
        TreeService $treeService
    ){
        $this->middleware('auth');
        $this->postRepository = $postRepository;
        $this->categoryRepository = $categoryRepository;
        $this->collectionRepository =$collectionRepository;
        $this->contentRepository =$contentRepository;
        $this->userRepository = $userRepository;
        $this->treeService = $treeService;

    }
    public function deleteCollections(Request $request){
        $this->collectionRepository->destroy($request->ids);
        flash('删除成功！', 'success');
        return response('删除成功', 200);
    }

    public function deletePosts(Request $request){
        $this->postRepository->destroy($request->ids);
        flash('删除成功！', 'success');
        return response('删除成功', 200);
    }

}
