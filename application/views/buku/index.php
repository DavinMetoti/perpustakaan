<div class="container">

    <div class="row mt-3">
        <div class="col-md-6">
            <a href="<?= base_url(); ?>buku/tambah" class="btn btn-primary">Tambah Data Buku</a>
        </div>
    </div>

    <div class="row mt-3">
        <div class="col-md-12">
            <h3>Daftar Buku</h3>
            <ul class="list-group">
                <?php foreach ($buku as $bk) : ?>
                    <li class="list-group-item"><?= $bk['judul']; ?></li>
                <?php endforeach; ?>
            </ul>
        </div>
    </div>
</div>