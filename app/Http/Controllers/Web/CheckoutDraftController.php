<?php


namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\CheckoutDraft;
use Illuminate\Support\Facades\Session;

class CheckoutDraftController extends Controller
{
    public function store(Request $request)
{

   $sessionId = Session::getId();

    $draft = CheckoutDraft::updateOrCreate(
        ['session_id' => $sessionId],
        [
            'name'    => $request->name,
            'email'   => $request->email,
            'phone'   => $request->phone,
            'address' => $request->address,
            'status'  => 'draft',
        ]
    );

    return response()->json([
        'success' => true,
        'message' => 'Draft saved successfully',
        'draft_id' => $draft->id
    ]);
}

}

