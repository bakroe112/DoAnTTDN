<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Image extends Model
{
    protected $fillable = [
        'url',
    ];
    public function productImages()
    {
        return $this->hasMany(ProductImage::class, 'image_id');
    }
    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_images','image_id', 'product_id');
    }
}
