<?= $this->extend('template/t_admin') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-primary">
        <div class="card-header">
            <h3 class="card-title">Data <?= $subtitle ?></h3>
        </div>
        <div class="card-body p-0">
            <table class="table table-sm">
                <thead>
                    <tr>
                        <th width="70px">#</th>
                        <th>Tahun</th>
                        <th>Tahun Ajaran</th>
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
                            <td>
                                <a href="<?= base_url('ppdb/cetakLaporan/' . $value['tahun']) ?>" target="_blank" class="btn btn-sm btn-flat btn-primary">
                                    <i class="fa fa-print"></i>&ensp;Print
                                </a>
                            </td>
                        </tr>
                    <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>

<?= $this->endSection() ?>