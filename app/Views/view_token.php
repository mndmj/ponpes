<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-5">
    <img src="<?= base_url('foto/login.png') ?>" class="img-fluid pad">
</div>
<div class="col-sm-7 p-5">
    <?= form_open('auth/token') ?>
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
                <label>Token Validasi</label>
                <small class="text-danger">
                    <b><?= $validation->hasError('token') ? $validation->getError('token') : '' ?></b>
                </small>
                <input name="token" value="<?= old('token') ?>" class="form-control" placeholder="Token">
            </div>
            <button type="submit" class="btn btn-outline-info btn-block">Submit</button>
            <small>Belum punya akun? <a href="<?= base_url('/pendaftaran') ?>" class="text-bold">Register</a></small>
        </div>
    </div>
</div>
<?= form_close() ?>
</div>

<?= $this->endSection() ?>