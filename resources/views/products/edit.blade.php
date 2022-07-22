@extends('products.layout')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
          <div class="card">
            <div class="card-header">Product Update Page</div>
            <div class="card-body">
                
                <form action="{{ url('product/' .$products->id) }}" method="post">
                  {!! csrf_field() !!}
                  @method("PATCH")
                  <input type="hidden" name="id" id="id" value="{{$products->id}}" id="id" />
                  <label>Name</label></br>
                  <input type="text" name="name" id="name" value="{{$products->name}}" class="form-control"></br>
                  <label>Price</label></br>
                  <input type="text" name="price" id="price" value="{{$products->price}}" class="form-control"></br>
                  <select name="category" id="ccategory" class="form-control">
                     <option value="{{$products->category}}">{{$products->category}}</option>
                      <option value="Electronics">Electronics</option>
                      <option value="Ladies Wears">Ladies Wears</option>
                      <option value="Mens Wear">Mens Wear</option>
                      <option value="Kids Wear">Kids Wear</option>
                      <option value="Furnitures">Furnitures</option>
                      <option value="Home Appliances">Home Appliances</option>
                      <option value="Electronics Gadgets">Electronics Gadgets</option>
      
                    </select>
                    </br>    
                  <label>Description</label></br>
                  <input type="text" name="description" id="description" value="{{$products->description}}" class="form-control"></br>
                  <input type="submit" value="Update" class="btn btn-success"></br>
              </form>
            
            </div>
          </div>
        </div>
      </div>
</div>
</x-app-layout>