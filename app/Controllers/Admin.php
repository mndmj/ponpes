<?php

namespace App\Controllers;

class Admin extends BaseController
{
    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Admin'
        ];
        return view('admin/view_admin', $data);
    }
}
