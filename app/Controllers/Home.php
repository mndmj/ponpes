<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Home'
        ];
        return view('view_home', $data);
    }
}
