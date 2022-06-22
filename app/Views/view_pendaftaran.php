<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>
<?php if (isset($ta['status']) == 1) { ?>

    <div class="col-sm-5">
        <img src="<?= base_url('foto/register.png') ?>" class="img-fluid pad">
    </div>
    <div class="col-sm-7">
        <?= form_open('ppdb/simpanPendaftaran') ?>
        <div class="card card-outline card-info">
            <div class="card-header">
                <h3 class="card-title">Pendaftaran</h3>
            </div>
            <div class="card-body">

                <?php session()->getFlashdata('errors');

                if (session()->getFlashdata('pesan')) {
                    echo '<div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h6><i class="icon fas fa-check"></i>';
                    echo session()->getFlashdata('pesan');
                    echo '</h6></div>';
                }
                ?>

                <div class="row">
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>NISN</label>
                            <input name="nisn" value="<?= old('nisn') ?>" class="form-control" placeholder="NISN">
                            <small class="text-danger">
                                <b><?= $validation->hasError('nisn') ? $validation->getError('nisn') : '' ?></b>
                            </small>
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Nama Lengkap</label>
                            <input name="nama_lengkap" value="<?= old('nama_lengkap') ?>" class="form-control" placeholder="Nama Lengkap">
                            <small class="text-danger">
                                <b><?= $validation->hasError('nama_lengkap') ? $validation->getError('nama_lengkap') : '' ?></b>
                            </small>
                        </div>
                    </div>
                    <!-- <div class="col-sm-12">
                        <div class="form-group">
                            <label>Jenis Kelamin</label>
                            <div class="row px-3">
                                <div class="col-4">
                                    <input name="jenis_kelamin" id="laki" type="radio">
                                    <label for="laki">Laki-laki</label>
                                </div>
                                <div class="col-8">
                                    <input name="jenis_kelamin" id="perempuan" type="radio">
                                    <label for="perempuan">Perempuan</label>
                                </div>
                            </div>
                        </div>
                    </div> -->
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Tempat Lahir</label>
                            <input name="tempat_lahir" value="<?= old('tempat_lahir') ?>" class="form-control" placeholder="Tempat Lahir">
                            <small class="text-danger">
                                <b><?= $validation->hasError('tempat_lahir') ? $validation->getError('tempat_lahir') : '' ?></b>
                            </small>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Tanggal Lahir</label>
                            <select name="tanggal" class="form-control">
                                <option value="">--Tanggal--</option>
                                <?php
                                for ($i = 1; $i <= 31; $i++) {
                                ?>
                                    <option value="<?= $i ?>">
                                        <?= $i ?>
                                    </option>
                                <?php } ?>
                            </select>
                            <p class="text-danger">
                                <b><?= $validation->hasError('tanggal') ? $validation->getError('tanggal') : '' ?></b>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Bulan</label>
                            <select name="bulan" class="form-control">
                                <option value="">--Bulan--</option>
                                <option value="1">Januari</option>
                                <option value="2">Februari</option>
                                <option value="3">Maret</option>
                                <option value="4">April</option>
                                <option value="5">Mei</option>
                                <option value="6">Juni</option>
                                <option value="7">Juli</option>
                                <option value="8">Agustus</option>
                                <option value="9">September</option>
                                <option value="10">Oktober</option>
                                <option value="11">November</option>
                                <option value="12">Desember</option>
                            </select>
                            <p class="text-danger">
                                <b><?= $validation->hasError('bulan') ? $validation->getError('bulan') : '' ?></b>
                            </p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Tahun</label>
                            <select name="tahun" class="form-control">
                                <option value="">--Tahun--</option>
                                <?php
                                $now = date('Y');
                                for ($i = 1990; $i <= $now; $i++) {
                                ?>
                                    <option value="<?= $i ?>">
                                        <?= $i ?>
                                    </option>
                                <?php } ?>
                            </select>
                            <p class="text-danger">
                                <b><?= $validation->hasError('tahun') ? $validation->getError('tahun') : '' ?></b>
                            </p>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-block">Submit</button>
                </div>
            </div>
        </div>
    </div>
    <?= form_close() ?>
    </div>
<?php } else { ?>

    <div class="col-sm">
        <div class="alert alert-warning">
            <h3><i class="fas fa-walking"></i> <b>Pemberitahuan!!</b></h3>
            <h5>Maaf, untuk pendaftaran santri tahun ini sudah di tutup.</h5>
        </div>
    </div>

<?php } ?>
<?= $this->endSection() ?>