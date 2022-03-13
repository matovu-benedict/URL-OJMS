
<?php
include_once 'database.php';
if(isset($_POST['save']))
{	 
	   $COMPANYNAME = $_POST['COMPANYNAME'];
	 $CANDIDATENAME = $_POST['CANDIDATENAME'];
	 $AGE = $_POST['AGE'];
	 $GENDER = $_POST['GENDER'];
	 $JOBTITLE = $_POST['JOBTITLE'];
	  $COUNTRY = $_POST['COUNTRY'];
	   $CONTRACT = $_POST['CONTRACT'];
	    $SALARY = $_POST['SALARY'];
		 $CONTACT = $_POST['CONTACT'];
		  $CONTRACTBEGIN = $_POST['CONTRACTBEGIN'];
		   $CONTRACTEND = $_POST['CONTRACTEND'];
		   
	 $sql = "INSERT INTO tblselected (COMPANYNAME,CANDIDATENAME,AGE,GENDER,JOBTITLE,COUNTRY,CONTRACT,SALARY,CONTACT,CONTRACTBEGIN,CONTRACTEND)
	 VALUES ('$COMPANYNAME','$CANDIDATENAME','$AGE','$GENDER','$JOBTITLE','$COUNTRY','$CONTRACT','$SALARY','$CONTACT','$CONTRACTBEGIN','$CONTRACTEND')";
	 if (mysqli_query($conn, $sql)) {
		echo "New Candidate created successfully !";
		
		      redirect(web_root."admin/index.php");
	 } else {
		echo "Error: " . $sql . "
" . mysqli_error($conn);
	 }
	 mysqli_close($conn);
}
?>

