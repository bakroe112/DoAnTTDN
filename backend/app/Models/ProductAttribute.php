<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductAttribute extends Model
{
    protected $fillable = ['product_id', 'attribute_id'];
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];
    public function products()
    {
        return $this->belongsToMany(Product::class, 'product_attributes', 'product_id', 'attribute_id');
    }
    public function attributes()
    {
        return $this->belongsToMany(Attribute::class);
    }
}
