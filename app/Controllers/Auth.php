<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelAuth;

class Auth extends BaseController
{
    public function __construct()
    {
        $this->ModelAuth = new ModelAuth();
        helper('form');
    }

    public function login()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Login Admin',
        ];
        return view('view_login_user', $data);
    }

    public function cek_login_user()
    {
        if ($this->validate([
            'email' => [
                'label' => 'Email',
                'rules' => 'required|valid_email',
                'errors' => [
                    'required' => '{field} Wajib harus diisi..!!',
                    'valid_email' => 'Harus menggunakan format Email..!!'
                ]
            ],
            'password' => [
                'label' => 'Password',
                'rules' => 'required',
                'errors' => [
                    'required' => '{field} Wajib harus diisi..!!'
                ]
            ]
        ])) {
            // valid
            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');
            $cek_login = $this->ModelAuth->login_user($email, $password);
            if ($cek_login) {
                session()->set('nama_user', $cek_login['nama_user']);
                session()->set('email', $cek_login['email']);
                session()->set('foto', $cek_login['foto']);
                session()->set('level', 'admin');
                return redirect()->to(base_url('admin'));
            } else {
                session()->setFlashdata('pesan', 'Email atau Password salah..!!');
                return redirect()->to(base_url('auth/login'));
            }
        } else {
            // tidak valid
            session()->setFlashdata('errors', \Config\Services::validation()->getErrors());
            return redirect()->to(base_url('auth/login'));
        }
    }

    public function logout()
    {
        session()->remove('nama_user');
        session()->remove('email');
        session()->remove('foto');
        session()->remove('level');
        session()->setFlashdata('pesan', 'Logout berhasil.');
        return redirect()->to(base_url('auth/login'));
    }

    //login Siswa
    public function loginSiswa()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Login Siswa',
            'validation' => \Config\Services::validation(),
        ];
        return view('view_login_siswa', $data);
    }

    public function cek_login_siswa()
    {
        if ($this->validate([
            'nisn' => [
                'label' => 'NISN',
                'rules' => 'required',
                'errors' => [
                    'required' => '*{field} Wajib diisi..!!'
                ]
            ],
            'password' => [
                'label' => 'Password',
                'rules' => 'required',
                'errors' => [
                    'required' => '*{field} Wajib diisi..!!'
                ]
            ]
        ])) {
            // valid
            $nisn = $this->request->getPost('nisn');
            $password = $this->request->getPost('password');
            $cek_login = $this->ModelAuth->login_siswa($nisn, $password);
            if ($cek_login) {
                session()->set('id_siswa', $cek_login['id_siswa']);
                session()->set('nisn', $cek_login['nisn']);
                session()->set('nama_lengkap', $cek_login['nama_lengkap']);
                session()->set('level', 'siswa');
                $token = \Config\Database::connect()->table('tbl_siswa')->where('nisn', $this->request->getVar('nisn'))
                    ->get()->getResultArray();

                if (count($token) == 0) {
                    //
                } else {
                    if ($token[0]['status_validasi'] == 0) {
                        return redirect()->to('/auth/inputToken');
                    }
                }
                return redirect()->to('/siswa');
            } else {
                session()->setFlashdata('salah', 'NISN atau Password salah..!!');
                return redirect()->to('/auth/loginSiswa');
            }
        } else {
            // tidak valid
            $validation = \Config\Services::validation();
            return redirect()->to('/auth/loginSiswa')->withInput()->with('validation', $validation);
        }
    }

    public function token()
    {
        if ($this->validate([
            'token' => [
                'label' => 'Token',
                'rules'  => 'required|max_length[6]',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                    'max_length' => '*{field} MAX karakter !!',
                ],
            ],
        ])) {
            $tabel = \Config\Database::connect()->table('tbl_siswa');
            $token = $tabel->where('nisn', session('nisn'))
                ->get()->getResultArray();

            if (count($token) == 0) {
                //
            } else {
                if ($token[0]['token'] == $this->request->getVar('token')) {
                    //jika benar
                    $data = [
                        'status_validasi' => '1',
                    ];
                    $tabel->update($data, "nisn='" . session('nisn') . "'");
                    return redirect()->to('/siswa');
                } else {
                    //jika salah token
                    session()->setFlashdata('salah', 'Token salah..!!');
                    return redirect()->to('/auth/inputToken');
                }
            }
        } else {
            # code...
        }
    }

    public function inputToken()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Token',
            'validation' => \Config\Services::validation(),
        ];
        return view('view_token', $data);
    }

    public function logout_siswa()
    {
        session()->remove('nisn');
        session()->remove('nama_lengkap');
        session()->remove('level');
        session()->setFlashdata('pesan', 'Logout berhasil.');
        return redirect()->to('/auth/loginSiswa');
    }
}
