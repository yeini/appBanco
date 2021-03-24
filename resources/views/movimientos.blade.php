@extends('layouts.index')
@section('contenido')
<div class="form-group row">
        
        <div class="col-md-6 ">
            <div  class=""><a class="btn btn-info btn-sm" href="{{ route('register') }}"> Volver</a>
                
            </div>
        </div>
    </div>
    <table class="table table-hover table-sm table-bordered" id="table">
        <thead style="color: #fff; background: rgba(0, 77, 77, .9);">
            <tr>
                <th class="text-center">#</th>
                <th class="text-center">Tipo transaccion</th>
                <th class="text-center">Fecha</th>
                <th class="text-center " >Monto</th>
            </tr>
        </thead>
        {{ csrf_field() }}
        @foreach($transacciones as $indexKey => $tran)
            <tr  class="">
                <td class="col1 text-center">{{ $indexKey+1 }}</td>
                @if($tran->tipo_transaccion==1)
                <td class="text-center">Deposito</td>
                @elseif($tran->tipo_transaccion==2)
                <td class="text-center">Retiro</td>
                @else
                <td class="text-center">Transaccion</td>
                @endif
                <td class="text-center">{{$tran->fecha}}</td>
                <td class="text-center"> $ {{$tran->monto}}</td>
                
            </tr>
        @endforeach
    </table>
    
    {{$transacciones->links()}}
@endsection
