<?php
require_once("class.phpmailer.php");

if ($_POST['action'] == "forcoment"):
 	$usermail = " info@naikapvillageresort.com";
    // $usermail = "swarna@longtail.info";
    $sitename = "Naikap Village Resort – Escape the hustle and bustle of the city ";
    $ccusermail = "info@longtail.info";
    // $ccusermail = "swarnamanshakya@gmail.com";

    foreach ($_POST as $key => $val) {
        $$key = $val;
    }
    $body = '
	<table width="100%" border="0" cellpadding="0" style="font:12px Arial, serif;color:#222;">
	  <tr>
		<td><p>Dear Sir,</p>
		</td>
	  </tr>
	  <tr>
		<td><p><span style="color:#0065B3; font-size:14px; font-weight:bold">Comment message</span><br />
		  The details provided are:</p>
		  <p><strong>Fullname</strong> : ' . $name . '<br />		
		  <strong>E-mail Address</strong>: ' . $email . '<br />
		  <strong>Contact No.</strong>: ' . $contact . '<br />
		  <strong>Message</strong>: ' . $message . '<br />
		  </p>
		</td>
	  </tr>
	  <tr>
		<td><p>&nbsp;</p>
		<p>Thank you,<br />
		' . $name . '
		</p></td>
	  </tr>
	</table>
	';

    // $mail = new PHPMailer();
    // $mail->SetFrom($email, $name);
    // $mail->AddReplyTo($email, $name);
    // $mail->AddAddress($usermail, $sitename);

    // if (!empty($ccusermail)) {
    //     $rec = explode(';', $ccusermail);
    //     if ($rec) {
    //         foreach ($rec as $row) {
    //             $mail->AddCC($row, $sitename);
    //         }
    //     }
    // }

    // $mail->Subject = 'Enquiry mail from ' . $name;
    // $mail->MsgHTML($body);
    // if (!$mail->Send()) {
    //     echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your message at the time. Please try again later."));
    // } else {
    //     echo json_encode(array("action" => "success", "message" => "Your message has been successfully sent."));
    // }
    
    $ccemails = '';
    if (!empty($ccusermail)) {
        $rec = explode(';', $ccusermail);
        if ($rec) {
            foreach ($rec as $row) {
                $ccemails .= $row;
                $ccemails .= (end($rec) == $row) ? '' : ', ';
            }
        }
    }
    
    $to      = $usermail;
    $subject = 'Enquiry mail from ' . $name;
    $headers = array(
        'From'          => $name . ' ' . $email,
        'Reply-To'      => $name . ' ' . $email,
        'Cc'            => $ccemails,
        'MIME-Version'  => '1.0',
        'Content-type'  => 'text/html; charset=utf-8'
    );
    $res = mail($to, $subject, $body, $headers);
    
    if (!$res) {
        echo json_encode(array("action" => "unsuccess", "message" => "We could not sent your message at the time. Please try again later."));
    } else {
        echo json_encode(array("action" => "success", "message" => "Your message has been successfully sent."));
    }
endif;
?>