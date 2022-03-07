<form action="<?= BASE_URL . 'submit-email'?>" method="post">
    <div>
        <label for="">Người nhận:</label>
        <input type="text" name="recceiver">
    </div>
    <div>
        <label for="">Tiêu đề</label>
        <input type="text" name="title">
    </div>
    <div class="">
        <label for="">Nội dung</label>
        <textarea name="content" id="" cols="30" rows="10"></textarea>
    </div>
    <div>
        <button type="submit">Gửi</button>
    </div>
</form>