<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;

class SteadfastService
{
    protected string $baseUrl = 'https://portal.packzy.com/api/v1';

    public function createOrder(array $payload): \Illuminate\Http\Client\Response
{
    $steadfast = getWebConfig('steadfast');

    $response = Http::withHeaders([
        'Api-Key'     => $steadfast['api_key'],
        'Secret-Key'  => $steadfast['secret_key'],
        'Content-Type'=> 'application/json',
    ])->post($this->baseUrl . '/create_order', $payload);

    if (!$response->successful()) {
        Log::error('Steadfast Order Failed', [
            'payload'  => $payload,
            'response' => $response->json(),
        ]);

        throw new \Exception(
            $response->json('message') ?? 'Steadfast order creation failed'
        );
    }

    return $response; // ✅ Return HTTP response object
}

}
