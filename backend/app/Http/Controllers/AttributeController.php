<?php

namespace App\Http\Controllers;

use App\Http\Resources\AttributeResource;
use App\Models\Attribute;
use Illuminate\Http\Request;

class AttributeController extends Controller
{
    private function buildAttributeTree($parentId = null)
    {
        $attributes = Attribute::where('parent_id', $parentId)->get();
        $result = [];
        foreach ($attributes as $attribute) {
            $result[] = [
                'id' => $attribute->id,
                'name' => $attribute->name,
                'value' => $attribute->value,
                'children' => $this->buildAttributeTree($attribute->id),
            ];
        }
        return $result;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tree = $this->buildAttributeTree();
        return response()->json($tree);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $attribute = Attribute::create([
            'name' => $request->name,
            'value' => $request->value,
            'parent_id' => $request->parent_id
        ]);
        $tree = $this->buildAttributeTree();
        return response()->json($tree);
    }

    /**
     * Display the specified resource.
     */
    public function show(Attribute $attribute)
    {
        return new AttributeResource($attribute);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Attribute $Attribute)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $attribute = Attribute::where('id', $id)->first();
        $attribute->update([
            'name' => $request->name,
            'value' => $request->value,
            'parent_id' => $request->parent_id
        ]);
        $tree = $this->buildAttributeTree();
        return response()->json($tree);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Attribute $attribute)
    {
        $attribute->delete();
        return AttributeResource::collection(Attribute::all());
    }
}
