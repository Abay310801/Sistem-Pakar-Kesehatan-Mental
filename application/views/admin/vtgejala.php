<!-- vtuser.php -->
<div class="card">
    <div class="card-header">
        <h5>Tambah Gejala</h5>
    </div>
    <div class="card-body">
        <form action="<?= base_url('cgejala/tambah_aksi') ?>" method="POST">
            <div class="form-group">
                <label>NO</label>
                <input type="text" name="no" class="form-control" value="<?= set_value('no') ?>">
                <?= form_error('no', '<div class="text-small text-danger">', '</div>'); ?>
            </div>
            <div class="form-group">
                <label>Nama Gejala</label>
                <input type="text" name="nama_gejala" class="form-control" value="<?= set_value('nama_gejala') ?>">
                <?= form_error('nama_gejala', '<div class="text-small text-danger">', '</div>'); ?>
            </div>
            <div class="modal-footer">
                <button type="submit" class="btn btn-primary btn-sm"><i class="fas fa-save"></i>Simpan</button>
                <button type="reset" class="btn btn-danger btn-sm"><i class="fas fa-trash"></i>Reset</button>
            </div>
        </form>
    </div>
</div>
