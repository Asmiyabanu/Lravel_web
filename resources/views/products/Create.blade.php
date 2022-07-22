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
            <div class="card-header">Product Add Page</div>
            <div class="card-body">
                
                <form action="{{ url('product') }}" method="post">
                  {!! csrf_field() !!}
                  <label>Name</label></br>
                  <input type="text" name="name" id="name" class="form-control"></br>
                  <label>Price</label></br>
                  <input type="text" name="price" id="price" class="form-control"></br>

                  <label>Category</label></br>
                 
                  <select name="category" id="ccategory" class="form-control">
                      <option value="">Select</option>
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
                  <input type="text" name="description" id="description" class="form-control"></br>
                  <input type="submit" value="Save" class="btn btn-success"></br>
              </form>
            
            </div>
          </div>
      </div>
    </div>
</div>
</x-app-layout>
