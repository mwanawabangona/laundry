<?php

namespace App\Http\Controllers\Web;

use App\Http\Controllers\Controller;
use App\Models\StripeKey;
use Illuminate\Http\Request;

class StripeKeyUpateController extends Controller
{
    public function index()
    {
        return view('stripe-key');
    }

    public function update(Request $request, StripeKey $stripeKey)
    {
        $request->validate(([
            'public_key' => 'required|string',
            'secret_key' => 'required|string',
        ]));

        cache()->flush();

        $array = [
            'STRIPE_KEY' => $request->public_key,
            'STRIPE_SECRET' => $request->secret_key
        ];
        foreach ($array as $key => $value) {
            $this->setEnv($key, $value);
        }

        return back()->with('success', 'Update Successfully');
    }

    function setEnv($name, $value)
    {
        $path = base_path('.env');
        if (file_exists($path)) {
            file_put_contents($path, str_replace(
                $name . '=' . env($name),
                $name . '=' . $value,
                file_get_contents($path)
            ));
        }
    }
}
