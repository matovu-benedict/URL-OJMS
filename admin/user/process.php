<?php 
  $db = mysqli_connect('localhost', 'root', '', 'job_management');
  $username = "";
  $email = "";
  if (isset($_POST['save'])) {
  	
	
	$user->FULLNAME 		= $_POST['U_NAME'];
	$user->USERNAME			= $_POST['U_USERNAME'];
	$user->PASS				=sha1($_POST['U_PASS']);
	$user->ROLE				=  $_POST['U_ROLE'];

  	$sql_u = "SELECT * FROM tblusers WHERE USERNAME='$U_USERNAME'";
  	$res_u = mysqli_query($db, $sql_u);
 

  	if (mysqli_num_rows($res_u) > 0) {
  	  $name_error = "username already taken"; 	
  	}else{
           $query = "INSERT INTO tblusers (FULLNAME, USERNAME, PASS, ROLE) 
      	    	  VALUES ('$U_NAME', '$U_USERNAME', '".SHA1($U_PASS)."', '$U_ROLE')";
           $results = mysqli_query($db, $query);
           echo 'Saved!';
           exit();
  	}
  }
?>