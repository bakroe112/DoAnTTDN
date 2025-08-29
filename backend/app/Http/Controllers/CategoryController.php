<?php

namespace App\Http\Controllers;

use App\Http\Resources\CategoryResource;
use App\Models\Category;
use Illuminate\Http\Request;

class CategoryController extends Controller
{
    private function buildCategoryTree($parentId = null)
    {
        $categories = Category::where('parent_id', $parentId)->get();
        $result = [];
        foreach ($categories as $category) {
            $result[] = [
                'id' => $category->id,
                'name' => $category->name,
                'children' => $this->buildCategoryTree($category->id),
            ];
        }
        return $result;
    }
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $tree = $this->buildCategoryTree();
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
        $category = Category::create([
            'name' => $request->name,
            'parent_id' => $request->parent_id
        ]);
        $tree = $this->buildCategoryTree();
        return response()->json($tree);
    }

    /**
     * Display the specified resource.
     */
    public function show(Category $category)
    {
        return new CategoryResource($category);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Category $category)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $category = Category::where('id', $id)->first();
        $category->update([
            'name' => $request->name,
            'parent_id' => $request->parent_id
        ]);
        $tree = $this->buildCategoryTree();
        return response()->json($tree);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        $category->delete();
        return CategoryResource::collection(Category::all());
    }
}
