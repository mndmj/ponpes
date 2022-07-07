<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title"><?= $subtitle ?></h3>
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
            <table class="table table-striped projects">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>Nomor Pendaftaran</th>
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
                            <td><?= $value['nisn'] ?></td>
                            <td><img class="table-avatar" src="<?= base_url('foto/' . $value['foto']) ?>"></td>
                            <td><?= $value['nama_lengkap'] ?></td>
                            <td><label class="badge badge-warning"><?= $value['jalur_masuk'] ?></label></td>
                            <td class="text-center">
                                <a href="<?= base_url('ppdb/detailData/' . $value['id_siswa']) ?>" class="btn btn-xs btn-info btn-block"><i class="fas fa-eye"></i>&ensp;Detail</a>
                                <a href="" class="btn btn-xs btn-success btn-block"><i class="fas fa-check"></i>&ensp;Terima</a>
                                <a href="" class="btn btn-xs btn-danger btn-block"><i class="fas fa-times"></i>&ensp;Tolak</a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection() ?>