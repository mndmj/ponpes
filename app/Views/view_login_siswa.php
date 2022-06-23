<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-5">
    <img src="<?= base_url('foto/login.png') ?>" class="img-fluid pad">
</div>
<div class="col-sm-7 p-5">
    <?= form_open('auth/cek_login_siswa') ?>
    <div class="card card-lightblue">
        <div class="card-header">
            <h3 class="card-title">Login Siswa</h3>
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

            if (session()->getFlashdata('salah')) {
                echo '<div class="alert alert-danger alert-dismissible alertt">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('salah');
                echo '</h6></div>';
            }
            ?>
            <div class="form-group">
                <label>NISN</label>
                <small class="text-danger">
                    <b><?= $validation->hasError('nisn') ? $validation->getError('nisn') : '' ?></b>
                </small>
                <input name="nisn" value="<?= old('nisn') ?>" class="form-control" placeholder="NISN">
            </div>
            <div class="form-group">
                <label>Password</label>
                <small class="text-danger">
                    <b><?= $validation->hasError('password') ? $validation->getError('password') : '' ?></b>
                </small>
                <small class="text-success">&emsp;** Gunakan bulan dan tahun lahir sebagai password.</small>
                <input name="password" value="<?= old('password') ?>" type="password" class="form-control" placeholder="Password">
            </div>
            <button type="submit" class="btn btn-outline-info btn-block">Login</button>
            <small>Belum punya akun? <a href="<?= base_url('/pendaftaran') ?>" class="text-bold">Register</a></small>
        </div>
    </div>
</div>
<?= form_close() ?>
</div>

<?= $this->endSection() ?>