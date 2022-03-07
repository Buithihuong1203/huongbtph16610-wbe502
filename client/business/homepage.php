<?php
require_once './dao/system_dao.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;
function home(){
    $sqlQuery = "select * from products";
    $products = executeQuery($sqlQuery, true);
    client_render('homepage/index.php', compact('products'));
}

function about(){
    
}

function img_upload_form(){
    client_render('homepage/upload-img-form.php');
}

function save_image(){
    $file = $_FILES['image'];
    $filename = "";
    if($file['size'] > 0){
        $filename = uniqid() . '-' . $file['name'];
        move_uploaded_file($file['tmp_name'], './public/uploads/' . $filename);
        $filename = 'uploads/' . $filename;
    }

    echo PUBLIC_URL . $filename;
}

function email_form(){
    client_render('homepage/send_email_form.php');
}

function send_email(){
    $recciever = $_POST['recceiver'];
    $title = $_POST['title'];
    $content = $_POST['content'];
    $mail = new PHPMailer(true);

    try {
        //Server settings
        $mail->SMTPDebug = SMTP::DEBUG_SERVER;   
        $mail->CharSet = 'UTF-8';                   
        $mail->isSMTP();                                            //Send using SMTP
        $mail->Host       = 'smtp.gmail.com';                     //Set the SMTP server to send through
        $mail->SMTPAuth   = true;                                   //Enable SMTP authentication
        $mail->Username   = 'buithihuong20080@gmail.com';                     //SMTP username
        $mail->Password   = 'Doankhac9598588.';                               //SMTP password
        $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;            //Enable implicit TLS encryption
        $mail->Port       = 465;                                    //TCP port to connect to; use 587 if you have set `SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS`

        //Recipients
        $mail->setFrom('huongbtph16610@fpt.edu.vn', 'hương);

        $arrEmail = explode(',', $recciever);
        
        foreach($arrEmail as $em){
            $mail->addAddress(trim($em));
        }
                       

        
        //Content
        $mail->isHTML(true);                                  //Set email format to HTML
        $mail->Subject = $title;
        $mail->Body    = $content;
        $mail->AltBody = $content;

        $mail->send();
        echo 'Message has been sent';
    } catch (Exception $e) {
        echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
    }
    
}


?>