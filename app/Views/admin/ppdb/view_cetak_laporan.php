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
                        <?= $setting['nama_sekolah'] ?>.
                    </h3>
                    <h6><?= $setting['alamat'] ?>,<?= $setting['kecamatan'] ?>,<?= $setting['kabupaten'] ?>,<?= $setting['provinsi'] ?></h6>
                    <h6>No.Telp : <?= $setting['no_telp'] ?>&emsp;Email : <?= $setting['email'] ?></h6>
                </div>
                <!-- /.col -->
            </div>

            <hr class="bg-black">

            <!-- Table row -->
            <div class="row mt-3">
                <div class="col-sm-12">
                    <div class="card-header">
                        <h3 class="card-title text-bold">Data Laporan Santri Diterima Tahun <?= $tahun ?></h3>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                    <tr>
                                        <th>#</th>
                                        <th>No Pendaftaran</th>
                                        <th>NISN</th>
                                        <th>Nama Lengkap</th>
                                        <th>Tempat/Tanggal Lahir</th>
                                        <th>Jalur Penerimaan</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php $no = 1;
                                    foreach ($siswa as $key => $value) { ?>
                                        <tr>
                                            <td><?= $no++ ?></td>
                                            <td><?= $value['no_pendaftaran'] ?></td>
                                            <td><?= $value['nisn'] ?></td>
                                            <td><?= $value['nama_lengkap'] ?></td>
                                            <td><?= $value['tempat_lahir'] ?>/<?= $value['tgl_lahir'] ?></td>
                                            <td><?= $value['jalur_masuk'] ?></td>
                                        </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                        </div>
                        <!-- /.col -->
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