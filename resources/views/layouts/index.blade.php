
<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <link rel="stylesheet" href="{{ asset('css/estilos.css') }}">
        <link href="https://fonts.googleapis.com/css?family=Nunito:200,600" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>

    </head>
    <body>
<div class="row">
    <div class="col-md-6 mx-auto p-0">
        <div class="card-center">
            <div class="home-box">
            <div class="header">
                <div class="card-header-banner">
                    
                    <div class="">
                        <label class="titulo" for="formGroupExampleInput">Tu Banco</label>
                        <div class="row user">
                            <label for="formGroupExampleInput2">Bienvenido/a {{Auth::user()->name}}</label>
                        </div>
                        <br>
                        <div class="row logout">
                            <a  style="text-decoration:none; color:#E3EAE6;"  href="{{ route('logout') }}"onclick="event.preventDefault(); document.getElementById('logout-form').submit();">{{ __('Cerrar sesión') }}</a>
                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">@csrf</form>
                        </div>   
                    </div>    

                </div>
            </div>
                
            <div class="card-body">

            @yield('contenido')
            </div>
<!-- Footer -->
<footer class="page-footer font-small blue">
  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href=""> www.tubanco.com</a>
  </div>
  <!-- Copyright -->

</footer>
<!-- Footer -->
        </div>
    </div>
    
</div>
    
</body>
</html>