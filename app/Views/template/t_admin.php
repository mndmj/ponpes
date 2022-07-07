<?php

$db = db_connect();

$setting = $db->table('tbl_setting')
  ->where('id', '1')
  ->get()
  ->getRowArray();

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?= $title ?>-<?= $subtitle ?></title>

  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/dist/css/adminlte.min.css">
  <!-- Summernote -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/summernote/summernote-bs4.min.css">

</head>

<body class="hold-transition sidebar-mini">
  <!-- Site wrapper -->
  <div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-white navbar-light">
      <!-- Left navbar links -->
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
        </li>
        <li class="nav-item d-none d-sm-inline-block">
          <a href="<?= base_url('admin') ?>" class="nav-link">Home</a>
        </li>
      </ul>

      <!-- Right navbar links -->
      <ul class="navbar-nav ml-auto">
        <!-- Navbar Search -->
        <li class="nav-item">
          <a class="nav-link" href="<?= base_url('auth/logout') ?>">
            <i class="fa fa-sign-out-alt"></i> Logout
          </a>
          <div class="navbar-search-block">
            <form class="form-inline">
              <div class="input-group input-group-sm">
                <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                  <button class="btn btn-navbar" type="submit">
                    <i class="fas fa-search"></i>
                  </button>
                  <button class="btn btn-navbar" type="button" data-widget="navbar-search">
                    <i class="fas fa-times"></i>
                  </button>
                </div>
              </div>
            </form>
          </div>
        </li>

        <!-- Messages Dropdown Menu -->

      </ul>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="<?= base_url('') ?>" class="brand-link">
        <img src="<?= base_url('logo/' . $setting['logo']) ?>" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">PPDB-Online</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        <!-- Sidebar user (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <div class="image">
            <img src="<?= base_url('foto') ?>/<?= session()->get('foto') ?>" class="img-circle elevation-2">
          </div>
          <div class="info">
            <a href="#" class="d-block"><?= session()->get('nama_user') ?></a>
          </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
          <div class="input-group" data-widget="sidebar-search">
            <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
            <div class="input-group-append">
              <button class="btn btn-sidebar">
                <i class="fas fa-search fa-fw"></i>
              </button>
            </div>
          </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <li class="nav-item">
              <a href="<?= base_url('admin') ?>" class="nav-link">
                <i class="nav-icon fas fa-tachometer-alt"></i>
                <p>Dashboard</p>
              </a>
            </li>
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-folder"></i>
                <p>
                  Master Data
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview rounded bg-secondary">
                <li class="nav-item">
                  <a href="<?= base_url('jurusan') ?>" class="nav-link">
                    <i class="nav-icon fas fa-people-carry"></i>
                    <p>Jurusan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('lampiran') ?>" class="nav-link">
                    <i class="nav-icon fas fa-file-archive"></i>
                    <p>Lampiran</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('pekerjaan') ?>" class="nav-link">
                    <i class="nav-icon fas fa-briefcase"></i>
                    <p>Pekerjaan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('pendidikan') ?>" class="nav-link">
                    <i class="nav-icon fas fa-graduation-cap"></i>
                    <p>Pendidikan</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('agama') ?>" class="nav-link">
                    <i class="nav-icon fas fa-mosque"></i>
                    <p>Agama</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('statusdikeluarga') ?>" class="nav-link">
                    <i class="nav-icon fas fa-baby"></i>
                    <p>Status di keluarga</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('penghasilan') ?>" class="nav-link">
                    <i class="nav-icon fas fa-money-bill-wave"></i>
                    <p>Penghasilan</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-file-signature"></i>
                <p>
                  Pendaftaran
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview rounded bg-secondary">
                <li class="nav-item">
                  <a href="<?= base_url('ppdb') ?>" class="nav-link">
                    <i class="nav-icon fas fa-folder-open"></i>
                    <p>Masuk</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('') ?>" class="nav-link">
                    <i class="nav-icon fa fa-user-check"></i>
                    <p>Diterima</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('') ?>" class="nav-link">
                    <i class="nav-icon fa fa-user-slash"></i>
                    <p>Ditolak</p>
                  </a>
                </li>
              </ul>
            </li>

            <li class="nav-item">
              <a href="<?= base_url('user') ?>" class="nav-link">
                <i class="nav-icon fas fa-users"></i>
                <p>User</p>
              </a>
            </li>

            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-cogs"></i>
                <p>
                  Set-up
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview rounded bg-secondary">
                <li class="nav-item">
                  <a href="<?= base_url('ta') ?>" class="nav-link">
                    <i class="nav-icon fas fa-calendar-alt"></i>
                    <p>Tahun Ajaran</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('jalurmasuk') ?>" class="nav-link">
                    <i class="nav-icon fas fa-sitemap"></i>
                    <p>Jalur Masuk</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('admin/setting') ?>" class="nav-link">
                    <i class="fas fa-cog nav-icon"></i>
                    <p>Setting Web</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('baner') ?>" class="nav-link">
                    <i class="far fa-image nav-icon"></i>
                    <p>Setting Banner</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?= base_url('admin/beranda') ?>" class="nav-link">
                    <i class="fa fa-warehouse nav-icon"></i>
                    <p>Setting Beranda</p>
                  </a>
                </li>
              </ul>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <section class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm">
              <h5 class="m-0 mb-3"><?= $subtitle ?></h5>
              <?= $this->renderSection('content') ?>
            </div>
          </div><!-- /.container-fluid -->
      </section>

      <!-- Main content -->
      <!-- <section class="content">
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">Title</h3>

            <div class="card-tools">
              <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                <i class="fas fa-minus"></i>
              </button>
              <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                <i class="fas fa-times"></i>
              </button>
            </div>
          </div>
          <div class="card-body">
            Start creating your amazing application!
          </div>
          <div class="card-footer">
            Footer
          </div>
        </div>
      </section> -->
    </div>
    <!-- /.content-wrapper -->

    <!-- <footer class="main-footer">
    <div class="float-right d-none d-sm-block">
      <b>Version</b> 3.2.0
    </div>
    <strong>Copyright &copy; 2014-2021 <a href="https://adminlte.io">AdminLTE.io</a>.</strong> All rights reserved.
  </footer> -->

    <!-- Control Sidebar -->
    <!-- <aside class="control-sidebar control-sidebar-dark"> -->
    <!-- Control sidebar content goes here -->
    <!-- </aside> -->
    <!-- /.control-sidebar -->
    <!-- </div> -->
    <!-- ./wrapper -->

    <!-- jQuery -->
    <script src="<?= base_url('assets') ?>/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="<?= base_url('assets') ?>/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- AdminLTE App -->
    <script src="<?= base_url('assets') ?>/dist/js/adminlte.min.js"></script>
    <!-- Summernote -->
    <script src="<?= base_url('assets') ?>/plugins/summernote/summernote-bs4.min.js"></script>

    <script>
      $(function() {
        // Summernote
        $('#summernote').summernote()
      });
    </script>

    <script>
      window.setTimeout(
        function() {
          $(".alert").fadeTo(500, 0).slideUp(500, function() {
            $(this).remove;
          });
        }, 1500);
    </script>

    <!-- tampil logo setting -->
    <script>
      function bacaGambar(input) {
        if (input.files && input.files[0]) {
          var reader = new FileReader();
          reader.onload = function(e) {
            $('#gambar_load').attr('src', e.target.result)
          }
          reader.readAsDataURL(input.files[0]);
        }
      }

      $('#preview_gambar').change(function() {
        bacaGambar(this);
      });
    </script>
</body>

</html>