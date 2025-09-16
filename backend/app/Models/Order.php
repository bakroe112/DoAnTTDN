<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    protected $fillable = [
        "products",
        "delivery",
        "payment",
        "status",
        "current_status"
    ];
    protected $casts = [
        'products' => 'array',
        'delivery' => 'array',
        "payment" => 'array',
        "status" => 'array'
    ];

}
