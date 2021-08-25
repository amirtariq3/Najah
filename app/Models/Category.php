<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    protected $fillable = [
        'name', 'status'
    ];

    public function product()
    {
        return $this->hasMany('App\Models\Product');
    }

    public function deal()
    {
        return $this->hasMany('App\Models\Deal');
    }
}
