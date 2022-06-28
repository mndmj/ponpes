<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-outline card-info">
        <div class="card-header">
            <h3 class="card-title">Biodata Siswa</h3>
            <!-- <div class="float-right">
                <b>No.Pendaftaran</b> - <a class="text-muted">202206230001</a>
            </div> -->
        </div>
        <div class="card-body">
            <table class="table">
                <tr>
                    <th>No.Pendaftaran</th>
                    <th>Tanggal Pendaftaran</th>
                </tr>
            </table>
            <div class="row">
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title"><b>FOTO</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="text-center">
                                <img class="img-fluid pad mb-3" src="<?= base_url('foto/ppMissing.jpg') ?>">
                                <strong>NISN</strong>
                                <p class="text-muted">12356</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-9">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Identitas Peserta Didik</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-12">
                                    <strong>Nama Lengkap</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                </div>
                                <div class="col-sm-6 border-right">
                                    <strong>Tempat Lahir</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>

                                    <strong>NIK</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>

                                    <strong>Agama</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Tanggal Lahir</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>

                                    <strong>Jenis Kelamin</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>

                                    <strong>Nomor Telpon</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Alamat Peserta Didik</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6">
                                    <strong>Alamat</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Kecamatan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Kabupaten/Kota</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Provinsi</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Asal Sekolah</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Nama Sekolah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Tahun Lulus</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>No.Ijazah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>No.SKHUN</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Alamat Sekolah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Jalur Masuk</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">

                            </div>
                        </div>
                    </div>
                </div>


                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Data Orang Tua</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>NIK Ayah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Nama Ayah</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pekerjaan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pendidikan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Penghasilan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Agama</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>NIK Ibu</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Nama Ibu</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pekerjaan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pendidikan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Penghasilan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Agama</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-12">
                                    <hr>
                                    <strong>No.Telpon Ortu</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Alamat Ortu</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Data Wali</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Nama Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pekerjaan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pendidikan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Agama</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>No.Telpon Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Alamat Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<?= $this->endSection() ?>