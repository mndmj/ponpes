<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Data <?= $subtitle ?></h3>
        </div>
        <div class="card-body">
            <table id="example1" class="table table-bordered table-striped projects">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>Nomor Pendaftaran</th>
                        <th>Tahun</th>
                        <th>NISN</th>
                        <th>Foto</th>
                        <th>Nama Lengkap</th>
                        <th>Jalur Masuk</th>
                        <th class="text-center" width="100px">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php $no = 1;
                    foreach ($ppdb as $key => $value) { ?>
                        <tr>
                            <td><?= $no++ ?></td>
                            <td><?= $value['no_pendaftaran'] ?></td>
                            <td><?= $value['tahun'] ?></td>
                            <td><?= $value['nisn'] ?></td>
                            <td><img class="table-avatar" src="<?= base_url('foto/' . $value['foto']) ?>"></td>
                            <td><?= $value['nama_lengkap'] ?></td>
                            <td><label class="badge badge-warning"><?= $value['jalur_masuk'] ?></label></td>
                            <td class="text-center">
                                <a href="<?= base_url('ppdb/detailData/' . $value['id_siswa']) ?>" class="btn btn-xs btn-info btn-block"><i class="fas fa-eye"></i>&ensp;Detail</a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection() ?>