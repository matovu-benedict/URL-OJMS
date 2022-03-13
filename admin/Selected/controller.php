
<?php
require_once ("../../include/initialize.php");
 	 if (!isset($_SESSION['ADMIN_USERID'])){
      redirect(web_root."admin/index.php");
     }


$action = (isset($_GET['action']) && $_GET['action'] != '') ? $_GET['action'] : '';

switch ($action) {
	case 'add' :
	doInsert();
	break;
	
	case 'edit' :
	doEdit();
	break;
	
	case 'delete' :
	doDelete();
	break;

 
	}
   
	function doInsert(){
		if(isset($_POST['save'])){
 // `COMPANYID`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`
 
		if ( $_POST['COMPANYID'] == "None") {
			$messageStats = false;
			message("All field is required!","error");
			redirect('index.php?view=add');
		}else{	
			$job = New Jobs();
			$job->COMPANYID							= $_POST['COMPANYID']; 
			$job->CANDIDATENAME						= $_POST['CANDIDATENAME']; 
			$job->AGE					            = $_POST['AGE'];
			$job->GENDER					        = $_POST['GENDER'];
			$job->JOBTITLE							= $_POST['JOBTITLE'];
			$job->COUNTRY			                = $_POST['COUNTRY'];
			$job->CONTRACT		                    = $_POST['CONTRACT'];
			$job->SALARY				           	= $_POST['SALARY'];
			$job->CONTACT						    = $_POST['CONTACT'];
			$job->CONTRACTBEGIN						= $_POST['CONTRACTBEGIN'];
			$job->CONTRACTEND					    = $_POST['CONTRACTEND'];
			$job->DATEPOSTED						= date('Y-m-d');
			$job->create();

			message("New Candidate created successfully!", "success");
			redirect("index.php");
			
		}
		}

	}

	function doEdit(){
		if(isset($_POST['save'])){
			if ( $_POST['COMPANYID'] == "None") {
				$messageStats = false;
				message("All field is required!","error");
				redirect('index.php?view=add');
			}else{	
				$job = New Jobs();
				$job->COMPANYID							= $_POST['COMPANYID']; 
				$job->CATEGORY							= $_POST['CATEGORY']; 
				$job->OCCUPATIONTITLE					= $_POST['OCCUPATIONTITLE'];
				$job->REQ_NO_EMPLOYEES					= $_POST['REQ_NO_EMPLOYEES'];
				$job->SALARIES							= $_POST['SALARIES'];
				$job->DURATION_EMPLOYEMENT				= $_POST['DURATION_EMPLOYEMENT'];
				$job->QUALIFICATION_WORKEXPERIENCE		= $_POST['QUALIFICATION_WORKEXPERIENCE'];
				$job->JOBDESCRIPTION					= $_POST['JOBDESCRIPTION'];
				$job->PREFEREDSEX						= $_POST['PREFEREDSEX'];
				$job->DEADLINE					        = $_POST['DEADLINE']; 
				$job->update($_POST['JOBID']);

				message("Job Vacancy has been updated!", "success");
				redirect("index.php");
			}
		}

	}


	function doDelete(){
		// if (isset($_POST['selector'])==''){
		// message("Select a records first before you delete!","error");
		// redirect('index.php');
		// }else{

			$id = $_GET['id'];

			$job = New Jobs();
			$job->delete($id);

			message("Vacancy has been Deleted!","info");
			redirect('index.php');

		// $id = $_POST['selector'];
		// $key = count($id);

		// for($i=0;$i<$key;$i++){

		// 	$category = New Category();
		// 	$category->delete($id[$i]);

		// 	message("Category already Deleted!","info");
		// 	redirect('index.php');
		// }
		// }
		
	}
?>