<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-outline card-success">
        <div class="card-header">
            <h3 class="card-title">Beranda</h3>
        </div>
        <div class="card-body">
            <?php

            if (session()->getFlashdata('pesan')) {
                echo '<div class="alert alert-success alert-dismissible">
                        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                        <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('pesan');
                echo '</h6></div>';
            }

            echo form_open('admin/saveBeranda');
            ?>
            <div class="form-group">
                <textarea name="beranda" id="summernote">
                    <?= $beranda['beranda'] ?>
                </textarea>
            </div>
            <div class="form-group">
                <button class="btn btn-primary">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
    </div>
</div>

<?= $this->endSection() ?>