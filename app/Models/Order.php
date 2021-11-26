<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Order extends Model
{
    use HasFactory;
    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'contacto',
        'email',
        'numero_contacto',
        'identificacion',
        'metodo_pago',
        'product_id',
    ];

    public function orders()
    { // un usuario puede tener muchas ordenes
        return $this->hasMany(Order::class,'product_id');
    }
}
