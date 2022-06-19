<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-4">
    <img src="<?= base_url('foto/register.png') ?>" class="img-fluid pad">
</div>
<div class="col-sm-8">
    <?= form_open() ?>
    <div class="card card-outline card-success">
        <div class="card-header">
            <h3 class="card-title">Pendaftaran</h3>
        </div>

        <div class="card-body">
            <div class="row">
                <div class="col-sm-12">
                    <div class="form-group">
                        <label>NISN</label>
                        <input name="nisn" class="form-control" placeholder="NISN">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Nama Lengkap</label>
                        <input name="nama_lengkap" class="form-control" placeholder="Nama Lengkap">
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="form-group">
                        <label>Nama Panggilan</label>
                        <input name="nama_panggilan" class="form-control" placeholder="Nama Panggilan">
                    </div>
                </div>
            </div>
        </div>
        <div class="col">
            <button type="submit" class="btn btn-primary btn-block">Submit</button>
        </div>
    </div>
    <?= form_close() ?>
</div>

<?= $this->endSection() ?>