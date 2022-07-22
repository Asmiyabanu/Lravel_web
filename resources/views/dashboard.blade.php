<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 bg-white border-b border-gray-200">
                    You're logged in!
                </div>
            
            </div>
        </div>
    </div>
    @can('isAdmin')
    <div class="container">
  <div class="card-columns">
    <div class="card bg-success">
      <div class="card-body text-center">
                    <a href="{{url('product')}}">
                    Products Details
                    </a>        
      </div>
    </div>
    <br>
    <div class="card bg-warning">
      <div class="card-body text-center">
      <a href="{{ url('/product/create') }}">
                                Add New Product
            </a>
      </div>
    </div>
  </div>
</div>
@endcan
</x-app-layout>
