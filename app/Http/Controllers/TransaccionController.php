<?php

namespace App\Http\Controllers;

use App\Transaccion;
use App\User;
use Illuminate\Http\Request;
use DB;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class TransaccionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $transacciones=DB::table('transacciones')
        ->where('user_id', Auth::user()->id)
        ->orderBy('id','desc')
        ->paginate(10);
        
        return view('movimientos',["transacciones"=>$transacciones]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        if (( $request->get('tipo') == 1 ) ){
        
            $this->validate($request,[
                'montodeposito' => 'required',
            ]);

            $mytime= Carbon::now('America/Costa_Rica');

            $transaccion = new Transaccion;
            $transaccion->user_id = \Auth::user()->id;
            $transaccion->fecha = $mytime->toDateTimeString();
            $transaccion->tipo_transaccion = $request->tipo;
            $transaccion->monto = $request->montodeposito;
            $transaccion->save();

            $user= User::findOrFail(Auth::user()->id);
            $user->saldo_actual= auth()->user()->saldo_actual + $request->montodeposito;
            $user->save();

            return redirect('home')->with('success','¡Deposito realizado!');
        
        }else{ 
        
                if (( $request->get('tipo') == 2 ) ){
                    $this->validate($request,[
                        'montoretiro' => 'required',
                    ]);
                    if ((auth()->user()->saldo_actual >= $request->get('montoretiro') ) ){
                        $mytime= Carbon::now('America/Costa_Rica');

                        $transaccion = new Transaccion;
                        $transaccion->user_id = \Auth::user()->id;
                        $transaccion->fecha = $mytime->toDateTimeString();
                        $transaccion->tipo_transaccion = $request->tipo;
                        $transaccion->monto = $request->montoretiro;
                        $transaccion->save();

                        $user= User::findOrFail(Auth::user()->id);
                        $user->saldo_actual= auth()->user()->saldo_actual - $request->montoretiro;
                        $user->save();

                        return redirect('home')->with('success','¡Retiro realizado!');
                    }else{
                        return redirect('home')->with('warning','¡Saldo insuficiente para el retiro!');
                        /* dd('el saldo no es suficiciente para el retiro');  */
                    }
                }else{

                    if ((auth()->user()->saldo_actual >= $request->get('montotransaccion') ) ){

                        $destino = DB::table('users')
                        ->select('id')
                        ->where('num_cuenta', $request->cuenta_destino)
                        ->first(); 
                        
                        if($destino != null){

                            $this->validate($request,[
                                'montotransaccion' => 'required',
                                'cuenta_destino' => 'required',
                            ]);

                            $mytime= Carbon::now('America/Costa_Rica');

                            $transaccion = new Transaccion;
                            $transaccion->user_id = \Auth::user()->id;
                            $transaccion->fecha = $mytime->toDateTimeString();
                            $transaccion->tipo_transaccion = $request->tipo;
                            $transaccion->monto = $request->montotransaccion;
                            $transaccion->save();
        
                            $user= User::findOrFail(Auth::user()->id);
                            $user->saldo_actual= auth()->user()->saldo_actual - $request->montotransaccion;
                            $user->save();

                           
                            $destino= User::find($destino->id);
                            $destino->saldo_actual= $destino->saldo_actual  + $request->montotransaccion;
                            $destino->save();

                            return redirect('home')->with('success','¡Transaccion realizada!');
                        }else{
                            return redirect('home')->with('warning','¡El numero de cuenta ingresado no existe!');
                            /* dd('la cuenta no existe');   */
                        }
                    }else{
                        return redirect('home')->with('warning','¡Saldo insuficiente para la transacción!');
                       /*  dd('el saldo no es suficiciente  para transaccion'); */ 
                    }
                }     
            
        }     
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Transaccion  $transaccion
     * @return \Illuminate\Http\Response
     */
    public function show(Transaccion $transaccion)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Transaccion  $transaccion
     * @return \Illuminate\Http\Response
     */
    public function edit(Transaccion $transaccion)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Transaccion  $transaccion
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Transaccion $transaccion)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Transaccion  $transaccion
     * @return \Illuminate\Http\Response
     */
    public function destroy(Transaccion $transaccion)
    {
        //
    }
}
