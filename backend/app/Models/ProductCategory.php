<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    protected $fillable = ['product_id', 'category_id'];
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    public function products()
    {
        return $this->belongsToMany(Product::class,'product_categories','category_id', 'product_id');
    }
    public function categories()
    {
        return $this->belongsToMany(Category::class);
    }
}
