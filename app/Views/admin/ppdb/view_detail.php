<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-outline card-info">
        <div class="card-header">
            <h3 class="card-title">Pendaftaran Peserta Didik</h3>
            <div class="card-tools">
                <a href="<?= base_url('ppdb') ?>" class="btn btn-sm btn-primary">
                    <i class="fas fa-arrow-circle-left"></i>&ensp;Kembali
                </a>
            </div>
        </div>
        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Pendaftaran</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-3">
                                    <strong>No.Pendaftaran</strong>
                                    <p class="text-muted"><?= $siswa['no_pendaftaran'] ?></p>
                                </div>
                                <div class="col-sm-3">
                                    <strong>Tanggal Pendaftaran</strong>
                                    <p class="text-muted"><?= $siswa['tgl_pendaftaran'] ?></p>
                                    </p>
                                </div>
                                <div class="col-sm-3">
                                    <strong>Jalur Masuk</strong>
                                    <?= ($siswa['jalur_masuk'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['jalur_masuk'] . '</p>' ?>
                                </div>
                                <div class="col-sm-3">
                                    <strong>Jurusan</strong>
                                    <?= ($siswa['id_jurusan'] == null) ? '<p class="text-muted">Tidak Ada</p>' : '<p class="text-muted">' . $siswa['jurusan'] . '</p>' ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title"><b>FOTO</b></h3>
                            <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                    <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#foto">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="text-center">
                                <?php if ($siswa['foto'] == null) { ?>
                                    <img class="img-fluid pad mb-3" src="<?= base_url('foto/blank.jpg') ?>">
                                <?php } else { ?>
                                    <img class="img-fluid pad mb-3" src="<?= base_url('foto/' . $siswa['foto']) ?>">
                                <?php } ?>
                                <br>
                                <strong>NISN</strong>
                                <p class="text-muted"><?= $siswa['nisn'] ?></p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Identitas Peserta Didik</b></h3>

                            <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                    <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#siswa">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <strong>Nama Lengkap</strong>
                                    <?= ($siswa['nama_lengkap'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_lengkap'] . '</p>' ?>
                                    <hr>
                                </div>
                                <div class="col-sm-6 border-right">
                                    <strong>Tempat Lahir</strong>
                                    <?= ($siswa['tempat_lahir'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['tempat_lahir'] . '</p>' ?>
                                    <hr>

                                    <strong>NIK</strong>
                                    <?= ($siswa['nik'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nik'] . '</p>' ?>
                                    <hr>

                                    <strong>Status di Keluarga</strong>
                                    <?= ($siswa['status'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['status'] . '</p>' ?>
                                    <hr>

                                    <strong>Jumlah Saudara</strong>
                                    <?= ($siswa['jml_saudara'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['jml_saudara'] . '</p>' ?>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Tanggal Lahir</strong>
                                    <?= ($siswa['tgl_lahir'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['tgl_lahir'] . '</p>' ?>
                                    <hr>

                                    <strong>Jenis Kelamin</strong>
                                    <?php if ($siswa['jk'] == 'L') {
                                        $jk = 'Laki-laki';
                                    } elseif ($siswa['jk'] == 'P') {
                                        $jk = 'Perempuan';
                                    }
                                    ?>
                                    <?= ($siswa['jk'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $jk . '</p>' ?>
                                    <hr>

                                    <strong>Agama</strong>
                                    <?= ($siswa['agama'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['agama'] . '</p>' ?>
                                    <hr>

                                    <strong>Nomor Telpon</strong>
                                    <?= ($siswa['no_telpon'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['no_telpon'] . '</p>' ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Alamat Peserta Didik</b></h3>

                            <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                    <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#alamat">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Alamat</strong>
                                    <?= ($siswa['alamat'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted text-uppercase">' . $siswa['alamat'] . '</p>' ?>

                                    <hr>
                                    <strong>Kecamatan</strong>
                                    <?= ($siswa['nama_kecamatan'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_kecamatan'] . '</p>' ?>

                                </div>
                                <div class="col-sm-6">
                                    <strong>Kabupaten/Kota</strong>
                                    <?= ($siswa['nama_kabupaten'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_kabupaten'] . '</p>' ?>

                                    <hr>
                                    <strong>Provinsi</strong>
                                    <?= ($siswa['nama_provinsi'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_provinsi'] . '</p>' ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Asal Sekolah</b></h3>

                            <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                    <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#sekolah_asal">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                <?php } ?>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Nama Sekolah</strong>
                                    <?= ($siswa['nama_sekolah_asal'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_sekolah_asal'] . '</p>' ?>

                                    <hr>
                                    <strong>Tahun Lulus</strong>
                                    <?= ($siswa['tahun_lulus'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['tahun_lulus'] . '</p>' ?>

                                </div>
                                <div class="col-sm-6">
                                    <strong>No.Ijazah</strong>
                                    <?= ($siswa['no_ijazah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['no_ijazah'] . '</p>' ?>

                                    <hr>
                                    <strong>No.SKHUN</strong>
                                    <?= ($siswa['no_skhun'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['no_skhun'] . '</p>' ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Data Orang Tua</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <div class="card-header bg-olive border border-info">
                                        <h3 class="card-title text-uppercase"><b>Data Ayah</b></h3>

                                        <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                            <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                                <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#ayah">
                                                    <i class="fas fa-pencil-alt"></i>
                                                </button>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <div class="card-body border border-info">
                                        <strong>NIK Ayah</strong>
                                        <?= ($siswa['nik_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nik_ayah'] . '</p>' ?>

                                        <hr>
                                        <strong>Nama Ayah</strong>
                                        <?= ($siswa['nama_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_ayah'] . '</p>' ?>

                                        <hr>
                                        <strong>Pekerjaan</strong>
                                        <?= ($siswa['pekerjaan_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['pekerjaan_ayah'] . '</p>' ?>

                                        <hr>
                                        <strong>Pendidikan</strong>
                                        <?= ($siswa['pendidikan_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['pendidikan_ayah'] . '</p>' ?>

                                        <hr>
                                        <strong>Penghasilan</strong>
                                        <?= ($siswa['penghasilan_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['penghasilan_ayah'] . '</p>' ?>

                                        <hr>
                                        <strong>Agama</strong>
                                        <?= ($siswa['agama_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['agama_ayah'] . '</p>' ?>

                                        <hr>
                                        <strong>Umur Ayah</strong>
                                        <?= ($siswa['umur_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['umur_ayah'] . '</p>' ?>


                                        <hr>
                                        <strong>No Telpon Ayah</strong>
                                        <?= ($siswa['no_telpon_ayah'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['no_telpon_ayah'] . '</p>' ?>

                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="card-header bg-olive border border-info">
                                        <h3 class="card-title text-uppercase"><b>Data Ibu</b></h3>

                                        <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                            <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                                <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#ibu">
                                                    <i class="fas fa-pencil-alt"></i>
                                                </button>
                                            <?php } ?>
                                        </div>
                                    </div>
                                    <div class="card-body border border-info">
                                        <strong>NIK Ibu</strong>
                                        <?= ($siswa['nik_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nik_ibu'] . '</p>' ?>

                                        <hr>
                                        <strong>Nama Ibu</strong>
                                        <?= ($siswa['nama_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_ibu'] . '</p>' ?>

                                        <hr>
                                        <strong>Pekerjaan</strong>
                                        <?= ($siswa['pekerjaan_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['pekerjaan_ibu'] . '</p>' ?>

                                        <hr>
                                        <strong>Pendidikan</strong>
                                        <?= ($siswa['pendidikan_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['pendidikan_ibu'] . '</p>' ?>

                                        <hr>
                                        <strong>Penghasilan</strong>
                                        <?= ($siswa['penghasilan_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['penghasilan_ibu'] . '</p>' ?>

                                        <hr>
                                        <strong>Agama</strong>
                                        <?= ($siswa['agama_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['agama_ibu'] . '</p>' ?>

                                        <hr>
                                        <strong>Umur Ibu</strong>
                                        <?= ($siswa['umur_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['umur_ibu'] . '</p>' ?>


                                        <hr>
                                        <strong>No Telpon Ibu</strong>
                                        <?= ($siswa['no_telpon_ibu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['no_telpon_ibu'] . '</p>' ?>

                                    </div>
                                </div>
                                <div class="col-sm-12 px-4">
                                    <hr>
                                    <strong>Alamat Lengkap Orang Tua</strong>
                                    <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                        <button type="button" class="btn btn-xs btn-warning" data-toggle="modal" data-target="#alamatOrtu">
                                            <i class="fas fa-pencil-alt" data-toggle="tooltip" data-placement="top" title="Edit Data"></i>
                                        </button>
                                    <?php } ?>
                                    <?= ($siswa['alamat_ortu'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted text-uppercase">' . $siswa['alamat_ortu'] . '</p>' ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-sm-12">
        <div class="card">
            <div class="card-header bg-info">
                <h3 class="card-title text-uppercase"><b>Data Wali</b></h3>

                <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                    <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                        <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#wali">
                            <i class="fas fa-pencil-alt"></i>
                        </button>
                    <?php } ?>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6 border-right">
                        <strong>Nama Wali</strong>
                        <?= ($siswa['nama_wali'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['nama_wali'] . '</p>' ?>

                        <hr>
                        <strong>Pekerjaan</strong>
                        <?= ($siswa['pekerjaan_wali'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['pekerjaan_wali'] . '</p>' ?>

                        <hr>
                        <strong>Nomor Telpon Wali</strong>
                        <?= ($siswa['no_telpon_wali'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['no_telpon_wali'] . '</p>' ?>

                    </div>
                    <div class="col-sm-6">
                        <strong>Agama</strong>
                        <?= ($siswa['agama_wali'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['agama_wali'] . '</p>' ?>

                        <hr>
                        <strong>Pendidikan</strong>
                        <?= ($siswa['pendidikan_wali'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['pendidikan_wali'] . '</p>' ?>

                        <hr>
                        <strong>Alamat Lengkap Wali</strong>
                        <?= ($siswa['alamat_wali'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted text-uppercase">' . $siswa['alamat_wali'] . '</p>' ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-12">
        <div class="card">
            <div class="card-header bg-info">
                <h3 class="card-title text-uppercase"><b>File Berkas Pendukung/Lampiran</b></h3>

                <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Tambah File Lampiran">
                    <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                        <button type="button" class="btn btn-xs btn-light py-0" data-toggle="modal" data-target="#berkas">
                            <i class="fa fa-folder-plus fa-2x"></i>
                        </button>
                    <?php } ?>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <table class="table table-bordered">
                        <tr class="text-center">
                            <th width="50px">#</th>
                            <th width="350px">Lampiran/Jenis Berkas</th>
                            <th>Keterangan</th>
                            <th>File</th>
                            <th width="100px">Action</th>
                        </tr>
                        <?php $no = 1;
                        foreach ($berkas as $key => $value) { ?>
                            <tr>
                                <td class="text-center"><?= $no++ ?></td>
                                <td><?= $value['lampiran'] ?></td>
                                <td><?= $value['ket'] ?></td>
                                <td class="text-center">
                                    <a href="<?= base_url('berkas/' . $value['berkas']) ?>"><i class="far fa-file-pdf fa-2x text-red"></i></a>
                                </td>
                                <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                    <td class="text-center">
                                        <a href="<?= base_url('siswa/deleteBerkas/' . $value['id_berkas']) ?>" class="btn btn-danger btn-xs"><i class="far fa-trash-alt"></i></a>
                                    </td>
                                <?php } elseif ($siswa['stat_pendaftaran'] == 1) { ?>
                                    <td class="text-center">
                                        <button class="btn btn-dark btn-xs" disabled><i class="far fa-trash-alt"></i></>
                                    </td>
                                <?php } ?>
                            </tr>
                        <?php } ?>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>






<script>
    window.setTimeout(
        function() {
            $(".alertt").fadeTo(500, 0).slideUp(500, function() {
                $(this).remove;
            });
        }, 1500);
</script>
<?= $this->endSection() ?>