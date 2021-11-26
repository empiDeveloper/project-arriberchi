<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\OrderRequest;

class ProductController extends Controller
{
    public function show(Product $product)
    {
        return view('orders.index')->with([
            'product' => $product
        ]);
    }

    public function update(OrderRequest $request, Product $product)
    {
        $request->validated();
        return DB::transaction(function() use ($product) {
        $order = Order::create([
            'contacto' => request()->contacto,
            'email' => request()->email,
            'numero_contacto' => request()->numero_contacto,
            'identificacion' => request()->identificacion,
            'metodo_pago' => request()->metodo_pago,
            'product_id' => $product->id,
        ]);
        return redirect()->route('main')->withSuccess("¡Felicidades! Has adquirido el plan {$product->titulo} satisfactoriamente. ¡A Disfrutarlo!");
        },5);
    }
}