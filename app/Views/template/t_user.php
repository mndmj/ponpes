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

$siswa = $db->table('tbl_siswa')
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
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/fontawesome-free/css/all.min.css">
  <!-- daterange picker -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/daterangepicker/daterangepicker.css">
  <!-- iCheck for checkboxes and radio inputs -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- Bootstrap Color Picker -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/bootstrap-colorpicker/css/bootstrap-colorpicker.min.css">
  <!-- Tempusdominus Bootstrap 4 -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- Select2 -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/select2/css/select2.min.css">
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">
  <!-- Bootstrap4 Duallistbox -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/bootstrap4-duallistbox/bootstrap-duallistbox.min.css">
  <!-- BS Stepper -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/bs-stepper/css/bs-stepper.min.css">
  <!-- dropzonejs -->
  <link rel="stylesheet" href="<?= base_url() ?>/assets/plugins/dropzone/min/dropzone.min.css">
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

        <div class="collapse navbar-collapse order-3" id="navbarCollapse">
          <!-- Left navbar links -->
          <ul class="navbar-nav">
            <li class="nav-item">
              <a href="<?= base_url('') ?>" class="nav-link">Home</a>
            </li>
            <li class="nav-item">
              <a href="<?= base_url('pendaftaran') ?>" class="nav-link">Pendaftaran</a>
            </li>
            <?php if (session('nisn')) { ?>
              <!-- <li class="nav-item">
                <a href="<?= base_url('pembayaran') ?>" class="nav-link">Pembayaran</a>
              </li> -->
              <li class="nav-item">
                <a href="<?= base_url('siswa') ?>" class="nav-link">Pengumuman</a>
              </li>
            <?php } ?>
            <li class="nav-item">
              <a href="https://pesantrenaliman.or.id/" class="nav-link">About</a>
            </li>
          </ul>
        </div>

        <!-- Right navbar links -->
        <ul class="order-1 order-md-3 navbar-nav navbar-no-expand ml-auto">
          <?php if (session()->get('nisn') == '') { ?>
            <li class="nav-item">
              <a class="nav-link" href="<?= base_url('auth/loginSiswa') ?>">
                <b><i class="fa fa-sign-in-alt"></i> Login</b>
              </a>
            </li>
          <?php } else { ?>
            <li class="nav-item dropdown">
              <a id="dropdownSubMenu1" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false" class="nav-link dropdown-toggle">
                <i class="fas fa-user"></i>&ensp;<?= session()->get('nama_lengkap') ?>
              </a>
              <ul aria-labelledby="dropdownSubMenu1" class="dropdown-menu border-0 shadow">
                <li><a href="<?= base_url('siswa') ?>" class="dropdown-item"><i class="fas fa-address-card"></i>&ensp;Formulir</a></li>
                <li class="dropdown-divider"></li>
                <li><a href="<?= base_url('auth/logout_siswa') ?>" class="dropdown-item"><i class="fas fa-sign-out-alt"></i>&ensp;Logout</a></li>
              </ul>
            </li>
          <?php } ?>
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
                <h4 class="mb-0 text-danger text-bold">Pendaftaran sudah di tutup !!</h4>
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

            <!-- INI panggil template -->
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
  <!-- ./wrapper  -->

  <!-- jQuery -->
  <script src="<?= base_url() ?>/assets/plugins/jquery/jquery.min.js"></script>
  <!-- Bootstrap 4 -->
  <script src="<?= base_url() ?>/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Select2 -->
  <script src="<?= base_url() ?>/assets/plugins/select2/js/select2.full.min.js"></script>
  <!-- Bootstrap4 Duallistbox -->
  <script src="<?= base_url() ?>/assets/plugins/bootstrap4-duallistbox/jquery.bootstrap-duallistbox.min.js"></script>
  <!-- InputMask -->
  <script src="<?= base_url() ?>/assets/plugins/moment/moment.min.js"></script>
  <script src="<?= base_url() ?>/assets/plugins/inputmask/jquery.inputmask.min.js"></script>
  <!-- date-range-picker -->
  <script src="<?= base_url() ?>/assets/plugins/daterangepicker/daterangepicker.js"></script>
  <!-- bootstrap color picker -->
  <script src="<?= base_url() ?>/assets/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js"></script>
  <!-- Tempusdominus Bootstrap 4 -->
  <script src="<?= base_url() ?>/assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
  <!-- Bootstrap Switch -->
  <script src="<?= base_url() ?>/assets/plugins/bootstrap-switch/js/bootstrap-switch.min.js"></script>
  <!-- BS-Stepper -->
  <script src="<?= base_url() ?>/assets/plugins/bs-stepper/js/bs-stepper.min.js"></script>
  <!-- dropzonejs -->
  <script src="<?= base_url() ?>/assets/plugins/dropzone/min/dropzone.min.js"></script>
  <!-- AdminLTE App -->
  <script src="<?= base_url() ?>/assets/dist/js/adminlte.min.js"></script>

  <script>
    window.setTimeout(
      function() {
        $(".alertt").fadeTo(500, 0).slideUp(500, function() {
          $(this).remove;
        });
      }, 1500);
  </script>

  <script>
    function bacaGambar(input) {
      if (input.files && input.files[0]) {
        var reader = new FileReader();
        reader.onload = function(e) {
          $('#gambar_load').attr('src', e.target.result)
        }
        reader.readAsDataURL(input.files[0]);
      }
    };

    $('#preview_gambar').change(function() {
      bacaGambar(this);
    });
  </script>

  <!-- Page specific script -->
  <script>
    $(function() {
      //Initialize Select2 Elements
      $('.select2').select2();

      //Initialize Select2 Elements
      $('.select2bs4').select2({
        theme: 'bootstrap4'
      });

      //Datemask dd/mm/yyyy
      $('#datemask').inputmask('dd/mm/yyyy', {
        'placeholder': 'dd/mm/yyyy'
      });
      //Datemask2 mm/dd/yyyy
      $('#datemask2').inputmask('mm/dd/yyyy', {
        'placeholder': 'mm/dd/yyyy'
      });
      //Money Euro
      $('[data-mask]').inputmask();

      //Date picker
      $('#reservationdate').datetimepicker({
        format: 'YYYY-MM-DD'
      });

      //Date and time picker
      $('#reservationdatetime').datetimepicker({
        icons: {
          time: 'far fa-clock'
        }
      });

      //Date range picker
      $('#reservation').daterangepicker();
      //Date range picker with time picker
      $('#reservationtime').daterangepicker({
        timePicker: true,
        timePickerIncrement: 30,
        locale: {
          format: 'MM/DD/YYYY hh:mm A'
        }
      });
      //Date range as a button
      $('#daterange-btn').daterangepicker({
          ranges: {
            'Today': [moment(), moment()],
            'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
            'Last 7 Days': [moment().subtract(6, 'days'), moment()],
            'Last 30 Days': [moment().subtract(29, 'days'), moment()],
            'This Month': [moment().startOf('month'), moment().endOf('month')],
            'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
          },
          startDate: moment().subtract(29, 'days'),
          endDate: moment()
        },
        function(start, end) {
          $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'))
        }
      );

      //Timepicker
      $('#timepicker').datetimepicker({
        format: 'LT'
      });

    })
  </script>

</body>

</html>