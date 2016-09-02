<?php
namespace App\Repositories;


use App\Models\Category;
use Illuminate\Container\Container as Application;
use App\Services\TreeService;


class CategoryRepository extends BaseRepository{

    public function __construct(Application $app,TreeService $treeService)
    {
        $this->app = $app;
        $this->treeService =$treeService;
        $this->makeModel();
    }

    public function model(){
        return Category::class;
    }

    public function getPostCategories(){
       return  $this->model->where('type','post')->orderBy('order','asc')->get();

    }

    public function getCategories($type){
        return  $this->model->where('type',$type)->get();
    }

    public function renderCategories(){
        $cats = $this->getPostCategories();
        return $this->treeService->formatTree($cats,0);
    }

    public function rebuildCategories(){

        $cats = $this->getPostCategories();
        return $this->treeService->rebuildTree($cats,0);

    }

    public function  determineOrder($cat){
        $cat->order = $cat->getSiblings(1)->count()+1;
        return $cat;
    }

    public function getARow($parent_id){
        return $this->model->where('parent_id',$parent_id)->get();
    }




}