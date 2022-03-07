<form action="<?= BASE_URL . 'save-upload-image'?>" method="post" enctype="multipart/form-data">
    <div>
        <label for="">Chọn ảnh</label>
        <input type="file" name="image">
    </div>
    <div>
        <button type="submit">Upload</button>
    </div>
</form>