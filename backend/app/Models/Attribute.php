<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Attribute extends Model
{
    protected $fillable = [
        'name',
        'value',
        'parent_id'
    ];
    public function productAttributes()
    {
        return $this->hasMany(ProductAttribute::class, 'attributes_id');
    }

    public function product()
    {
        return $this->belongsToMany(Product::class, 'product_attributes');
    }
    public function parent()
    {
        return $this->belongsTo(Attribute::class, 'parent_id');
    }

    public function children()
    {
        return $this->hasMany(Attribute::class, 'parent_id');
    }
}
