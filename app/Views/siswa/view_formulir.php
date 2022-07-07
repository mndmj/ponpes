<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-outline card-info">
        <div class="card-header">
            <h3 class="card-title">Formulir Pendaftaran Peserta Didik</h3>
        </div>
        <div class="card-body">
            <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                <div class="alert alert-warning alert-dismissible">
                    <h5><i class="fas fa-exclamation-triangle"></i>&ensp;Pemberitahuan!</h5>
                    Lengkapi terlebih dahulu biodata Anda sebelum melakukan Apply Pendaftaran !!!
                </div>
            <?php } elseif ($siswa['stat_pendaftaran'] == 1) { ?>
                <div class="alert alert-dark alert-dismissible">
                    <h5><i class="fas fa-clipboard-check"></i>&ensp;Data Pendaftaran Anda telah dikirim !!</h5>
                    Silahkan menunggu sampai pengumuman hasil pendaftaran keluar.
                </div>
            <?php } ?>

            <?php

            session()->getFlashdata('errors');

            if (session()->get('pesan')) {
                echo '<div class="alert alert-success alert-dismissible alertt">
                                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                                    <h6><i class="icon fas fa-check"></i>';
                echo session()->get('pesan');
                echo '</h6></div>';
            }
            ?>

            <?php
            $errors = session()->getFlashdata('errors');
            if (!empty($errors)) { ?>
                <div class="alert alert-danger alertt" role="alert">
                    <ul class="m-0">
                        <?php foreach ($errors as $error) : ?>
                            <li><?= esc($error) ?></li>
                        <?php endforeach ?>
                    </ul>
                </div>
            <?php } ?>

            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Pendaftaran</b></h3>
                            <div class="card-tools" data-toggle="tooltip" data-placement="top" title="Edit Data">
                                <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
                                    <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#editPendaftaran">
                                        <i class="fas fa-pencil-alt"></i>
                                    </button>
                                <?php } ?>
                            </div>
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
                                <small class="text-danger">
                                    <b><?= $validation->hasError('foto') ? $validation->getError('foto') : '' ?></b>
                                </small>
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

    <div class="col-sm-12 text-center">
        <?php if ($siswa['stat_pendaftaran'] == 0) { ?>
            <button class="btn btn-success px-5" data-toggle="modal" data-target="#apply">
                Apply Data Pendaftaran&ensp;<i class="fas fa-check-circle"></i>
            </button>
        <?php } elseif ($siswa['stat_pendaftaran'] == 1) { ?>
            <button class="btn btn-success px-5" disabled>
                Apply Data Pendaftaran&ensp;<i class="fas fa-check-circle"></i>
            </button>
        <?php } ?>
    </div>
</div>





<!-- modal apply -->
<div class="modal fade" id="apply">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title text-bold">Apakah Anda sudah yakin..?</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <center>
                    <img src="<?= base_url('sukses/sukses.png') ?>" class="w-75">
                </center>
                <h6>"Data pendaftaran yang sudah di kirim tidak dapat diubah kembali, pastikan Anda telah mengisi data dengan benar !!"</h6>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tidak</button>
                <a href="<?= base_url('siswa/apply/' . $siswa['id_siswa']) ?>" class="btn btn-primary btn-sm px-3">
                    Kirim&ensp;<i class="fas fa-paper-plane"></i>
                </a>
            </div>
        </div>
    </div>
</div>
<!-- end modal apply -->

<!-- modal editPendaftaran -->
<div class="modal fade" id="editPendaftaran">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Pendaftaran</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updatePendaftaran/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Nomor Pendaftaran</label>
                    <input class="form-control" value="<?= $siswa['no_pendaftaran'] ?>" readonly>
                </div>
                <div class="form-group">
                    <label>Tanggal Pendaftaran</label>
                    <input class="form-control" value="<?= $siswa['tgl_pendaftaran'] ?>" readonly>
                </div>
                <div class="form-group">
                    <label>Jalur Masuk</label>
                    <select name="id_jalur_masuk" class="form-control">
                        <option value="">--Pilih Jalur Masuk--</option>
                        <?php foreach ($jalur as $key => $value) { ?>
                            <option value="<?= $value['id_jalur_masuk'] ?>" <?= $siswa['id_jalur_masuk'] == $value['id_jalur_masuk'] ? 'selected' : '' ?>>
                                <?= $value['jalur_masuk'] ?>
                            </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Jurusan</label>
                    <label class="text-danger">(Pilih jika ada)</label>
                    <small class="text-danger">
                        <b><?= $validation->hasError('jk') ? $validation->getError('jk') : '' ?></b>
                    </small>
                    <select name="id_jurusan" class="form-control">
                        <option value="0">--Tidak Ada--</option>
                        <?php foreach ($jurusan as $key => $value) { ?>
                            <option value="<?= $value['id_jurusan'] ?>" <?= $siswa['id_jurusan'] == $value['id_jurusan'] ? 'selected' : '' ?>>
                                <?= $value['jurusan'] ?>
                            </option>
                        <?php } ?>
                    </select>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal editPendaftaran -->

<!-- modal foto -->
<div class="modal fade" id="foto">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Foto</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open_multipart('siswa/updateFoto/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>NISN</label>
                    <input class="form-control" value="<?= $siswa['nisn'] ?>" readonly>
                </div>
                <div class="form-group">
                    <label>Ganti Foto</label><br>
                    <strong class="text-info">*max ukuran gambar 1 Mb</strong>
                    <input type="file" name="foto" accept="image/*" id="preview_gambar" class="form-control">
                </div>
                <div class="form-group">
                    <label>Preview</label><br>
                    <?php if ($siswa['foto'] == null) { ?>
                        <img src="<?= base_url('foto/blank.jpg') ?>" id="gambar_load" width="200px">
                    <?php } else { ?>
                        <img src="<?= base_url('foto/' . $siswa['foto']) ?>" id="gambar_load" width="200px">
                    <?php } ?>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal editPendaftaran - foto -->

<!-- modal siswa -->
<div class="modal fade" id="siswa">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Identitas Peserta Didik</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateIdentitasPesertaDidik/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Nama Lengkap</label>
                            <input class="form-control" name="nama_lengkap" value="<?= $siswa['nama_lengkap'] ?>" required>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Tempat Lahir</label>
                            <input class="form-control" name="tempat_lahir" value="<?= $siswa['tempat_lahir'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>NIK</label>
                            <input class="form-control" name="nik" value="<?= $siswa['nik'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Status Di Keluarga</label>
                            <select name="id_status" class="form-control">
                                <option value="">--Pilih Status--</option>
                                <?php foreach ($status as $key => $value) { ?>
                                    <option value="<?= $value['id_status'] ?>" <?= $siswa['id_status'] == $value['id_status'] ? 'selected' : '' ?>><?= $value['status'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Jumlah Saudara</label>
                            <input class="form-control" name="jml_saudara" value="<?= $siswa['jml_saudara'] ?>" required>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Tanggal Lahir</label>
                            <div class="input-group date" id="reservationdate" data-target-input="nearest">
                                <input type="text" name="tgl_lahir" value="<?= $siswa['tgl_lahir'] ?>" class="form-control datetimepicker-input" data-target="#reservationdate" />
                                <div class="input-group-append" data-target="#reservationdate" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                            <!-- <input class="form-control" name="tgl_lahir" value="<?= $siswa['tgl_lahir'] ?>" required> -->
                        </div>
                        <div class="form-group">
                            <label>Jenis Kelamin</label>
                            <select name="jk" class="form-control">
                                <option value="L" <?= $siswa['jk'] == 'L' ? 'selected' : '' ?>>Laki-laki</option>
                                <option value="P" <?= $siswa['jk'] == 'P' ? 'selected' : '' ?>>Perempuan</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Agama</label>
                            <select name="id_agama" class="form-control">
                                <option value="">--Pilih Agama--</option>
                                <?php foreach ($agama as $key => $value) { ?>
                                    <option value="<?= $value['id_agama'] ?>" <?= $siswa['id_agama'] == $value['id_agama'] ? 'selected' : '' ?>><?= $value['agama'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Nomor Telpon</label>
                            <input class="form-control" name="no_telpon" value="<?= $siswa['no_telpon'] ?>" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal siswa -->

<!-- modal data alamat -->
<div class="modal fade" id="alamat">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Data Alamat Lengkap</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateDataAlamat/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Provinsi</label>
                    <select name="id_provinsi" id="provinsi" class="form-control">
                        <option value="">--Pilih Provinsi--</option>
                        <?php foreach ($provinsi as $key => $value) { ?>
                            <option value="<?= $value['id_provinsi'] ?>">
                                <?= $value['nama_provinsi'] ?>
                            </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Kabupaten/Kota</label>
                    <select name="id_kabupaten" id="kabupaten" class="form-control">
                        <option value="">--Pilih Kabupaten/Kota--</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Kecamatan</label>
                    <select name="id_kecamatan" id="kecamatan" class="form-control">
                        <option value="">--Pilih Kecamatan--</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Alamat</label>
                    <input class="form-control" name="alamat" placeholder="Alamat" value="<?= $siswa['alamat'] ?>" required>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal alamat -->

<!-- modal data sekolah asal -->
<div class="modal fade" id="sekolah_asal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Data Sekolah Asal</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateSekolahAsal/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Nama Sekolah</label>
                    <input class="form-control" name="nama_sekolah_asal" placeholder="Nama Sekolah" value="<?= $siswa['nama_sekolah_asal'] ?>" required>
                </div>
                <div class="form-group">
                    <label>Tahun Lulus</label>
                    <select name="tahun_lulus" class="form-control">
                        <option value="">--Tahun Lulus--</option>
                        <?php
                        $now = date('Y');
                        for ($i = 2010; $i <= $now; $i++) {
                        ?>
                            <option value="<?= $i ?>" <?= $siswa['tahun_lulus'] == $i ? 'selected' : '' ?>>
                                <?= $i ?>
                            </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>No.Ijazah</label>
                    <input class="form-control" name="no_ijazah" placeholder="No.Ijazah" value="<?= $siswa['no_ijazah'] ?>" required>
                </div>
                <div class="form-group">
                    <label>No.SKHUN</label>
                    <input class="form-control" name="no_skhun" placeholder="No.SKHUN" value="<?= $siswa['no_skhun'] ?>" required>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal sekolah asal -->

<!-- modal ayah -->
<div class="modal fade" id="ayah">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Data Ayah</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateDataAyah/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>NIK Ayah</label>
                            <input class="form-control" name="nik_ayah" value="<?= $siswa['nik_ayah'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Nama Ayah</label>
                            <input class="form-control" name="nama_ayah" value="<?= $siswa['nama_ayah'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Pekerjaan Ayah</label>
                            <select class="form-control" name="pekerjaan_ayah">
                                <option value="">--Pilih Pekerjaan--</option>
                                <?php foreach ($pekerjaan as $key => $value) { ?>
                                    <option value="<?= $value['pekerjaan'] ?>" <?= $siswa['pekerjaan_ayah'] == $value['pekerjaan'] ? 'selected' : '' ?>><?= $value['pekerjaan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Pendidikan Ayah</label>
                            <select class="form-control" name="pendidikan_ayah">
                                <option value="">--Pilih Pendidikan--</option>
                                <?php foreach ($pendidikan as $key => $value) { ?>
                                    <option value="<?= $value['pendidikan'] ?>" <?= $siswa['pendidikan_ayah'] == $value['pendidikan'] ? 'selected' : '' ?>><?= $value['pendidikan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Penghasilan Ayah</label>
                            <select class="form-control" name="penghasilan_ayah">
                                <option value="">--Pilih Penghasilan--</option>
                                <?php foreach ($penghasilan as $key => $value) { ?>
                                    <option value="<?= $value['penghasilan'] ?>" <?= $siswa['penghasilan_ayah'] == $value['penghasilan'] ? 'selected' : '' ?>><?= $value['penghasilan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Agama</label>
                            <select name="agama_ayah" class="form-control">
                                <option value="">--Pilih Agama--</option>
                                <?php foreach ($agama as $key => $value) { ?>
                                    <option value="<?= $value['agama'] ?>" <?= $siswa['agama_ayah'] == $value['agama'] ? 'selected' : '' ?>><?= $value['agama'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Umur Ayah</label>
                            <input class="form-control" name="umur_ayah" value="<?= $siswa['umur_ayah'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Nomor Telpon Ayah</label>
                            <input class="form-control" name="no_telpon_ayah" value="<?= $siswa['no_telpon_ayah'] ?>" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal ayah -->

<!-- modal ibu -->
<div class="modal fade" id="ibu">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Data Ibu</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateDataIbu/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>NIK Ibu</label>
                            <input class="form-control" name="nik_ibu" value="<?= $siswa['nik_ibu'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Nama Ibu</label>
                            <input class="form-control" name="nama_ibu" value="<?= $siswa['nama_ibu'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Pekerjaan Ibu</label>
                            <select class="form-control" name="pekerjaan_ibu">
                                <option value="">--Pilih Pekerjaan--</option>
                                <?php foreach ($pekerjaan as $key => $value) { ?>
                                    <option value="<?= $value['pekerjaan'] ?>" <?= $siswa['pekerjaan_ibu'] == $value['pekerjaan'] ? 'selected' : '' ?>><?= $value['pekerjaan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Pendidikan Ibu</label>
                            <select class="form-control" name="pendidikan_ibu">
                                <option value="">--Pilih Pendidikan--</option>
                                <?php foreach ($pendidikan as $key => $value) { ?>
                                    <option value="<?= $value['pendidikan'] ?>" <?= $siswa['pendidikan_ibu'] == $value['pendidikan'] ? 'selected' : '' ?>><?= $value['pendidikan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Penghasilan Ibu</label>
                            <select class="form-control" name="penghasilan_ibu">
                                <option value="">--Pilih Penghasilan--</option>
                                <?php foreach ($penghasilan as $key => $value) { ?>
                                    <option value="<?= $value['penghasilan'] ?>" <?= $siswa['penghasilan_ibu'] == $value['penghasilan'] ? 'selected' : '' ?>><?= $value['penghasilan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Agama</label>
                            <select name="agama_ibu" class="form-control">
                                <option value="">--Pilih Agama--</option>
                                <?php foreach ($agama as $key => $value) { ?>
                                    <option value="<?= $value['agama'] ?>" <?= $siswa['agama_ibu'] == $value['agama'] ? 'selected' : '' ?>><?= $value['agama'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Umur Ibu</label>
                            <input class="form-control" name="umur_ibu" value="<?= $siswa['umur_ibu'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Nomor Telpon Ibu</label>
                            <input class="form-control" name="no_telpon_ibu" value="<?= $siswa['no_telpon_ibu'] ?>" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal ibu -->

<!-- modal data alamat orang tua-->
<div class="modal fade" id="alamatOrtu">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Data Alamat Lengkap Orang Tua</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateDataAlamatOrtu/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Alamat</label>
                    <input class="form-control" name="alamat_ortu" placeholder="Alamat" value="<?= $siswa['alamat_ortu'] ?>" required>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal alamat orang tua -->

<!-- modal data wali -->
<div class="modal fade" id="wali">
    <div class="modal-dialog modal-lg">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Data Wali</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('siswa/updateDataWali/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Wali</label>
                            <input class="form-control" name="nama_wali" placeholder="Nama Wali" value="<?= $siswa['nama_wali'] ?>" required>
                        </div>
                        <div class="form-group">
                            <label>Pekerjaan Wali</label>
                            <select class="form-control" name="pekerjaan_wali">
                                <option value="">--Pilih Pekerjaan--</option>
                                <?php foreach ($pekerjaan as $key => $value) { ?>
                                    <option value="<?= $value['pekerjaan'] ?>" <?= $siswa['pekerjaan_wali'] == $value['pekerjaan'] ? 'selected' : '' ?>><?= $value['pekerjaan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Nomor Telpon Wali</label>
                            <input class="form-control" name="no_telpon_wali" placeholder="Nomor Telpon Wali" value="<?= $siswa['no_telpon_wali'] ?>" required>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Agama</label>
                            <select name="agama_wali" class="form-control">
                                <option value="">--Pilih Agama--</option>
                                <?php foreach ($agama as $key => $value) { ?>
                                    <option value="<?= $value['agama'] ?>" <?= $siswa['agama_wali'] == $value['agama'] ? 'selected' : '' ?>><?= $value['agama'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Pendidikan Wali</label>
                            <select class="form-control" name="pendidikan_wali">
                                <option value="">--Pilih Pendidikan--</option>
                                <?php foreach ($pendidikan as $key => $value) { ?>
                                    <option value="<?= $value['pendidikan'] ?>" <?= $siswa['pendidikan_wali'] == $value['pendidikan'] ? 'selected' : '' ?>><?= $value['pendidikan'] ?></option>
                                <?php } ?>
                            </select>
                        </div>
                        <div class="form-group">
                            <label>Alamat</label>
                            <input class="form-control" name="alamat_wali" placeholder="Alamat" value="<?= $siswa['alamat_wali'] ?>" required>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal wali -->

<!-- modal data berkas lampiran-->
<div class="modal fade" id="berkas">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h5 class="modal-title">Tambah Berkas</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open_multipart('siswa/addBerkas/' . $siswa['id_siswa'])   ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Lampiran/Jenis Berkas</label>
                    <select name="id_lampiran" class="form-control">
                        <option value="">--Pilih Lampiran--</option>
                        <?php foreach ($lampiran as $key => $value) { ?>
                            <option value="<?= $value['id_lampiran'] ?>"><?= $value['lampiran'] ?></option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Keterangan</label>
                    <input class="form-control" name="ket" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>File</label><small class="text-red">&ensp;*wajib format PDF</small>
                    <input class="form-control" name="berkas" type="file" accept=".pdf" required>
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>
<!-- end modal berkas lampiran -->



<!-- jQuery -->
<script src="<?= base_url() ?>/assets/plugins/jquery/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        $("#provinsi").change(function() {
            var id_provinsi = $("#provinsi").val();
            $.ajax({
                type: 'GET',
                url: '<?= base_url('wilayah/dataKabupaten') ?>/' + id_provinsi,
                success: function(html) {
                    $("#kabupaten").html(html);
                }
            });
        });
    });

    $(document).ready(function() {
        $("#kabupaten").change(function() {
            var id_kabupaten = $("#kabupaten").val();
            $.ajax({
                type: 'GET',
                url: '<?= base_url('wilayah/dataKecamatan') ?>/' + id_kabupaten,
                success: function(html) {
                    $("#kecamatan").html(html);
                }
            });
        });
    });
</script>

<script>
    window.setTimeout(
        function() {
            $(".alertt").fadeTo(500, 0).slideUp(500, function() {
                $(this).remove;
            });
        }, 1500);
</script>

<script>
    $(function() {
        $('[data-toggle="tooltip"]').tooltip();
    });
</script>

<?= $this->endSection() ?>