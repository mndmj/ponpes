<?= $this->extend('template/t_user') ?>
<?= $this->section('content') ?>

<div class="col-sm-12">
    <div class="card card-outline card-info">
        <div class="card-header">
            <h3 class="card-title">Biodata Peserta Didik</h3>
            <!-- <div class="float-right">
                <b>No.Pendaftaran</b> - <a class="text-muted">202206230001</a>
            </div> -->
        </div>
        <div class="card-body">
            <div class="alert alert-warning alert-dismissible">
                <h5><i class="fas fa-exclamation-triangle"></i>&ensp;Pemberitahuan!</h5>
                Lengkapi terlebih dahulu biodata Anda sebelum melakukan Apply Pendaftaran !!!
            </div>
            <div class="row">
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Pendaftaran</b></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-4">
                                    <strong>No.Pendaftaran</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-4">
                                    <strong>Tanggal Pendaftaran</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-4">
                                    <strong>Jalur Pendaftaran</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title"><b>FOTO</b></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
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

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
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
                            <h3 class="card-title text-uppercase"><b>Data Orang Tua</b></h3>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Data Ayah</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
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
                                </div>
                                <div class="col-sm-6">
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Data Ibu</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
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
                                </div>
                                <div class="col-sm-12">
                                    <hr>
                                    <strong>Nomor Telpon Orang Tua</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>

                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Alamat Orang TUa</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-6 border-right">
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
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>Data Wali</b></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <div class="col-sm-6 border-right">
                                    <strong>Nama Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pekerjaan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-6">
                                    <strong>Agama</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <strong>Pendidikan</strong>
                                    <p class="text-muted">Malibu, California</p>
                                </div>
                                <div class="col-sm-12">
                                    <hr>
                                    <strong>Nomor Telpon Wali</strong>
                                    <p class="text-muted">Malibu, California</p>
                                    <hr>
                                    <div class="card-header bg-olive">
                                        <h3 class="card-title text-uppercase"><b>Alamat wali</b></h3>

                                        <div class="card-tools">
                                            <button type="button" class="btn btn-xs btn-light px-2">
                                                <i class="fas fa-pencil-alt"></i>
                                            </button>
                                        </div>
                                    </div>
                                    <div class="card-body">
                                        <div class="row">
                                            <div class="col-sm-6 border-right">
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
                        </div>
                    </div>
                </div>

                <div class="col-sm-12">
                    <div class="card">
                        <div class="card-header bg-info">
                            <h3 class="card-title text-uppercase"><b>File Pendukung</b></h3>

                            <div class="card-tools">
                                <button type="button" class="btn btn-xs btn-light px-2">
                                    <i class="fas fa-pencil-alt"></i>
                                </button>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="row">
                                <table class="table table-bordered">
                                    <tr class="text-center">
                                        <th width="50px">#</th>
                                        <th>Jenis File</th>
                                        <th>File</th>
                                        <th width="100px">Action</th>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-sm-12 text-center">
                    <a href="" class="btn btn-success px-5">Apply Data Pendaftaran&ensp;<i class="fas fa-check-circle"></i></a>
                </div>
            </div>
        </div>
    </div>
</div>


<?= $this->endSection() ?>