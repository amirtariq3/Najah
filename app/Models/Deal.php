<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Deal extends Model
{
    protected $fillable = [
        'category_id', 'name', 'detail', 'old_price', 'deal_price', 'quantity', 'image',  'status'
    ];

    public function category()
    {
        return $this->belongsTo('App\Models\Category');
    }
}
