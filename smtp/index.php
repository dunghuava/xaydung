<?php
	include "class.phpmailer.php"; 
	include "class.smtp.php";
	
	function sendmail($tieude,$noidung,$nguoigui,$nguoinhan,$tennguoigui){
		$mail             = new PHPMailer();
		$body = $noidung;
		$mail->IsSMTP();

		$mail->SMTPDebug  = 2;
		$mail->SMTPAuth   = true;
		$mail->SMTPSecure = "ssl";                 // sets the prefix to the servier
		$mail->Host       = "smtp.gmail.com";
		$mail->Port       = 465;
		$mail->Username   = "thietke@in24.vn";
  		$mail->Password   = "Ta0961686868";

		$mail->SetFrom($nguoigui,$tennguoigui);

		$mail->Subject    = $tieude;

		$mail->MsgHTML($body);

		$address = $nguoinhan;
		$mail->AddAddress($address, $tieude);

		if(!$mail->Send()) return false;
		else return true;
	}

	function sendmail_2($tieude,$noidung,$nguoigui,$nguoinhan,$tennguoigui){ 
			 
			$mail = new PHPMailer();
			$mail->IsSMTP(); // set mailer to use SMTP
			$mail->Host = "smtp.gmail.com"; // specify main and backup server
			$mail->Port = 465; // set the port to use
			$mail->SMTPAuth = true; // turn on SMTP authentication
			$mail->SMTPSecure = 'ssl';
			$mail->Username = "dunq1408@gmail.com"; // your SMTP username or your gmail username
			$mail->Password = "huavandung"; // your SMTP password or your gmail password
			$from = $nguoigui; // Reply to this email
			$to=$nguoinhan; // Recipients email ID
			$name=$tennguoigui; // Recipient's name
			$mail->From = $from;
			$mail->FromName = "Your From Name"; // Name to indicate where the email came from when the recepient received
			$mail->AddAddress($to,$name);
			$mail->AddReplyTo($from,$tennguoigui);
			$mail->WordWrap = 50; // set word wrap
			$mail->IsHTML(true); // send as HTML
			$mail->Subject = $noidung;
			$mail->Body = "<b>Mail nay duoc goi bang phpmailer class. - <a href='http://bloghoctap.com'>bloghoctap.com</a></b>"; //HTML Body
			$mail->AltBody = "Mail nay duoc goi bang phpmailer class. - bloghoctap.com"; //Text Body
			//$mail->SMTPDebug = 2;
			if(!$mail->Send())
			{
				return false;
			}
			else
			{
				return true;
			}
	}
?>