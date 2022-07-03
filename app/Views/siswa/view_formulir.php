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
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Alamat</strong>
                                    <p class="text-muted"></p>
                                    <hr>
                                    <strong>Kecamatan</strong>
                                    <p class="text-muted"></p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Kabupaten/Kota</strong>
                                    <p class="text-muted"></p>
                                    <hr>
                                    <strong>Provinsi</strong>
                                    <p class="text-muted"></p>
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
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <strong>NIK Ayah</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Nama Ayah</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Pekerjaan</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Pendidikan</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Penghasilan</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>siswa</strong>
                                        <p class="text-muted">Malibu, California</p>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Data Ibu</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <strong>NIK Ibu</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Nama Ibu</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Pekerjaan</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Pendidikan</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>Penghasilan</strong>
                                        <p class="text-muted">Malibu, California</p>
                                        <hr>
                                        <strong>siswa</strong>
                                        <p class="text-muted">Malibu, California</p>
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <hr>
                                    <strong>Nomor Telpon Orang Tua</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>

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
                                    <strong>siswa</strong>
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


<script>
    window.setTimeout(
        function() {
            $(".alertt").fadeTo(500, 0).slideUp(500, function() {
                $(this).remove;
            });
        }, 1500);
</script>

<?= $this->endSection() ?>