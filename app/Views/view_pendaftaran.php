<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>
<?php if (isset($ta['status']) == 1) { ?>

    <div class="col-sm-5">
        <img src="<?= base_url('foto/register.png') ?>" class="img-fluid pad">
    </div>
    <div class="col-sm-7">
        <?= form_open('pendaftaran/simpanPendaftaran') ?>
        <div class="card card-outline card-info">
            <div class="card-header">
                <h3 class="card-title">Pendaftaran</h3>
            </div>
            <div class="card-body">

                <?php session()->getFlashdata('errors');

                if (session()->getFlashdata('pesan')) {
                    echo '<div class="alert alert-success alert-dismissible alertt">
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
                            <small class="text-danger">
                                <b><?= $validation->hasError('nisn') ? $validation->getError('nisn') : '' ?></b>
                            </small>
                            <input name="nisn" value="<?= old('nisn') ?>" class="form-control" placeholder="NISN">
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <div class="form-group">
                            <label>Nama Lengkap</label>
                            <small class="text-danger">
                                <b><?= $validation->hasError('nama_lengkap') ? $validation->getError('nama_lengkap') : '' ?></b>
                            </small>
                            <input name="nama_lengkap" value="<?= old('nama_lengkap') ?>" class="form-control" placeholder="Nama Lengkap">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Jenis Kelamin</label>
                            <small class="text-danger">
                                <b><?= $validation->hasError('jk') ? $validation->getError('jk') : '' ?></b>
                            </small>
                            <select name="jk" class="form-control">
                                <option value="">--Pilih Jenis Kelamin--</option>
                                <option value="L">Laki-laki</option>
                                <option value="P">Perempuan</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <label>Tempat Lahir</label>
                            <small class="text-danger">
                                <b><?= $validation->hasError('tempat_lahir') ? $validation->getError('tempat_lahir') : '' ?></b>
                            </small>
                            <input name="tempat_lahir" value="<?= old('tempat_lahir') ?>" class="form-control" placeholder="Tempat Lahir">
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Tanggal Lahir <b class="text-danger"><?= $validation->hasError('tanggal') ? $validation->getError('tanggal') : '' ?></b></label>
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
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Bulan <b class="text-danger"><?= $validation->hasError('bulan') ? $validation->getError('bulan') : '' ?></b></label>
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
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Tahun <b class="text-danger"><?= $validation->hasError('tahun') ? $validation->getError('tahun') : '' ?></b></label>
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
                        </div>
                    </div>
                    <div class="col-sm-12">
                        <button type="submit" class="btn btn-primary btn-block">Submit</button>
                    </div>
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