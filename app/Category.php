<?php

namespace App;
use Illuminate\Support\Collection;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    public $fillable = ['name_en','parent_id','sorting'];
    public $timestamps =false;

    public function childs() {

        return $this->hasMany('App\Category','parent_id','id') ;

    }
    
    
         public function parent()
    {
        return $this->belongsTo('App\Category', 'parent_id');
    }


	 	public function getParentsAttribute()
		{
		    $parents = collect([]);
		
		    $parent = $this->parent;
		
		    while(!is_null($parent)) {
		        $parents->push($parent);
		        $parent = $parent->parent;
		    }
		
		    return $parents;
		}

	  public function getAllChildren ()
	    {
	        $sections = new Collection();
	
	        foreach ($this->childs as $section) {
	            $sections->push($section);
	            $sections = $sections->merge($section->getAllChildren());
	        }
	
	        return $sections;
	    }



}