<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class CheckoutDraft extends Model
{
    protected $fillable = [
        'session_id', 'name', 'email', 'phone', 'address', 'status'
    ];
}

