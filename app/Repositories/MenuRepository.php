<?php
namespace App\Repositories;


use App\Models\Category;
use App\Models\Menu;

class MenuRepository extends BaseRepository{

    public function model(){
        return Menu::class;
    }

    public function getMenu($category){
        $c =  Category::where('name',$category)->first();
        $menus = $c?$c->menus:[];
        return $menus;
    }

}