<?php

namespace App\Models;

use App\Models\Image;
use App\Models\ProductFeatures;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    use HasFactory, SoftDeletes;
    
    protected $table = 'products'; // todo modelo que extienda de product usa la tabla products
    protected $with = [ // Cada que consultemos productos ya van a venir con sus imagenes, de es manera la consulta es super rapida
        'images',
        'features',
    ];
    /**
     * The attributes that are mass assignable.
     *
     * @var string[]
     */
    protected $fillable = [
        'titulo',
        'descripcion',
        'precio',
        'disponible',
        'estado',
    ];

    public function images()
    {
        /* Relación polimorfica uno a muchos */
        return $this->morphMany(Image::class, 'imageable');
    }

    public function features()
    {
        return $this->morphMany(ProductFeatures::class, 'features');
    }

    public function product()
    {
        return $this->belongsTo(Order::class, 'product_id');
    }

    public function scopeDisponible($query)
    {
        return $query->where('Estado','disponible');
    }
}
