<?php
namespace App\Repositories;


use App\Models\Content;
use Illuminate\Container\Container as Application;
use App\Services\TreeService;

class ContentRepository extends BaseRepository{

    public function __construct(Application $app, CollectionRepository $collectionRepository,TreeService $treeService)
    {
        $this->app = $app;
        $this->collectionRepository = $collectionRepository;
        $this->treeService =$treeService;
        $this->makeModel();
    }

    public function model(){
        return Content::class;
    }

    public function getContents($col_id){
        $collection = $this->collectionRepository->findOrFail($col_id);
        $contents = $collection->contents()->get();

        return $contents;
    }

    public function renderContents($col_id){

        $contents = $this->getContents($col_id);
        return $this->treeService->formatTree($contents,0);

    }

    public function rebuildContents($col_id){

        $contents = $this->getContents($col_id);
        return $this->treeService->rebuildTree($contents,0);

    }

    public function determineOrder($content){
        $content->order = $content->getSiblings(1)->count()+1;
        return $content;
    }

    public function getARow($parent_id){
        return $this->model->where('parent_id',$parent_id)->get();
    }

    
}