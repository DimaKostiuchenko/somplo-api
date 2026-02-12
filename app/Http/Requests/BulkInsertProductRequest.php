<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class BulkInsertProductRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'products' => ['required', 'array'],
            'products.*.phone_name' => ['required', 'string', 'max:255'],
            'products.*.seller_id' => ['required', 'exists:sellers,id'],
            'products.*.display_size' => ['required', 'numeric', 'between:0,99.99'],
            'products.*.quantity' => ['required', 'integer', 'min:0'],
            'products.*.cost' => ['required', 'numeric', 'min:0', 'max:9999999999.99'],
        ];
    }
}
