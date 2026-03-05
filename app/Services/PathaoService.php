<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Cache;
use Illuminate\Support\Facades\Log;

class PathaoService
{
    protected string $baseUrl;

    public function __construct()
    {
        $pathao = getWebConfig('pathao');
        $this->baseUrl = $pathao['base_url'];
    }

    public function token(): string
    {
        return Cache::remember('pathao_access_token', 3500, function () {
            $pathao = getWebConfig('pathao');

            $response = Http::acceptJson()
                ->post($this->baseUrl . '/aladdin/api/v1/issue-token', [
                    'client_id'     => $pathao['client_id'],
                    'client_secret' => $pathao['client_secret'],
                    'grant_type'    => 'password',
                    'username'      => $pathao['username'],
                    'password'      => $pathao['password'],
                ]);

            if (!$response->successful()) {
                Log::error('Pathao Token Error', [
                    'status' => $response->status(),
                    'body'   => $response->body(),
                ]);
                throw new \Exception('Pathao token generation failed');
            }

            $data = $response->json();
            // You can save refresh_token in DB if you want
            return $data['access_token'];
        });
    }

    public function createOrder(array $payload)
    {
        $response = Http::withToken($this->token())
            ->acceptJson()
            ->post($this->baseUrl . '/aladdin/api/v1/orders', $payload);

        if (!$response->successful()) {
            Log::error('Pathao Order Failed', [
                'payload' => $payload,
                'response' => $response->json(),
            ]);
        }

        return $response;
    }
}
