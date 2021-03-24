@extends('layouts.app')

@section('content')
<div class="login-snip"><input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab"></label> <input id="tab-1" type="radio" name="tab" class="sign-up" checked><label for="tab-2" class="tab">Registro</label>
    <div class="login-space">
        <div class="sign">
            <form method="POST" action="{{ route('register') }}">
                @csrf
                <input id="num_cuenta" type="hidden" name="num_cuenta">
                <div class="group"> 
                    <label for="user" class="label">Nombres</label> 
                    <input id="name" type="text" class="input @error('name') is-invalid @enderror noborde" name="name" value="{{ old('name') }}"   autofocus>
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <small>{{ $message }}</small>
                        </span>
                    @enderror 
                </div>
                <div class="group"> 
                    <label for="id" class="label">Identificacion</label> 
                    <input id="identificacion" type="number" class="input @error('identificacion') is-invalid @enderror noborde" name="identificacion" value="{{ old('identificacion') }}" >
                    @error('identificacion')
                        <span class="invalid-feedback" role="alert">
                            <small>{{ $message }}</small>
                        </span>
                    @enderror
                </div>
                <div class="group"> 
                    <label for="mail" class="label">Correo</label> 
                    <input id="email" type="email" class="input @error('email') is-invalid @enderror noborde" name="email" value="{{ old('email') }}"  >
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <small>{{ $message }}</small>
                        </span>
                    @enderror
                </div>
                <div class="group"> 
                    <label for="pass" class="label">Contraseña</label> 
                    <input id="password" type="password" class="input @error('password') is-invalid @enderror noborde" name="password" >
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <small>{{ $message }}</small>
                        </span>
                    @enderror 
                </div>

                <div class="group"> <input type="submit" class="button noborde" value="Aceptar">
                    <div class="hr"><br>
                    <div class="foot"> <a href="{{ url('/') }}"> ¿Ya eres miembro? Ingresa aquí.</a> </div></div> 
                </div>
            </form>
        </div>
    </div>
</div>
<script>
var num = Math.floor(Math.random() * 9999999999) + 1000000000;
$('#num_cuenta').val(num);
</script>
@endsection