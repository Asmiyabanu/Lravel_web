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
              <div class="card-header">Product Details</div>
              <div class="card-body">
              
                    <div class="card-body">
                    <h5 class="card-title">Name : {{ $products->name }}</h5>
                    <p class="card-text">Price : {{ $products->price }}</p>
                    <p class="card-text">Category : {{ $products->category }}</p>
                    <p class="card-text">Description : {{ $products->description }}</p>
              </div>
                  
                </hr>
              
              </div>
            </div>
      </div>
    </div>
</div>
</x-app-layout>