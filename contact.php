<?php
		require "dbconnect.php";
		require 'PHPMailer/class.phpmailer.php';
		require 'PHPMailer/class.smtp.php';



		$nm=$_POST['name'];
		$em =$_POST['email'];
		$subj = $_POST['subject'];
		$msg = $_POST["message"];
		
		$qry = "INSERT INTO `contact_tbl`(`name`, `email`, `subject`, `message`) VALUES ('".$nm."','".$em."','".$subj."','".$msg."')";
		$insert = mysqli_query($conn, $qry);

		if(!$insert){
			die("Insertion Not Successfull".mysqli_error($conn));
		}else{
			//echo "Insertion Successfull";
		}

		
	
		$body="Name is : $nm<br>
			   Email is : $em<br>
			   Subject is : $subj<br>
			   Message is : $msg<br><br>";
		echo $body;

		$sub="Contact Form Submitted From Website";
		$mail = new PHPMailer;

		$mail->isSMTP();                                   // Set mailer to use SMTP
		$mail->Host = 'smtp.gmail.com';                    // Specify main and backup SMTP servers
		$mail->SMTPAuth = true;                            // Enable SMTP authentication
		$mail->Username = 'premapanditya01@gmail.com';          // SMTP username
		$mail->Password = 'mp4PaulWalker'; // SMTP password
		$mail->SMTPSecure = 'tls';                         // Enable TLS encryption, `ssl` also accepted
		$mail->Port = 587;                                 // TCP port to connect to

		$mail->setFrom('premapanditya01@gmail.com', 'IIP');
		$mail->addReplyTo('premapanditya01@gmail.com', 'IIP');
		$mail->addAddress($em);   // Add a recipient
		//$mail->addCC('cc@example.com');
		//$mail->addBCC('bcc@example.com');
		$mail->isHTML(true);  // Set email format to HTML

		$bodyContent = $body;
		
		$mail->Subject = $sub;
		$mail->Body    = $bodyContent;

		$mail->SMTPOptions = array(
		    'ssl' => array(
		        'verify_peer' => false,
		        'verify_peer_name' => false,
		        'allow_self_signed' => true
		    )
		);
		if(!$mail->send()) {
		    echo 'Message could not be sent.';
		    echo 'Mailer Error: ' . $mail->ErrorInfo;
		} else {
		    echo '<script>alert("Message has been sent");</script>';
		    echo "<script>window.location='index.php';</script>";
		    exit();
		}
?>
