<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
  <table class="table border">
    <thead class="bg-lightblue">
      <tr class="text-center">
        <th width="70px">#</th>
        <th>Rincian Pembayaran</th>
        <th class="text-left">Putra</th>
        <th class="text-left">Putri</th>
        <th width="200px">Status Pembayaran</th>
      </tr>
    </thead>
    <tbody>
      <?php $no = 1; ?>
      <tr>
        <td class="text-center"><?= $no++ ?></td>
        <td>Biaya Pendaftaran</td>
        <td>400.000</td>
        <td>400.000</td>
        <!-- <td class="text-center bg-success">Sudah Lunas</td> -->
        <td class="text-center bg-dark">Belum Dibayar</td>
      </tr>
    </tbody>
  </table>

  <div class="row">
    <div class="col-sm-12 px-5">
      <p class="mb-0">Pembayaran dapat dilakukan melalui rekening Bank Jateng, BPD DIY dan Bank Mandiri.</p>
      <p>Pembayaran bisa dilakukan dari ATM/Online Banking Bank Jateng, BPD DIY, Bank Mandiri atau dari bank lain.</p>
      <h3 class="text-center text-bold pb-2">Pembayaran</h3>

      <h5 class="text-bold">Petunjuk Pembayaran :</h5>
      <ul>
        <li>Jumlah yang dibayarkan bisa dilihat pada Tabel Pembayaran</li>
        <li>Jika pembayaran tidak dengan cara di bawah ini, maka harus melakukan validasi ke bagian keuangan dengan membawa bukti pembayaran.</li>
      </ul>

      <h5 class="text-bold">Cara Pembayaran :</h5>
    </div>
  </div>

</div>

<?= $this->endSection() ?>