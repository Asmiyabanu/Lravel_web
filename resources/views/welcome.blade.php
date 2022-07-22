<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
    </head>
    <body class="antialiased">
      
        

        <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">ABCshop</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      
    </ul>
    @if (Route::has('login'))
    <ul class="nav navbar-nav navbar-right">
    @auth
      <li><a href="{{ url('/dashboard') }}"><span class="glyphicon glyphicon-user"></span>Dashboard</a></li>
      @else
      <li><a href="{{ route('login') }}"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      @if (Route::has('register'))
      <li><a href="{{ route('register') }}"><span class="glyphicon glyphicon-log-in"></span> Register</a></li>
      @endif
      @endauth
    </ul>
    @endif
  </div>
</nav>
  
<div class="container">
  <h3>ABC Shop Product Maintenance</h3>
  <p>please login in your system and go to dashboard</p>
</div>
    </body>
</html>
