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
                        <th>Tahun</th>
                        <th>Tahun Ajaran</th>
                        <th>Status</th>
                        <th>Kondisi Status</th>
                        <th width="100px">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($ta as $key => $value) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $value['tahun'] ?></td>
                            <td><?= $value['ta'] ?></td>
                            <td><?= ($value['status'] == 1) ? '<label class="badge badge-info">Aktif</label>' : '<label class="badge text-muted">Non-Aktif</label>' ?></td>
                            <td>
                                <?php if ($value['status'] == 1) { ?>
                                    <a href="<?= base_url('ta/statusNonaktif/' . $value['id_ta']) ?>" class="btn btn-danger btn-xs">Non-aktifkan</a>
                                <?php } else { ?>
                                    <a href="<?= base_url('ta/statusAktif/' . $value['id_ta']) ?>" class="btn btn-success btn-xs">Aktifkan</a>
                                <?php } ?>
                            </td>
                            <td>
                                <button class="btn btn-xs btn-flat btn-warning" data-toggle="modal" data-target="#edit<?= $value['id_ta'] ?>">
                                    <i class="fas fa-pen"></i>
                                </button>
                                <button class="btn btn-xs btn-flat btn-danger" data-toggle="modal" data-target="#delete<?= $value['id_ta'] ?>">
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
                <h4 class="modal-title">Add ta</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <?= form_open('ta/insertData') ?>
            <div class="modal-body">
                <div class="form-group">
                    <label>Tahun</label>
                    <select name="tahun" class="form-control">
                        <?php
                        $now = date('Y');
                        for ($i = 2018; $i <= $now; $i++) {
                        ?>
                            <option value="<?= $i ?>" <?= ($now == $i) ? 'selected' : '' ?>>
                                <?= $i ?>
                            </option>
                        <?php } ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Tahun Ajaran</label>
                    <input name="ta" class="form-control" placeholder="Tahun Ajaran" required>
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
<?php foreach ($ta as $key => $value) { ?>
    <div class="modal fade" id="edit<?= $value['id_ta'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-warning">
                    <h4 class="modal-title">Edit Tahun Ajaran</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <?= form_open('ta/editData/' . $value['id_ta']) ?>
                <div class="modal-body">
                    <div class="form-group">
                        <label>Tahun</label>
                        <select name="tahun" class="form-control">
                            <?php
                            $now = date('Y');
                            for ($i = 2018; $i <= $now; $i++) {
                            ?>
                                <option value="<?= $i ?>" <?= ($i == $value['tahun']) ? 'selected' : '' ?>>
                                    <?= $i ?>
                                </option>
                            <?php } ?>
                        </select>
                    </div>
                    <div class="form-group">
                        <label>Tahun Ajaran</label>
                        <input name="ta" value="<?= $value['ta'] ?>" class="form-control" placeholder="Tahun Ajaran" required>
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
<?php foreach ($ta as $key => $value) { ?>
    <div class="modal fade" id="delete<?= $value['id_ta'] ?>">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header bg-danger">
                    <h4 class="modal-title">Hapus Tahun Ajaran</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    Apakah Anda ingin menghapus <b><?= $value['ta'] ?></b>?
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default btn-sm" data-dismiss="modal">Tutup</button>
                    <a href="<?= base_url('ta/deleteData/' . $value['id_ta']) ?>" class="btn btn-danger btn-sm">Hapus</a>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
<?php } ?>

<?= $this->endSection() ?>