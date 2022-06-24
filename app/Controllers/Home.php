<?php

namespace App\Controllers;

use App\Models\ModelBaner;

class Home extends BaseController
{
    public function __construct()
    {
        $this->ModelBaner = new ModelBaner();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Home',
            'baner' => $this->ModelBaner->findAll(),
        ];
        return view('view_home', $data);
    }
}
