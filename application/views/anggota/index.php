<div class="container">
    <?php if ($this->session->flashdata('flash')) : ?>
        <div class="div row mt-3">
            <div class="col-md-6">
                <div class="alert alert-success alert-dismissible fade show" role="alert">Data anggota
                    <strong>berhasil</strong><?= $this->session->flashdata('flash'); ?>.
                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
            </div>
        </div>
    <?php endif; ?>

    <div class="row">
        <div class="col-md-6">
            <a href="<?= base_url(); ?>anggota/tambah" class="btn btn-primary">Tambah Data Anggota</a>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-md-6">
            <form action="" method="post">
                <div class="input-group">
                    <input type="text" class="form-control" placeholder="Cari data anggota.." name="keyword">
                    <div class="input-group-append">
                        <button class="btn btn-primary" type="submit">Cari</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-md-12">
            <h3>Daftar Anggota</h3>
            <?php if (empty($anggota)) : ?>
                <div class="alert alert-danger" role="alert">
                    data not found.
                </div>
            <?php endif; ?>
            <ul class="list-group">
                <?php foreach ($anggota as $ang) : ?>
                    <li class="list-group-item">
                        <?= $ang['nama_anggota']; ?>
                        <a href="<?= base_url(); ?>anggota/hapus/<?= $ang['id_anggota']; ?>" class="badge badge-danger float-right" onclick="return confirm('yakin?');">hapus</a>
                        <a href="<?= base_url(); ?>anggota/ubah/<?= $ang['id_anggota']; ?>" class="badge badge-success float-right">ubah</a>
                        <a href="<?= base_url(); ?>anggota/detail/<?= $ang['id_anggota']; ?>" class="badge badge-primary float-right">detail</a>
                    </li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>

</div>