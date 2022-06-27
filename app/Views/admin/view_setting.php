<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<?php

if (session()->getFlashdata('pesan')) {
    echo '<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
    <h6><i class="icon fas fa-check"></i>';
    echo session()->getFlashdata('pesan');
    echo '</h6></div>';
}

?>

<div class="row">
    <!-- ubah logo -->
    <div class="col-sm-4">
        <div class="card card-outline card-primary">
            <div class="card-header">
                <h3 class="card-title">Logo</h3>
            </div>

            <div class="card-body">
                <?php echo form_open_multipart('admin/saveSetting') ?>
                <div class="text-center">
                    <img id="gambar_load" class="img-fluid pad" src="<?= base_url('logo/' . $setting['logo']) ?>" width="250px" height="250px">
                </div>
                <div class="form-group mt-2">
                    <label>Ganti Logo</label>
                    <input id="preview_gambar" name="logo" type="file" class="form-control" accept="image/*">
                </div>
            </div>
        </div>
    </div>

    <div class="col-sm-8">
        <div class="card card-outline card-primary">
            <div class="card-header">
                <h3 class="card-title">Data Sekolah</h3>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Nama Sekolah</label>
                            <input name="nama_sekolah" value="<?= $setting['nama_sekolah'] ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Email</label>
                            <input name="email" value="<?= $setting['email'] ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Web</label>
                            <input name="web" value="<?= $setting['web'] ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>No Telpon</label>
                            <input name="no_telp" value="<?= $setting['no_telp'] ?>" class="form-control">
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <div class="form-group">
                            <label>Alamat Sekolah</label>
                            <input name="alamat" value="<?= $setting['alamat'] ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Kecamatan</label>
                            <input name="kecamatan" value="<?= $setting['kecamatan'] ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Kab/Kota</label>
                            <input name="kabupaten" value="<?= $setting['kabupaten'] ?>" class="form-control">
                        </div>
                        <div class="form-group">
                            <label>Provinsi</label>
                            <input name="provinsi" value="<?= $setting['provinsi'] ?>" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-sm">
        <div class="card card-outline card-primary">
            <div class="card-header">
                <h3 class="card-title">Deskripsi Sekolah</h3>
            </div>

            <div class="card-body pb-0">
                <div class="form-group">
                    <textarea name="deskripsi" id="summernote" class="form-control">
                    <?= $setting['deskripsi'] ?>
                    </textarea>
                </div>
            </div>

            <div class="card-body pt-0">
                <div class="form-group">
                    <button type="submit" class="btn btn-flat btn-primary">
                        <i class="fas fa-save pr-1"></i> Simpan
                    </button>
                </div>
            </div>
        </div>
    </div>

</div>

<?php echo form_close() ?>
<?= $this->endSection() ?>