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
            'imageUrl' => $this->image_url,
            'quantity' => $this->quantity,
            'latestPrice' => $this->latest_price,
            'discountAmount' => $this->discount_amount,
            'sellPrice' => $this->sell_price,
            'description' => $this->description,
            'shortDescription' => $this->short_description,
            'brandName' => $this->brand_name,
            'categories' => CategoryResource::collection($this->whenLoaded('categories')),
            'attributes' => AttributeResource::collection($this->whenLoaded('attributes')),
            'images' => $this->whenLoaded('images'),
            'createdAt' => $this->created_at,
            'updatedAt' => $this->updated_at,
        ];
    }
}
