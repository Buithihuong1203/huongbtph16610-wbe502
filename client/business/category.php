<?php
function list_product(){
    $content = "danh sách sản phẩm theo danh mục";
    client_render('category/index.php', ['content' => $content]);
}


?>