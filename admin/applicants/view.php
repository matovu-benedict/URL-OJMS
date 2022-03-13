<?php 
global $mydb;
	$red_id = isset($_GET['id']) ? $_GET['id'] : '';

	$jobregistration = New JobRegistration();
	$jobreg = $jobregistration->single_jobregistration($red_id);
	 // `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`


	$applicant = new Applicants();
	$appl = $applicant->single_applicant($jobreg->APPLICANTID);
 // `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`,CONTACTNO

	$jobvacancy = New Jobs();
	$job = $jobvacancy->single_job($jobreg->JOBID);
 // `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`, `DATEPOSTED`

	$company = new Company();
	$comp = $company->single_company($jobreg->COMPANYID);
	 // `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`

	$sql = "SELECT * FROM `tblattachmentfile` WHERE `FILEID`=" .$jobreg->FILEID;
	$mydb->setQuery($sql);
	$attachmentfile = $mydb->loadSingleResult();


?> 
<style type="text/css">
.content-header {
	min-height: 50px;
	border-bottom: 1px solid #ddd;
	font-size: 15px;
	font-weight: bold;
}
.content-body {
	min-height: 350px;
	/*border-bottom: 1px solid #ddd;*/
}
.content-body >p {
	padding:10px;
	font-size: 12px;
	font-weight: bold;
	border-bottom: 1px solid #ddd;
}
.content-footer {
	min-height: 100px;
	border-top: 1px solid #ddd;

}
.content-footer > p {
	padding:5px;
	font-size: 15px;
	font-weight: bold; 
}
 
.content-footer textarea {
	width: 100%;
	height: 200px;
}
.content-footer  .submitbutton{  
	margin-top: 20px;
	/*padding: 0;*/

}
</style>
<form action="controller.php?action=approve" method="POST">
<div class="col-sm-12 content-header" style="">View Details</div>

<div class="col-sm-6 content-body" >
	<h3>Applicant Infomation</h3> 
 
	<h3> <?php echo $appl->FNAME. ', ' .$appl->LNAME . ' ' . $appl->MNAME;?></h3>
	<ul> 
		<img  src="<?php echo web_root.'applicant/'.$appl->APPLICANTPHOTO; ?>" width="150px" height="150px">
		<li>Address : <?php echo $appl->ADDRESS; ?></li>
		<li>Contact No. : <?php echo $appl->CONTACTNO;?></li>
		<li>Email Address. : <?php echo $appl->EMAILADDRESS;?></li>
		<li>Sex: <?php echo $appl->SEX;?></li>
		<li>Age : <?php echo $appl->AGE;?></li> 
		<li>Civil Status : <?php echo $appl->CIVILSTATUS;?></li> 
		<li>Educational Attainment : <?php echo $appl->DEGREE; ?></li>
		<li>Applied On: <?php echo $appl->APPLIEDAT; ?></li>
	</ul>
	

</div> 
<div class="col-sm-6 content-body" > 
	<h3>Job Details</h3> 
	<h3><?php echo $job->OCCUPATIONTITLE; ?></h3>
	<input type="hidden" name="JOBREGID" value="<?php echo $jobreg->REGISTRATIONID;?>">
	<input type="hidden" name="APPLICANTID" value="<?php echo $appl->APPLICANTID;?>">

	<div class="col-sm-6">
		<ul>
            <li><i class="fp-ht-tv"></i>Prefered Sex : <?php echo $job->PREFEREDSEX; ?></li>
            <li><i class="fp-ht-computer"></i>Deadline for application : <?php echo $job->DEADLINE; ?></li>
       <li><i class="fp-ht-computer"></i>Minimum Level of Education : <?php echo $job->QUALIFICATION_WORKEXPERIENCE; ?></li>
        </ul>
	</div> 
	
	
	
	
</div>


<div class="col-sm-6 content-body" >

<H3>Job Description : </H3>   

<ul>
            <li><i class="fp-ht-tv"></i> <?php echo $job->JOBDESCRIPTION; ?></li>
            
        </ul>

</div> 


<div class="col-sm-6 content-body" >
	
	<H3>Company Info : </H3>
	
	
	
	<ul>
            <li><i class="fp-ht-tv"></i> <?php echo $comp->COMPANYNAME; ?></li>
			 <li><i class="fp-ht-tv"></i> <?php echo $comp->COMPANYADDRESS; ?></li>
			 <li><i class="fp-ht-tv"></i> <?php echo $comp->COMPANYCONTACTNO; ?></li>
            
        </ul>
		

</div> 

<div class="col-sm-12 content-footer">
<p><i class="fa fa-paperclip"></i>  Attachment Files</p>
	<div class="col-sm-12 slider">
		 <h3>Download Resume <a href="<?php echo web_root.'applicant/'.$attachmentfile->FILE_LOCATION; ?>">From Here</a></h3>
	</div> 

	<div class="col-sm-12">
		<p>Feedback</p>
		<textarea class="input-group" name="REMARKS"><?php echo isset($jobreg->REMARKS) ? $jobreg->REMARKS : ""; ?></textarea>
	</div>
	
	<div class="col-sm-12">
	<p></p>
		<input type="hidden" class="input-group" name="SENT" value="<?php echo $singleuser->FULLNAME; ?>" readonly>
	</div>
	
	<div class="col-sm-12  submitbutton "> 
		<button type="submit" name="submit" class="btn btn-primary">Send</button>
	</div> 
</div>
</form>