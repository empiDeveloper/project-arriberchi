<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class ProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'titulo' => ['required', 'max:255'],
            'descripcion' => ['required', 'max:1000'],
            'precio' => ['required', 'min:1'],
            'disponible' => ['required'],
            'estado' => ['required', 'in:disponible,nodisponible'],
            'images.*' => ['nullable','image'],
            'caracteristicas.*' => ['nullable'],
        ];
    }
    public function withValidator($validator)
    {
        $validator->after(function($validator) {
            if ($this->estado == 'disponible' && $this->disponible == 0) {
                $validator->errors()->add('disponible','No puede crear un producto disponible sin cupos.');
            }
        });
    }
}
