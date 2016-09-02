<?php
namespace App\Repositories;

use App\Services\TreeService;
use Illuminate\Container\Container as Application;
use App\Models\Collection;

class CollectionRepository extends BaseRepository{

    public function __construct(Application $app, PostRepository $postRepository,TreeService $treeService)
    {
        $this->app = $app;
        $this->postRepository = $postRepository;
        $this->treeService =$treeService;
        $this->makeModel();
    }

    public function model(){
        return Collection::class;
    }

    public function getContents($col_id){
        return $this->model->findOrFail($col_id)->contents()->get();
    }

    public function renderContent($col_id){

        $contents = $this->getContents($col_id);

        return $this->treeService->formatTree($contents,0);

    }

    public function saveCoverImg($source, $collection,$path = 'upload/collections/')
    {
        $img_path = parent::saveImg($source, $path);
        if($img_path){
            $collection->cover_img  ='/'.$img_path;
            $collection->save();
            return true;
        }else{
            return false;
        }

    }


}