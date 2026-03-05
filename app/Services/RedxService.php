<?php

namespace App\Services;

use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Log;
use Exception;

class RedxService
{
    protected string $baseUrl;
    protected string $token;

    public function __construct()
    {
        $redx = getWebConfig('redx');
        $this->baseUrl = $redx['base_url'];
        $this->token   = $redx['jwt_token'];

        if (!$this->baseUrl || !$this->token) {
            throw new Exception('RedX base URL or token missing');
        }
    }

    protected function client()
    {
        return Http::withHeaders([
            'API-ACCESS-TOKEN' => 'Bearer ' . $this->token,
            'Content-Type'     => 'application/json',
            'Accept'           => 'application/json',
        ])->timeout(30);
    }

    public function createParcel(array $payload)
{
    Log::info('RedX Payload', $payload);

    $response = $this->client()->post(
        $this->baseUrl . '/parcel',
        $payload
    );

    if ($response->failed()) {
        Log::error('RedX Error', [
            'status' => $response->status(),
            'body'   => $response->body(),
        ]);
    }

    return $response;
}




    public function getAreasByPostCode(string $postCode): array
{
    $response = $this->client()->get(
        $this->baseUrl . '/areas',
        ['post_code' => $postCode]
    );

    if ($response->failed()) {
        throw new Exception('Failed to fetch RedX areas');
    }

    return $response->json('areas') ?? [];
}

}
