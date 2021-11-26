<?php
namespace App\Http\Controllers\Panel;

use App\Models\Product;
use Illuminate\Http\Request;
use App\Models\ProductFeatures;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\File;
use App\Http\Requests\ProductRequest;

class PanelProductController extends Controller
{
    public function index()
    {
        return view('products.index')->with([
            'products' => Product::all()
        ]);
    }

    public function create()
    {
        return view('products.create');
    }

    public function store(ProductRequest $request)
    {
        return DB::transaction(function() use ($request) {
        $product = Product::create($request->validated());
        foreach ($request->images as $image) {
            $product->images()->create([
                // las guardamos en el almacenamiento de nuestra aplicación, en este caso storage
                // entonces va guardar las imagenes de los productos en la una carpeta llamada products dentro del disco images
                // el disco está configurado en config/filesystem.php
                'path' => 'images/'.$image->store('products','images'),
            ]);
        }
        foreach ($request->caracteristicas as $caracteristica) {
            if ($caracteristica != null) {
                $product->features()->create([
                    'caracteristica' => $caracteristica,
                ]);
            }
        }
        return redirect()->route('gestion.index')->withSuccess("El producto se ha creado correctamente.");
        },5);
    }

    public function show(Product $gestion)
    {
        return view('products.show')->with([
            'product' => $gestion,
        ]);
    }

    public function edit(Product $gestion)
    {
        return view('products.edit')->with([
            'product' => $gestion
        ]);
    }

    public function update(ProductRequest $request, Product $gestion)
    {
        $gestion->update($request->validated());
        if ($request->hasFile('images')) { // preguntamos si el usuario ha añadido imagenes nuevas
            foreach ($gestion->images as $image) {
                $path = storage_path("app/public/{$image->path}"); // le pasamos la ruta de la imagen almacenada
                File::delete($path); // elimnamos la imagen almacenada en el storage de nuestro proyecto
                $image->delete(); // eliminamos la imagen de base de datos
            }
            foreach ($request->images as $image) { // recorremos las nuevas imagenes que envia el usuario
                $gestion->images()->create([
                    'path' => 'images/'.$image->store('products','images'),
                ]);
            }
        }
        foreach($gestion->features as $index => $caracteristica) {
            ProductFeatures::where('id',$caracteristica->id)
            ->where('features_id',$gestion->id)
            ->update(['caracteristica' => $request->caracteristicas[$index]]);
        }
        return redirect()->route('gestion.index')->withSuccess("El producto se ha actualizado correctamente.");
    }

    public function destroy(Product $gestion)
    {
        $gestion->delete();
        return redirect()->back()->withSuccess('El producto se ha eliminado correctamente.');
    }
}
