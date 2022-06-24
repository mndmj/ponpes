<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-8">
  <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      <?php $no = 0;
      foreach ($baner as $key => $value) { ?>
        <li data-target="#carouselExampleIndicators" data-slide-to="<?= $no++ ?>" class="<?= ($no == 1) ? 'active' : '' ?>"></li>
      <?php } ?>
    </ol>
    <div class="carousel-inner">
      <?php $no = 0;
      foreach ($baner as $key => $value) {
        $no++;
      ?>
        <div class="carousel-item <?= ($no == 1) ? 'active' : '' ?>">
          <img class="d-block w-100" src="<?= base_url('baner/' . $value['baner']) ?>">
        </div>
      <?php } ?>
    </div>
    <a class=" carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
      <span class="carousel-control-custom-icon" aria-hidden="true">
        <i class="fas fa-chevron-left"></i>
      </span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
      <span class="carousel-control-custom-icon" aria-hidden="true">
        <i class="fas fa-chevron-right"></i>
      </span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<div class="col-sm-4">
  <div class="card card-outline card-success">
    <div class="card-header">
      <h3 class="card-title">Estimasi Pendaftaran</h3>
    </div>

    <div class="card-body">
      <div class="col">
        <div class="info-box">
          <span class="info-box-icon bg-warning"><i class="fas fa-graduation-cap"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Jumlah Pendaftar</span>
            <span class="info-box-number">0</span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <!-- /.col -->
      <div class="col">
        <div class="info-box">
          <span class="info-box-icon bg-primary"><i class="fas fa-male"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Laki-laki</span>
            <span class="info-box-number">0</span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <!-- /.col -->
      <div class="col">
        <div class="info-box">
          <span class="info-box-icon bg-pink"><i class="fas fa-female"></i></span>

          <div class="info-box-content">
            <span class="info-box-text">Perempuan</span>
            <span class="info-box-number">0</span>
          </div>
          <!-- /.info-box-content -->
        </div>
        <!-- /.info-box -->
      </div>
      <!-- /.col -->

      <div class="col">
        <a href="<?= base_url('/pendaftaran') ?>" class="btn btn-info btn-flat btn-block">Mendaftar</a>
      </div>
    </div>
  </div>

  <?= $this->endSection() ?>