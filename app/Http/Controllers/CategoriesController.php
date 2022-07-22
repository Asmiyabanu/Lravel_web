<?php

namespace App\Http\Controllers;
use App\Models\Categories;
use Illuminate\Http\Request;

class CategoriesController extends Controller
{

   public function show()
   {
       $categories = Categories::all();
     return view ('categories.show')->with('categories', $categories);
   }



   public function store(Request $request){

    $request->validate(['category'=>'required|max:191']);

    $Category = new Categories;
    $Category->category = $request->category;
    $Category->save();
    return response()->json(['message'=>'Category Add Successfully'], 200);
   }
}
