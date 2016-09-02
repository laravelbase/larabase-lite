<?php namespace App\Services;

use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Query\Expression;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Str;



trait SearchableTrait
{
    public function searchQuery($column,$q){
        return $this->where($column,'like','%'.$q.'%');
    }

    public function search($q){
        $columns = $this->searchable['columns'];
        $columns = collect($columns);
        $columns->sortByDesc(function($value) {
            return $value;
        });

        $total = collect();

        foreach($columns as $column=>$weight){

            $results = $this->searchQuery($column,$q)->get();

            $results->each(function($i)use($total){
                $total->push($i);
            });
        }

        return $total->unique();
    }
}