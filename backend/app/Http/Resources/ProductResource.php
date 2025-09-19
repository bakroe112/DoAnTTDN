<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ProductResource extends JsonResource
{

    public function __construct($resource)
    {
        parent::__construct($resource);
        $this->withoutWrapping();
    }
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $this->withoutWrapping();
        return [
            'sku' => $this->sku,
            'name' => $this->name,
            'image_url' => $this->image_url,
            'quantity' => $this->quantity,
            'supplier_retail_price' => $this->supplier_retail_price,
            'discount_amount' => $this->discount_amount,
            'sell_price' => $this->sell_price,
            'description' => $this->description,
            'short_description' => $this->short_description,
            'brand_name' => $this->brand_name,
            'categories' => CategoryResource::collection($this->whenLoaded('categories')),
            'attributes' => AttributeResource::collection($this->whenLoaded('attributes')),
            'images' => $this->whenLoaded('images'),
            'createdAt' => $this->created_at,
            'updatedAt' => $this->updated_at,
        ];
    }
}
