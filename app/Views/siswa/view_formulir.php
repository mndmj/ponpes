<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-outline card-info">
        <div class="card-header">
            <h3 class="card-title">Formulir Pendaftaran Peserta Didik</h3>
            <!-- <div class="float-right">
                <b>No.Pendaftaran</b> - <a class="text-muted">202206230001</a>
            </div> -->
        </div>
        <div class="card-body">
            <div class="alert alert-warning alert-dismissible">
                <h5><i class="fas fa-exclamation-triangle"></i>&ensp;Pemberitahuan!</h5>
                Lengkapi terlebih dahulu biodata Anda sebelum melakukan Apply Pendaftaran !!!
            </div>
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
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Pendaftaran</b></h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#editPendaftaran">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <strong>No.Pendaftaran</strong>
                                    <p class="text-muted"><?= $siswa['no_pendaftaran'] ?></p>
                                </div>
                                <div class="col-sm-4">
                                    <strong>Tanggal Pendaftaran</strong>
                                    <p class="text-muted"><?= $siswa['tgl_pendaftaran'] ?></p>
                                    </p>
                                </div>
                                <div class="col-sm-4">
                                    <strong>Jalur Masuk</strong>
                                    <?= ($siswa['jalur_masuk'] == null) ? '<p class="text-danger">Kosong</p>' : '<p class="text-muted">' . $siswa['jalur_masuk'] . '</p>' ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title"><b>FOTO</b></h3>
                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#foto">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#siswa">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#alamat">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Nama Sekolah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Tahun Lulus</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>No.Ijazah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>No.SKHUN</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Alamat Sekolah</strong>
                                    <p class="text-muted">Malibu, California</p>
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
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Data Ayah</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#ayah">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
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
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Data Ibu</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2" data-toggle="modal" data-target="#ibu">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
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
                                <div class="col-sm-12">
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Alamat Orang TUa</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-6 border-right">
                                                <strong>Alamat</strong>
                                                <p class="text-muted">Malibu, California</p>
                                                <hr>
                                                <strong>Kecamatan</strong>
                                                <p class="text-muted">Malibu, California</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <strong>Kabupaten/Kota</strong>
                                                <p class="text-muted">Malibu, California</p>
                                                <hr>
                                                <strong>Provinsi</strong>
                                                <p class="text-muted">Malibu, California</p>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Nama Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pekerjaan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Agama</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pendidikan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-12">
                                    <hr>
                                    <strong>Nomor Telpon Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Alamat wali</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-6 border-right">
                                                <strong>Alamat</strong>
                                                <p class="text-muted">Malibu, California</p>
                                                <hr>
                                                <strong>Kecamatan</strong>
                                                <p class="text-muted">Malibu, California</p>
                                            </div>
                                            <div class="col-sm-6">
                                                <strong>Kabupaten/Kota</strong>
                                                <p class="text-muted">Malibu, California</p>
                                                <hr>
                                                <strong>Provinsi</strong>
                                                <p class="text-muted">Malibu, California</p>
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
                            <h3 class="card-title text-uppercase"><b>File Pendukung</b></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <table class="table table-bordered">
                                    <tr class="text-center">
                                        <th width="50px">#</th>
                                        <th>Jenis File</th>
                                        <th>File</th>
                                        <th width="100px">Action</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 text-center">
                    <a href="" class="btn btn-success px-5">Apply Data Pendaftaran&ensp;<i class="fas fa-check-circle"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>

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

<?= $this->endSection() ?>