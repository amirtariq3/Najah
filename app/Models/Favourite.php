<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Favourite extends Model
{
    protected $fillable = [
        'user_id', 'product_id'
    ];

    public function user()
    {
         return $this->belongTo('App\User');
    }

    public function product()
    {
        return $this->belongTo('App\Models\Product');
    }
}
