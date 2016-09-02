<?php

namespace App\Http\Controllers\Admin;


use App\Models\Content;
use App\Repositories\ContentRepository;
use App\Http\Controllers\Controller;

use App\Repositories\CategoryRepository;
use App\Repositories\PostRepository;
use App\Repositories\CollectionRepository;
use App\Services\TreeService;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;


class BlogController extends Controller
{
    public function __construct(
        PostRepository $postRepository,
        CategoryRepository $categoryRepository,
        CollectionRepository $collectionRepository,
        ContentRepository $contentRepository,
        TreeService $treeService
    ){
        $this->middleware('auth');
        $this->postRepository = $postRepository;
        $this->categoryRepository = $categoryRepository;
        $this->collectionRepository =$collectionRepository;
        $this->contentRepository =$contentRepository;
        $this->treeService = $treeService;

    }

    /*Post*/

    public function listPosts(){
        $posts = $this->postRepository->filterBy('type','article')->paginateWithOrder(15,'desc');

        return view('admin.posts',compact('posts'));
    }

    public function filterPostsByStatus($status){
        $posts = $this->postRepository->filterBy('type','article')->filterBy('status',$status)->paginateWithOrder(15,'desc');

        return view('admin.post.drafts',compact('posts'));

    }

    public function createPost(){
        $categories = $this->categoryRepository->getPostCategories();
        return view('admin.post.create_post',compact('categories'));
    }

    public function postPost(Request $request){

        $data = $request->except(['_token','submit_type','category_id','feature_img']);
        $post = $this->postRepository->create($data);
        $this->postRepository->setType($post,'article');
        $this->postRepository->bindCategory($post,$request->category_id);
        $this->postRepository->bindUser($post,Auth::user());
        if($request->hasFile('feature_img')){
        $source = $request->file('feature_img');
        $this->postRepository->saveFeatureImg($source,$post);
        }
        $this->postRepository->setStatus($post,'已发布');
        switch ($request->submit_type)
        {
            case 1:
                flash('文章创建成功！', 'success');
                return redirect()->route('list.posts');
                break;
            case 2:
                flash('文章创建成功！', 'success');
                return redirect()->route('create.post');
                break;
            case 3:
                $this->postRepository->setDraft($post);
                flash('文章创建成功,当前状态为草稿！', 'success');
                return redirect()->route('list.posts');
                break;
            default:
                abort(404);
        }
    }

    public function editPost($id){
        $post = $this->postRepository->findOrFail($id);
        $categories = $this->categoryRepository->getPostCategories();
        return view('admin.post.edit_post',compact('categories','post'));
    }

    public function updatePost(Request $request,$id){

        $data = $request->except(['_token','submit_type','category_id','feature_img']);
        $post = $this->postRepository->fill($id, $data);
        $this->postRepository->bindCategory($post,$request->category_id);
        if($request->hasFile('feature_img')){
            $source = $request->file('feature_img');
            $this->postRepository->saveFeatureImg($source,$post);
        }
        switch ($request->submit_type)
        {
            case 1:
                flash('文章更新成功！', 'success');
                return redirect()->route('list.posts');
                break;
            case 2:
                flash('文章更新成功！', 'success');
                return redirect()->back();
                break;
            default:
                abort(404);
        }
    }

    public function deletePost($id){
        $this->postRepository->delete($id);
        flash('文章删除成功！', 'success');
        return redirect()->route('list.posts');
    }

    public function setDraft($id){
        $post = $this->postRepository->findOrFail($id);
        $this->postRepository->setDraft($post);
        flash('该文章已被设置为草稿', 'success');
        return redirect()->route('list.posts');
    }

    public function publishPost($id){
        $post = $this->postRepository->findOrFail($id);
        $post->status = '已发布';
        $post->save();
        flash('文章已发布', 'success');
        return redirect()->route('list.posts');
    }
    /*Collection*/

    public function listCollections(){

        $collections = $this->collectionRepository->paginateWithOrder(15);
        return view('admin.collection.collections',compact('collections'));
    }

    public function createCollection(){
        return view('admin.collection.create_collection');
    }

    public function postCollection(Request $request){
        $data = $request->except('_toke');
        $collection = $this->collectionRepository->create($data);

        if($request->hasFile('cover_img')){
            $source = $request->file('cover_img');
            $this->collectionRepository->saveCoverImg($source,$collection);
        }

        flash('专辑创建成功！', 'success');
        return redirect()->route('list.collections');
    }

    public function editCollection($id){
        $collection = $this->collectionRepository->findOrFail($id);

        return view('admin.collection.edit_collection',compact('collection'));
    }

    public function updateCollection($id,Request $request){
        $data = $request->except('_toke');
        $collection = $this->collectionRepository->fill($id, $data);

        if($request->hasFile('cover_img')){
            $source = $request->file('cover_img');
            $this->collectionRepository->saveCoverImg($source,$collection);
        }

        flash('专辑更新成功！', 'success');
        return redirect()->route('list.collections');
    }

    public function deleteCollection($id){
        $this->collectionRepository->delete($id);

        flash('专辑删除成功！', 'success');
        return redirect()->route('list.collections');
    }

    /*Content*/

    public function getContents($col_id){
        $collection = $this->collectionRepository->findOrFail($col_id);
        $collections = $this->collectionRepository->all();
        $contents = $this->contentRepository->renderContents($col_id);

        return view('admin.contents',compact('collection','collections','contents'));
    }

    public function rebuildContents($col_id){
        $this->contentRepository->rebuildContents($col_id);
        return back();
    }

    public function postContent(Request $request){

        $content =  $this->contentRepository->create($request->except('_token'));
        $content =  $this->contentRepository->determineOrder($content);
        $content->save();

        if($content->link){
            $post = $this->postRepository->findOrFail($content->link);
            $post->content_id = $content->id;
            $post->save();
        }

        flash('新建成功！', 'success');
        return redirect()->back();
    }

    public function updateContent(Request $request,$id){


        $content =  $this->contentRepository->fill($id,$request->except(['_token','parent_id']));
        $old_parent_id =$content->parent_id;
        if($content->link){
            $post = $this->postRepository->findOrFail($content->link);
            $post->content_id = $content->id;
            $post->save();
        }

        //如果更新了父类，则更新排序
        if($request->get('parent_id') !== $old_parent_id){
            $content->parent_id = $request->get('parent_id');
            $content =  $this->contentRepository->determineOrder($content);
            $content->save();
            //剩下的重新排序
            $children = $this->contentRepository->getARow($old_parent_id);

            $this->treeService->rebuildChildren($children);

        }


        flash('更新成功！', 'success');
        return redirect()->back();
    }

    public function editContent($col_id,$c_id){
        $collection = $this->collectionRepository->findOrFail($col_id);
        $collections = $this->collectionRepository->all();

        $contents = $this->contentRepository->renderContents($col_id);
        if(!$contents->count()>0){
            return redirect()->route('collection.contents',$col_id);
        }
        $edit = $this->contentRepository->findOrfail($c_id);

        return view('admin.edit_content',compact('collection','collections','contents','edit'));
    }

    public function moveUpContent($id){
        $content = $this->contentRepository->findOrFail($id);
        $result = $this->treeService->moveUp($content);

        if(!$result){
            flash('这是第一个节点，不能再往前移动了！', 'danger');
            return redirect()->back();
        }
        flash('移动成功！', 'success');
        return redirect()->back();
    }

    public function moveDownContent($id){
        $content = $this->contentRepository->findOrFail($id);
        $result = $this->treeService->moveDown($content);

        if(!$result){
            flash('这是最后一个节点，不能再往后移动了！', 'danger');
            return redirect()->back();
        }
        flash('移动成功！', 'success');
        return redirect()->back();
    }

    public function moveContentTo($c_id,$target_id,$position){

        if($c_id == $target_id){
            flash('自己移动到自己的位置上没有意义！', 'warning');
            return redirect()->back();
        }
        $node = $this->contentRepository->findOrFail($c_id);
        $target = $this->contentRepository->findOrFail($target_id);
        $this->treeService->moveTo($node,$target,$position);

        flash('移动成功！', 'success');
        return redirect()->back();
    }

    public function deleteContent($id){
        $content = $this->contentRepository->findOrFail($id);
        $result = $this->treeService->deleteNode($content);

        if($result){
            flash('删除成功！', 'success');
        }else{
            flash('该节点下有未删除节点，请先删除子节点！', 'danger');
        }

        return redirect()->back();

    }

    /*Category*/

    public function getCategories(){
        $categories = $this->categoryRepository->renderCategories();

        return view('admin.category.categories',compact('categories'));
    }

    public function rebuildCategories(){
        $this->categoryRepository->rebuildCategories();
        return back();
    }

    public function postCategory(Request $request){

        $category =  $this->categoryRepository->create($request->except('_token'));
        $category =  $this->categoryRepository->determineOrder($category);
        $category->save();
        flash('新建成功！', 'success');
        return redirect()->back();
    }

    public function updateCategory(Request $request,$id){
        $category =  $this->categoryRepository->fill($id,$request->except(['_token','parent_id']));
        $old_parent_id =$category->parent_id;

        //如果更新了父类，则更新排序
        if($request->get('parent_id') !== $old_parent_id){
            $category->parent_id = $request->get('parent_id');
            $category =  $this->categoryRepository->determineOrder($category);
            $category->save();
            //剩下的重新排序
            $children = $this->categoryRepository->getARow($old_parent_id);

            $this->treeService->rebuildChildren($children);

        }
        flash('更新成功！', 'success');
        return redirect()->back();
    }

    public function editCategory($id){

        $categories = $this->categoryRepository->renderCategories();
        if(!$categories->count()>0){
            return redirect()->route('categories');
        }
        $edit = $this->categoryRepository->findOrfail($id);

        return view('admin.category.edit_category',compact('categories','edit'));
    }

    public function moveUpCategory($id){
        $category = $this->categoryRepository->findOrFail($id);
        $result = $this->treeService->moveUp($category);

        if(!$result){
            flash('这是第一个节点，不能再往前移动了！', 'danger');
            return redirect()->back();
        }
        flash('移动成功！', 'success');
        return redirect()->back();
    }

    public function moveDownCategory($id){
        $category = $this->categoryRepository->findOrFail($id);
        $result = $this->treeService->moveDown($category);

        if(!$result){
            flash('这是最后一个节点，不能再往后移动了！', 'danger');
            return redirect()->back();
        }
        flash('移动成功！', 'success');
        return redirect()->back();
    }

    public function moveCategoryTo($cat_id,$target_id,$position){

        if($cat_id == $target_id){
            flash('自己移动到自己的位置上没有意义！', 'warning');
            return redirect()->back();
        }
        $node = $this->categoryRepository->findOrFail($cat_id);
        $target = $this->categoryRepository->findOrFail($target_id);

        $this->treeService->moveTo($node,$target,$position);

        flash('移动成功！', 'success');
        return redirect()->back();
    }

    public function deleteCategory($id){
        $category = $this->categoryRepository->findOrFail($id);
        $result = $this->treeService->deleteNode($category);

        if($result){
            flash('删除成功！', 'success');
        }else{
            flash('该节点下有未删除节点，请先删除子节点！', 'danger');
        }

        return redirect()->back();

    }


}
