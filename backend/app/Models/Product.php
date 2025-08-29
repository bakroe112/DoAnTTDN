<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    protected $fillable = [
        'sku',
        'name',
        'image_url',
        'supplier_retail_price',
        'latest_price',
        'discount_amount',
        'discount_percent',
        'sell_price',
        'discount_percent',
        'description',
        'short_description',
        'brand_name',
        'brand_logo'
    ];
    protected $primaryKey = 'sku';
    public $incrementing = false;
    // protected $keyType = 'int';
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];
    // public function getRouteKeyName()
    // {
    //     return 'sku';
    // }

    public function attributes()
    {
        return $this->belongsToMany(Attribute::class, 'product_attributes', 'product_id', 'attribute_id');
    }

    public function categories()
    {
        return $this->belongsToMany(Category::class, 'product_categories', 'product_id', 'category_id');
    }
    public function images()
    {
        return $this->belongsToMany(Image::class, 'product_images', 'product_id', 'image_id');
    }
}
