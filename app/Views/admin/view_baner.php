<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Daftar <?= $subtitle ?></h3>
            <!-- tombol aksi -->
            <div class="card-tools">
                <button class="btn btn-xs btn-flat btn-primary" data-toggle="modal" data-target="#add">
                    <i class="fas fa-plus"></i> Add
                </button>
            </div>
        </div>
        <div class="card-body p-0">
            <?php
            if (session()->getFlashdata('tambah')) {
                echo '<div class="alert alert-success alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('tambah');
                echo '</h6></div>';
            }

            if (session()->getFlashdata('edit')) {
                echo '<div class="alert alert-warning alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('edit');
                echo '</h6></div>';
            }

            if (session()->getFlashdata('delete')) {
                echo '<div class="alert alert-danger alert-dismissible">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <h6><i class="icon fas fa-check"></i>';
                echo session()->getFlashdata('delete');
                echo '</h6></div>';
            }
            ?>
            <table class="table table-sm">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>Keterangan</th>
                        <th class="text-center">Banner</th>
                        <th width="100px">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($baner as $key => $value) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $value['ket'] ?></td>
                            <td class="text-center">
                                <img class="img-fluid shadow" src="<?= base_url('foto_baner/' . $value['baner']) ?>" width="200px">
                            </td>
                            <td>
                                <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['id_baner'] ?>">
                                    <i class="fas fa-pen"></i>
                                </button>
                                <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#delete<?= $value['id_baner'] ?>">
                                    <i class="fas fa-trash"></i>
                                </button>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<!-- Modal Add -->
<div class="modal fade" id="add">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary">
                <h4 class="modal-title">Add Banner</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open_multipart('baner/insertData') ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Keterangan</label>
                    <input name="ket" class="form-control" placeholder="Keterangan" required>
                </div>
                <div class="form-group">
                    <label>File Banner</label>
                    <input id="preview_gambar" type="file" accept="image/*" name="baner" class="form-control" required>
                </div>
                <div class="form-group">
                    <label>Preview</label><br>
                    <img id="gambar_load" src="" width="200px">
                </div>
            </div>
            <div class="modal-footer justify-content-between">
                <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
            </div>
            <?= form_close() ?>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->

<!-- Modal Edit -->
<?php foreach ($baner as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value['id_baner'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h4 class="modal-title">Edit Banner</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?= form_open_multipart('baner/editData/' . $value['id_baner']) ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Keterangan</label>
                        <input name="ket" value="<?= $value['ket'] ?>" class="form-control" placeholder="Keterangan" required>
                    </div>
                    <div class="form-group">
                        <label>Ganti File Banner</label>
                        <input id="preview_gambar" type="file" accept="image/*" name="baner" class="form-control">
                    </div>
                    <div class="form-group">
                        <label>Preview</label><br>
                        <img id="gambar_load" src="<?= base_url('foto_baner/' . $value['baner']) ?>" width="200px">
                    </div>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <button type="submit" class="btn btn-warning btn-sm">Ubah</button>
                </div>
                <?= form_close() ?>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<?php } ?>

<!-- Modal Delete -->
<?php foreach ($baner as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value['id_baner'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title">Hapus Banner</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Apakah Anda ingin menghapus <b><?= $value['ket'] ?></b>?
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <a href="<?= base_url('baner/deleteData/' . $value['id_baner']) ?>" class="btn btn-danger btn-sm">Hapus</a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<?php } ?>

<?= $this->endSection() ?>