<?php

namespace App\Controllers;

use App\Controllers\BaseController;
use App\Models\ModelTa;
use App\Models\ModelSiswa;
use App\Models\ModelJurusan;

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

class Pendaftaran extends BaseController
{
    public function __construct()
    {
        helper('form');
        helper('text');
        $this->ModelTa = new ModelTa();
        $this->ModelSiswa = new ModelSiswa();
        $this->ModelJurusan = new ModelJurusan();
    }

    public function index()
    {
        $data = [
            'title' => 'PPDB',
            'subtitle' => 'Pendaftaran',
            'ta' => $this->ModelTa->statusTa(),
            'jurusan' => $this->ModelJurusan->findAll(),
            'validation' => \Config\Services::validation(),
        ];
        return view('view_pendaftaran', $data);
    }

    public function simpanPendaftaran()
    {
        if ($this->validate([
            'nisn' => [
                'label' => 'NISN',
                'rules'  => 'required|max_length[10]|is_unique[tbl_siswa.nisn]|numeric',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                    'max_length' => '*{field} MAX 10 karakter !!',
                    'is_unique' => '*{field} sudah terdaftar !!',
                    'numeric' => '*{field} harus angka !!',
                ],
            ],
            'nama_lengkap' => [
                'label' => 'Nama Lengkap',
                'rules'  => 'required',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                ],
            ],
            'jk' => [
                'label' => 'Jenis Kelamin',
                'rules'  => 'required',
                'errors' => [
                    'required' => '* Wajib Diisi !!',
                ],
            ],
            'tempat_lahir' => [
                'label' => 'Tempat Lahir',
                'rules'  => 'required',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                ],
            ],
            'tanggal' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*',
                ],
            ],
            'bulan' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*',
                ],
            ],
            'tahun' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*',
                ],
            ],
            'id_jurusan' => [
                'rules'  => 'required',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                ],
            ],
            'email' => [
                'rules'  => 'required|valid_email',
                'errors' => [
                    'required' => '*{field} Wajib Diisi !!',
                    'valid_email' => '*{field} tidak valid !!',
                ],
            ],
        ])) {
            //jika tidak ada validasi maka simpan data
            $ta = $this->ModelTa->statusTa();
            $tahun = $this->request->getPost('tahun');
            $bulan = $this->request->getPost('bulan');
            $tanggal = $this->request->getPost('tanggal');
            $no_pendaftaran = $this->ModelSiswa->noPendaftaran();
            $pw = sprintf("%02d", $bulan);
            $token = random_string('alnum', 6);
            $mail = new PHPMailer(true);
            $data = [
                'no_pendaftaran' => $no_pendaftaran,
                'tgl_pendaftaran' => date('Y-m-d'),
                'tahun' => $ta['tahun'],
                'id_jurusan' => $this->request->getPost('id_jurusan'),
                'nisn' => $this->request->getPost('nisn'),
                'nama_lengkap' => $this->request->getPost('nama_lengkap'),
                'jk' => $this->request->getPost('jk'),
                'tempat_lahir' => $this->request->getPost('tempat_lahir'),
                'tgl_lahir' => $tahun . '-' . $bulan . '-' . $tanggal,
                'password' => $pw . $tahun,
                'email' => $this->request->getPost('email'),
                'token' => $token,
                'status_validasi' => '0',
            ];
            $this->ModelSiswa->insert($data);
            session()->setFlashdata('pesan', 'Berhasil mendaftar, silahkan login untuk melengkapi data!!');
            try {
                $mail->isSMTP();
                $mail->Host       = 'smtp.gmail.com';
                $mail->SMTPAuth   = true;
                $mail->Username   = 'udinkamarullah@gmail.com'; // ubah dengan alamat email Anda
                $mail->Password   = 'yaiiatxcetnzyokg'; // ubah dengan password email Anda
                $mail->SMTPSecure = 'ssl';
                $mail->Port       = 465;

                $mail->setFrom('udinkamarullah@gmail.com', 'PPI Al-Iman'); // ubah dengan alamat email Anda
                $mail->addAddress($this->request->getPost('email'));
                $mail->addReplyTo('udinkamarullah@gmail.com', 'PPI Al-Iman'); // ubah dengan alamat email Anda

                // Isi Email
                $mail->isHTML(true);
                $mail->Subject = 'Token Rahasia PPDB';
                $mail->Body    = 'Token pendaftaran untuk bisa login pada website PPDB PPI Al-Iman ' . $token;

                $mail->send();

                // Pesan Berhasil Kirim Email/Pesan Error
                session()->setFlashdata('pesan', 'Selamat, email berhasil terkirim!');
            } catch (Exception $e) {
                session()->setFlashdata('gagal', "Gagal mengirim email. Error: " . $mail->ErrorInfo);
            }
            return redirect()->to('/pendaftaran');
        } else {
            //jika ada validasi 
            $validation = \Config\Services::validation();
            return redirect()->to('/pendaftaran')->withInput()->with('validation', $validation);
        }
    }
}
