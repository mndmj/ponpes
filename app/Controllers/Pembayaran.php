<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class Pembayaran extends BaseController
{
    public function __construct()
    {
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pembayaran',
        ];
        return view('view_pembayaran', $data);
    }
}
