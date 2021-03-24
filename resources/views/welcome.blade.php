@extends('layouts.app')

@section('content')
<div class="login-snip"><input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Ingresar</label> <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
<div class="login-space">
    
<div class="login">
<br>
<br>
<br>

    <form method="POST" action="{{ route('login') }}">
        @csrf
        <div class="group"> 
            <label for="user" class="label">Correo</label>
            <input id="email" type="email" class="input @error('email') is-invalid @enderror noborde" name="email" value="{{ old('email') }}"  autofocus>
            @error('email')
                <span class="invalid-feedback  float-right" role="alert">
                    <small>{{ $message }}</small>
                </span>
            @enderror 
        </div>
        <div class="group"> 
            <label for="pass" class="label">CONTRASEÑA</label> 
            <input id="password" type="password" class="input @error('password') is-invalid @enderror noborde" name="password"  >
            @error('password')
                <span class="invalid-feedback  float-right" role="alert">
                    <small>{{ $message }}</small>
                </span>
            @enderror 
        </div>
        <div class="group"> <input type="submit" class="button noborde" value="Sign In"> </div>
        <div class="hr"></div> 
        <div class="foot"> <a href="{{ route('register') }}"> Registrate aquí.</a> </div>
    </form>
</div>
</div>
</div>
@endsection