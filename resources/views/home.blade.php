@extends('layouts.index')
@section('contenido')
            <div class="card text-center">
                <div class="card-header">
                    
                </div>
                <div class="card-body">
                    <h5 class="card-title">Cuenta N°. {{Auth::user()->num_cuenta}}</h5>
                    <p class="card-text">El total de tu saldo es: $ {{Auth::user()->saldo_actual}}</p>
                    <a class="btn btn-info btn-sm" href="{{url('transaccion')}}" onclick="event.preventDefault(); document.getElementById('transaccion-form').submit();"> Ver movimientos</a>
                                
                                <form id="transaccion-form" action="{{url('transaccion')}}" method="GET" style="display: none;">
                                {{csrf_field()}} 
                                </form>
                </div>
                <div class="card-footer text-muted">
                    
                </div>
                </div>
                <br>
                <div class="card-deck">
                <div class="col-sm-12">
                    @if(session()->get('success'))
                        <div class="alert alert-success text-center">
                        {{ session()->get('success') }} Tu saldo actual es: $ {{Auth::user()->saldo_actual}}
                        </div>
                    @elseif(session()->get('warning'))
                        <div class="alert alert-warning text-center">
                        {{ session()->get('warning') }} 
                        </div>
                    @endif
                </div>

                    <div class="card">
                    <br>
                                <h5 class="card-title text-center">Depositos</h5>
                        <img class="card-img-top" src="https://image.freepik.com/vector-gratis/dibujos-animados-ahorrar-dinero-negocios_18591-43745.jpg" alt="Card image cap">
                        <div class="card-body">

                            <form action="{{route('transaccion.store')}}" method="post" class="form-horizontal">
                               
                               {{csrf_field()}} 
                               <input type="hidden" id="tipo" name="tipo" value="1"> 
                                <input class="form-control @error('montodeposito') is-invalid @enderror" type="number" min="1" pattern="^[0-9]+" name="montodeposito" placeholder="Valor a depositar" id="montodeposito">
                                @error('montodeposito')
                                    <span class="invalid-feedback" role="alert">
                                        <small>Ingrese el monto a depositar.</small>
                                    </span>
                                @enderror
                                <br>
                                <div class="text-center"> 
                                    <button type="submit" class="redondo btn btn-info btn-md" >Depositar</button>  
                                </div>
                            </form>  

                        </div>
                        <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>

                    <div class="card">
                    <br>
                                <h5 class="card-title text-center">Retiros</h5>
                        <img class="card-img-top" src="https://www.bbva.com.ar/content/dam/public-web/argentina/images/Illustrations/withdrawal_money.png.img.320.1571751097950.png" alt="Card image cap">
                        <div class="card-body">

                            <form action="{{route('transaccion.store')}}" method="post" class="form-horizontal">
                               
                               {{csrf_field()}}  
                               <input type="hidden" id="tipo" name="tipo" value="2">
                                <input class="form-control @error('montoretiro') is-invalid @enderror" type="number" name="montoretiro" min="1" pattern="^[0-9]+" placeholder="Valor a retirar" id="montoretiro">
                                @error('montoretiro')
                                    <span class="invalid-feedback" role="alert">
                                        <small>Ingrese el monto a retirar.</small>
                                    </span>
                                @enderror
                                <br>
                                <div class="text-center"> 
                                    <button type="submit" class="redondo btn btn-info btn-md" >Retirar</button>  
                                </div>
                            </form>  
                        </div>
                        <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>

                    <div class="card">
                    <br>
                    <h5 class="card-title text-center">Transacciones</h5><br>
                        <img class="card-img-top" src="data:image/png;base64,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" alt="Card image cap">
                        
                    <div class="card-body"> 

                            <form action="{{route('transaccion.store')}}" method="post" class="form-horizontal">
                               
                               {{csrf_field()}}  
                               <input type="hidden" id="tipo" name="tipo" value="3">
                                <input class="form-control @error('cuenta_destino') is-invalid @enderror" type="text" name="cuenta_destino" min="1" pattern="^[0-9]+" placeholder="N° de Cuenta" id="cuenta_destino">
                                @error('cuenta_destino')
                                    <span class="invalid-feedback" role="alert">
                                        <small>Ingrese el número de cuenta.</small>
                                    </span>
                                @enderror
                                <br>
                                <input class="form-control @error('montotransaccion') is-invalid @enderror" type="number" min="1" pattern="^[0-9]+" name="montotransaccion" placeholder="Valor a transferir" id="montotransaccion">
                                @error('montotransaccion')
                                    <span class="invalid-feedback" role="alert">
                                        <small>Ingrese el monto a transferir.</small>
                                    </span>
                                @enderror
                                <br>
                                <div class="text-center"> 
                                    <button type="submit" class="redondo btn btn-info btn-md" >Transferir</button>  
                                </div>
                            </form> 

                        </div>
                        <div class="card-footer">
                        <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                </div>
@endsection