<?php

return [
    'roles' => [
        'root',
        'admin',
        'customer',
        'visitor',
        'driver'
    ],
    'permissions' => [
        'root' => ['root', 'admin'],

        'service.index' => ['root'],
        'service.create' => ['root'],
        'service.store' => ['root'],
        'service.edit' => ['root'],
        'service.update' => ['root'],
        'service.status.toggle' => ['root'],

        'additional.index' => ['root'],
        'additional.create' => ['root'],
        'additional.store' => ['root'],
        'additional.edit' => ['root'],
        'additional.update' => ['root'],
        'additional.status.toggle' => ['root'],

        'variant.index' => ['root'],
        'variant.update' => ['root'],
        'variant.store' => ['root'],
        'variant.products' => ['root'],

        'notification.index' => ['root'],
        'notification.send' => ['root'],

        'customer.index' => ['root'],
        'customer.show' => ['root'],
        'customer.create' => ['root'],
        'customer.store' => ['root'],
        'customer.edit' => ['root'],
        'customer.update' => ['root'],

        'product.index' => ['root'],
        'product.create' => ['root'],
        'product.store' => ['root'],
        'product.show' => ['root'],
        'product.edit' => ['root'],
        'product.update' => ['root'],
        'product.status.toggle' => ['root'],

        'banner.index' => ['root'],
        'banner.promotional' => ['root'],
        'banner.store' => ['root'],
        'banner.edit' => ['root'],
        'banner.update' => ['root'],
        'banner.destroy' => ['root'],
        'banner.status.toggle' => ['root'],

        'order.index' => ['root'],
        'order.show' => ['root'],
        'order.status.change' => ['root'],
        'order.print.labels' => ['root'],
        'order.print.invioce' => ['root'],
        'orderIncomplete.index' => ['root'],
        'orderIncomplete.paid' => ['root'],

        'revenue.index' => ['root'],
        'revenue.generate.pdf' => ['root'],
        'report.generate.pdf' => ['root'],

        'coupon.index' => ['root'],
        'coupon.create' => ['root'],
        'coupon.store' => ['root'],
        'coupon.edit' => ['root'],
        'coupon.update' => ['root'],

        'contact' => ['root'],

        'driver.index' => ['root'],
        'driver.create' => ['root'],
        'driver.store' => ['root'],
        'driverAssign' => ['root'],
        'driver.details' => ['root'],

        'profile.index' => ['root'],
        'profile.update' => ['root'],
        'profile.edit' => ['root'],
        'profile.change-password' => ['root'],

        'schedule.index' => ['root'],
        'toggole.status.update' => ['root'],
        'schedule.update' => ['root'],

        'dashboard.calculation' => ['root'],
        'dashboard.revenue' => ['root'],
        'dashboard.overview' => ['root'],

        'setting.show' => ['root'],
        'setting.edit' => ['root'],
        'setting.update' => ['root'],
        
        'sms-gateway.index' => ['root'],
        'sms-gateway.update' => ['root']
    ],
];
