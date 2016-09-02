<?php
namespace App\Repositories;

use Illuminate\Container\Container as Application;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;
use Illuminate\Pagination\LengthAwarePaginator;
use Illuminate\Support\Facades\Auth;
use Intervention\Image\Facades\Image;

abstract class BaseRepository{

    public function __construct(Application $app)
    {
        $this->app = $app;
        $this->makeModel();
    }

    public function makeModel(){
        $model = $this->app->make($this->model());

        if (!$model instanceof Model) {
            throw new \Exception("Class {$this->model()} must be an instance of Illuminate\\Database\\Eloquent\\Model");
        }

        return $this->model = $model;
    }

    public function clearChain(){
        return $this->makeModel();
    }

    public function with($relation){
         $this->model =  $this->model->with($relation);
        return $this;
    }

    public function paginateWithOrder($perPage=10,$order='desc'){
        return  $this->model->orderBy('created_at',$order)->paginate($perPage);
    }

    public function all(){
        return $this->model->all();
    }

    public function find($id){
        return $this->model->find($id);
    }

    public function findOrFail($id){
        return $this->model->findOrFail($id);
    }

    public function create($data){
        return $this->model->create($data);
    }

    //update 会返回bool值
    public function update($id,$data){

        return $this->model->where('id', $id)->update($data);
    }
    //fill 会返回实例
    public function fill($id,$data){

        $model =  $this->model->findOrFail($id)->fill($data);
        $model->save();
        return $model;
    }

    public function delete($id){
       $model = $this->model->findOrFail($id);

        if((Auth::check() and  $model->user_id ==Auth::user()->id )|| Auth::user()->role =='admin'){
            try{

                $model->delete();

            }catch(\Exception $e){
                return response('请求失败', 403);
            }
            return response('删除成功', 200);
        }else{
            abort(503);
        }

    }

    public function destroy(Array $ids){

        $this->model->destroy($ids);

    }

    public function filterBy($col,$value){

        $this->model = $this->model->where($col,$value);

        return $this;
    }

    public function get(){
        return $this->model->get();
    }

    public function first(){
        return $this->model->first();
    }


    //图片处理
    public function saveImg($source, $path='upload/temp/'){
        $filename = $source->getClientOriginalName();
        $filename = md5($filename.time()).'-'.date("YmdHis").'.'.$source->extension();
        $img = Image::make($source)->save($path.$filename);
        $img->destroy();
        $saved_path = $path.$filename;
        return $saved_path;
    }
    //文件处理
    public function uploadFile($source, $path='upload/temp'){
        $filename = $source->getClientOriginalName();
        $tmp_name = iconv("UTF-8","gb2312", $filename);
        $source->move($path,$tmp_name);
        return iconv("gb2312","UTF-8", $tmp_name);
    }

    //给collection分页

    public function paginateCollection($collection,$perPage =5,$currentPage =1){
        if(!$currentPage){
            $currentPage =1;
        }
        $offset = ($currentPage * $perPage) - $perPage;
        $slice  = $collection->slice($offset, $perPage);
        return new LengthAwarePaginator($slice, $collection->count(), $perPage, $currentPage,['path'=>LengthAwarePaginator::resolveCurrentPath()]);
    }

}
