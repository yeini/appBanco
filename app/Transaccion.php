<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Transaccion extends Model
{
    //
    protected $table = 'transacciones';

    protected $fillable = ['user_id','fecha','tipo_transaccion','monto'];
    
}
 