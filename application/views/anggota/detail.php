<div class="container">

    <div class="row mt-3">
        <div class="col-md-6">
            

                

                <div class="card">
                    <h5 class="card-header">Detail Data Anggota</h5>
                    <div class="card-body">
                        <h5 class="card-title"><?= $anggota['nama_anggota']; ?></h5>
                        <h6 class="card-subtitle mb-2 text-muted"><?= $anggota['email']; ?></h6>
                        <p class="card-text"><?= $anggota['alamat_anggota']; ?></p>
                        <p class="card-text"><?= $anggota['no_telp_anggota']; ?></p>
                        <p class="card-text"><?= $anggota['jk_anggota']; ?></p>
                        <p class="card-text"><?= $anggota['jurusan_anggota']; ?></p>
                        <a href="<?= base_url(); ?>anggota" class="btn btn-primary">Kembali</a>
                    </div>
                </div>

        </div>


    </div>
</div>
</div>