<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="row">
    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-warning">
            <div class="inner">
                <h3><?= $totjurusan ?></h3>

                <p>Jurusan</p>
            </div>
            <div class="icon">
                <i class="fas fa-people-carry"></i>
            </div>
            <a href="<?= base_url('jurusan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-olive">
            <div class="inner">
                <h3><?= $totpekerjaan ?></h3>

                <p>Pekerjaan</p>
            </div>
            <div class="icon">
                <i class="fas fa-briefcase"></i>
            </div>
            <a href="<?= base_url('pekerjaan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-light">
            <div class="inner">
                <h3><?= $totpendidikan ?></h3>

                <p>Pendidikan</p>
            </div>
            <div class="icon">
                <i class="fas fa-graduation-cap"></i>
            </div>
            <a href="<?= base_url('pendidikan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-orange">
            <div class="inner">
                <h3><?= $totagama ?></h3>

                <p>Agama</p>
            </div>
            <div class="icon">
                <i class="fas fa-mosque"></i>
            </div>
            <a href="<?= base_url('agama') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-info">
            <div class="inner">
                <h3><?= $totpenghasilan ?></h3>

                <p>Penghasilan</p>
            </div>
            <div class="icon">
                <i class="fas fa-money-bill-wave"></i>
            </div>
            <a href="<?= base_url('penghasilan') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-gray">
            <div class="inner">
                <h3><?= $totuser ?></h3>

                <p>User</p>
            </div>
            <div class="icon">
                <i class="fas fa-users"></i>
            </div>
            <a href="<?= base_url('user') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-danger">
            <div class="inner">
                <h3><?= $totpendaftaranmasuk ?></h3>

                <p>Pendaftaran Masuk</p>
            </div>
            <div class="icon">
                <i class="fas fa-folder-open"></i>
            </div>
            <a href="<?= base_url('ppdb') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-primary">
            <div class="inner">
                <h3><?= $totpendaftaranditerima ?></h3>

                <p>Pendaftaran Diterima</p>
            </div>
            <div class="icon">
                <i class="fas fa-user-check"></i>
            </div>
            <a href="<?= base_url('ppdb/listDiterima') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>

    <div class="col-lg-4 col-4">
        <!-- small box -->
        <div class="small-box bg-dark">
            <div class="inner">
                <h3><?= $totpendaftaranditolak ?></h3>

                <p>Pendaftaran Ditolak</p>
            </div>
            <div class="icon">
                <i class="fas fa-user-slash"></i>
            </div>
            <a href="<?= base_url('ppdb/listDitolak') ?>" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
        </div>
    </div>
</div>

<?= $this->endSection() ?>