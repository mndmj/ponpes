<?php

namespace App\Controllers;

use App\Models\ModelBaner;
use App\Models\ModelAdmin;

class Home extends BaseController
{
    public function __construct()
    {
        $this->ModelBaner = new ModelBaner();
        $this->ModelAdmin = new ModelAdmin();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Home',
            'baner' => $this->ModelBaner->findAll(),
            'beranda' => $this->ModelAdmin->detailSetting(),
            'jumlahPendaftar' => $this->ModelBaner->jumlahPendaftar(),
            'jumlahLk' => $this->ModelBaner->jumlahLk(),
            'jumlahPr' => $this->ModelBaner->jumlahPr(),
        ];
        return view('view_home', $data);
    }
}
