<?php

$db = db_connect();

$setting = $db->table('tbl_setting')
  ->where('id', '1')
  ->get()
  ->getRowArray();

$ta = $db->table('tbl_ta')
  ->where('status', '1')
  ->get()
  ->getRowArray();
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?= $title ?> - <?= $subtitle ?></title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/dist/css/adminlte.min.css">
</head>

<body class="hold-transition layout-top-nav">
  <div class="wrapper">

    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand-md navbar-success navbar-dark border-0">
      <div class="container">
        <a href="<?= base_url() ?>" class="navbar-brand">
          <img src="<?= base_url('logo/' . $setting['logo']) ?>" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8" />
        </a>

        <button class="navbar-toggler order-1" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- SEARCH FORM -->
        <!-- <form class="form-inline ml-0 ml-md-3">
          <div class="input-group input-group-sm">
            <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
              <button class="btn btn-navbar" type="submit">
                <i class="fas fa-search"></i>
              </button>
            </div>
          </div>
        </form> -->

        <div class="collapse navbar-collapse order-3" id="navbarCollapse">
          <!-- Left navbar links -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a href="<?= base_url('') ?>" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
              <a href="<?= base_url() ?>" class="nav-link">Pengumuman</a>
            </li>
            <li class="nav-item">
              <a href="<?= base_url('ppdb/pendaftaran') ?>" class="nav-link">Pendaftaran</a>
            </li>
            <li class="nav-item">
              <a href="<?= base_url() ?>" class="nav-link">Contact</a>
            </li>
          </ul>
        </div>

        <!-- Right navbar links -->
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="<?= base_url('login') ?>">
              <b><i class="fa fa-sign-in-alt"></i> Login</b>
            </a>
          </li>
        </ul>
      </div>
    </nav>
    <!-- /.navbar -->

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <div class="content-header">
        <div class="container">
          <div class="row mb-2">
            <div class="col-sm-6">
              <?php if (isset($ta['status']) <> 1) { ?>
                <h4 class="mb-0 text-danger text-bold">Pendaftaran Belum dibuka !!</h4>
              <?php } else { ?>
                <h4 class="m-0">Pendaftaran Tahun Ajaran <?= $ta['ta'] ?></h4>
              <?php } ?>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <div class="content">
        <div class="container">
          <div class="row">

            <!-- INI JUMBOTRON -->
            <?= $this->renderSection('content') ?>

          </div>
          <!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    <!-- Main Footer -->
    <footer class="main-footer bg-success border-0 text-center mt-3">
      Copyright &copy; <?= date('Y') ?> -
      <strong>
        <a class="text-light" href="<?= $setting['web'] ?>"><?= $setting['nama_sekolah'] ?></a>
      </strong>
    </footer>
  </div>
  <!-- ./wrapper

  <!-- REQUIRED SCRIPTS -->

  <!-- jQuery -->
  <script src="<?= base_url() ?>/assets/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?= base_url() ?>/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<?= base_url() ?>/assets/dist/js/adminlte.min.js"></script>
</body>

</html>