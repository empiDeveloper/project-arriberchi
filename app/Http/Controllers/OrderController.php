<?php

namespace App\Http\Controllers;

use App\Models\Order;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Requests\OrderRequest;

class OrderController extends Controller
{
    public function store()
    {
       dd("fefewfefe");
    }

    public function edit(Product $product)
    {
        dd("x1");
    }

    public function update(OrderRequest $request, Product $product)
    {
        dd($product->id);
        $product_id = $product->id;
        dd($product_id);
        $order = Order::create($request->validated());
        return redirect()->route('products.index')->withSuccess("Su plan {$order->id} se ha completado correctamente.");
    }
}
