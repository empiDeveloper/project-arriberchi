<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;

class ProductOrderController extends Controller
{
    public function store(Request $request, Product $product)
    {
        return view('orders.index')->with([
            'product' => Product::find($product->id),
        ]);
    }
}
