<?php

namespace App\Http\Controllers\Web\Products;

use App\Models\Coupon;
use App\Http\Controllers\Controller;
use App\Http\Requests\CouponRequest;
use App\Repositories\CouponRepository;
use App\Repositories\DeviceKeyRepository;
use Carbon\Carbon;

class CouponController extends Controller
{
    public function index()
    {
        $coupons = (new CouponRepository())->getAll();

        return view('coupon.index', compact('coupons'));
    }

    public function create()
    {
        return view('coupon.create');
    }

    public function store(CouponRequest $request)
    {
        (new CouponRepository())->storeByRequest($request);

        if($request->notify){

            $expiredAt = Carbon::parse($request->expired_date . ' ' . $request->expired_time . ":00")->format('M d, Y h:i a');
            $discount = $request->discount_type == 'amount' ? config('enums.currency')[0] . $request->discount : $request->discount.'%';

            $message = 'Hello Mr / Mrs. You have been given a coupon from Goldstar. By using this you will get '.$discount.' discount on your order. The order will expire' . $expiredAt;

            $keys = (new DeviceKeyRepository())->getAll()->pluck('key')->toArray();

            (new DeviceKeyRepository())->sendNotification($keys, $message);
        }

        return redirect()->route('coupon.index')->with('success', 'Coupon is added successfully.');
    }

    public function edit(Coupon $coupon)
    {
        return view('coupon.edit', compact('coupon'));
    }

    public function update(CouponRequest $request, Coupon $coupon)
    {
        (new CouponRepository())->updateByRequest($request, $coupon);

        if($request->notify){

            $expiredAt = Carbon::parse($request->expired_date . ' ' . $request->expired_time . ":00")->format('M d, Y h:i a');
            $discount = $request->discount_type == 'amount' ? config('enums.currency')[0] . $request->discount : $request->discount.'%';

            $message = "Hello Mr / Mrs.\nYou have been given a coupon from Goldstar. By using this you will get ".$discount." discount on your order.\nThe order will expire " . $expiredAt . ".\nYour Coupon is: " . $request->code ;

            $keys = (new DeviceKeyRepository())->getAll()->pluck('key')->toArray();

            (new DeviceKeyRepository())->sendNotification($keys, $message);
        }

        return redirect()->route('coupon.index')->with('success', 'Coupon is updated successfully.');
    }

}
