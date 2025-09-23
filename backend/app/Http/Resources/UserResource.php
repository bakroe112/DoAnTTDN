<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class UserResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        $this->withoutWrapping();
        return [
            'name' => $this->name,
            'email' => $this->email,
            'password' => $this->email,
            // 'address'=> $this->address,
            // 'number'=> $this->number
        ];
    }
}
