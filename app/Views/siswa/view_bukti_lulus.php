<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><?= $title ?>-<?= $subtitle ?></title>

    <!-- Google Font: Source Sans Pro -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/plugins/fontawesome-free/css/all.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="<?= base_url('assets') ?>/dist/css/adminlte.min.css">
</head>

<body>
    <div class="wrapper">
        <!-- Main content -->
        <section class="invoice">
            <!-- title row -->
            <div class="row">
                <div class="col-sm-2 text-center p-0 m-0">
                    <img src="<?= base_url('logo/' . $setting['logo']) ?>" class="img-fluid pad" width="100px" height="100px">
                </div>
                <div class="col-sm-10">
                    <small class="float-right">Date : <?= date('d/M/Y') ?></small>
                    <h3 class="page-header text-bold">
                        <?= $setting['nama_sekolah'] ?>
                    </h3>
                    <h6><?= $setting['alamat'] ?>,<?= $setting['kecamatan'] ?>,<?= $setting['kabupaten'] ?>,<?= $setting['provinsi'] ?></h6>
                    <h6>No.Telp : <?= $setting['no_telp'] ?>&emsp;Email : <?= $setting['email'] ?></h6>
                </div>
                <!-- /.col -->
            </div>

            <hr class="bg-black mb-1" style="height: 0.5px;">
            <hr class="bg-black p-0 m-0">

            <!-- Table row -->
            <div class="row mt-3">
                <div class="col-sm-12">
                    <div class="card-header">
                        <h4 class="text-bold text-center">Surat Keterangan Lulus</h4>
                        <h6 class="text-center">Nomor : .....................................................</h6>
                    </div>
                    <div class="card-body">
                        <div class="mx-4">
                            <p>Yang bertanda tangan dibawah ini Kepala <?= $setting['nama_sekolah'] ?> menerangkan bahwa:</p>
                            <table class="table table-borderless p-0 mx-5">
                                <tr>
                                    <th width="200px">No.Pendaftaran</th>
                                    <th width="30px">:</th>
                                    <td><?= $siswa['no_pendaftaran'] ?></td>
                                </tr>
                                <tr>
                                    <th>NISN</th>
                                    <th>:</th>
                                    <td><?= $siswa['nisn'] ?></td>
                                </tr>
                                <tr>
                                    <th>Nama Lengkap</th>
                                    <th>:</th>
                                    <td><?= $siswa['nama_lengkap'] ?></td>
                                </tr>
                                <tr>
                                    <th>Tempat, Tanggal Lahir</th>
                                    <th>:</th>
                                    <td><?= $siswa['tempat_lahir'] ?>,&ensp;<?= $siswa['tgl_lahir'] ?></td>
                                </tr>
                                <tr>
                                    <th>Jurusan</th>
                                    <th>:</th>
                                    <td><?= $siswa['jurusan'] ?></td>
                                </tr>
                                <tr>
                                    <th>Jalur Masuk</th>
                                    <th>:</th>
                                    <td><?= $siswa['jalur_masuk'] ?></td>
                                </tr>
                                <tr>
                                    <th>Asal Sekolah</th>
                                    <th>:</th>
                                    <td><?= $siswa['nama_sekolah_asal'] ?></td>
                                </tr>
                            </table>
                            <p class="mt-4">Dinyatakan <b>LULUS</b> seleksi Penerimaan Peserta Didik Baru <?= $setting['nama_sekolah'] ?> tahun <?= date('Y') ?>. Dengan demikian surat keterangan ini disampaikan untuk dipergunakan sebagaimana mestinya.</p>
                            <div class="row">
                                <div class="col-sm-6"></div>
                                <div class="col-sm-2">
                                    <!-- <img class="img-fluid pad" src="<?= base_url('foto/' . $siswa['foto']) ?>"> -->
                                </div>
                                <div class="col-sm-4">
                                    <table>
                                        <tr>
                                            <td><?= $setting['kabupaten'] ?>,&ensp;<?= date('d F Y') ?></td>
                                        </tr>
                                        <tr>
                                            <td>Kepala Sekolah</td>
                                        </tr>
                                        <tr>
                                            <td>&ensp;</td>
                                        </tr>
                                        <tr>
                                            <td>&ensp;</td>
                                        </tr>
                                        <tr>
                                            <td>&ensp;</td>
                                        </tr>
                                        <tr>
                                            <td>(.....................................)</td>
                                        </tr>
                                        <tr>
                                            <td>NIP..................................</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.row -->
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- ./wrapper -->
    <!-- Page specific script -->
    <script>
        window.addEventListener("load", window.print());
    </script>
</body>

</html>