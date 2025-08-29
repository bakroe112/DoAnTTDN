<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    protected $fillable = ['product_id', 'image_id'];

    public function product()
    {
        return $this->belongsTo(Product::class, 'product_id');
    }

    public function image()
    {
        return $this->belongsTo(Image::class, 'image_id');
    }
}
