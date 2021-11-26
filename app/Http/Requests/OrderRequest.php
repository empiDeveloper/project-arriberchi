<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class OrderRequest extends FormRequest
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
            'contacto' => ['required','max:255'],
            'email' => ['required','string','email','max:255'],
            'numero_contacto' => ['required','max:20'],
            'identificacion' => ['required','max:20'],
            'metodo_pago' => ['required','max:255'],
        ];
    }
    /**
     * Mensajes Personalizados
     */
    public function messages()
    {
        return [
            'contacto.required' => 'El campo Nombre Completo es obligatorio.',
            'email.required' =>'El campo Correo Electrónico es obligatorio.',
            'numero_contacto.required' => 'El campo Numero Contacto es obligatorio.',
            'identificacion.required' => 'El campo Identificación es obligatorio.',
            'metodo_pago.required' => 'Debe Seleccionar un Método de Pago.'
        ];
    }
}
