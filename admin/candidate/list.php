<?php 
	  if (!isset($_SESSION['ADMIN_USERID'])){
      redirect(web_root."admin/index.php");
     } 
?>
	<div class="row">
       	 <div class="col-lg-12">
            <h1 class="page-header">List of Selected Candidates   </a>  </h1>
       		</div>
        	<!-- /.col-lg-12 -->
   		 </div>
	 		    <form action="controller.php?action=delete" Method="POST">  	
			     <div class="table-responsive">					
				<table id="dash-table" class="table table-striped table-bordered table-hover"  style="font-size:12px" cellspacing="0">
				
				  <thead>
				  	<tr>

				  		<!-- <th>No.</th> -->
				  		<th>First Name</th> 
				  		<th>Last Name</th> 
				  		<th>ADDRESS</th> 
				  		<th>SEX</th> 
				  		<th>STATUS</th> 
				  		<th>Age</th> 
				  		<th>Job CATEGORY</th> 
				  		<th>Job Title</th> 
				 
				  		 
				  	</tr>	
				  </thead> 
				  <tbody>
				  	<?php 
				  	 // `COMPANYID`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `SECTOR_VACANCY`, `JOBSTATUS`
				  		$mydb->setQuery("SELECT * FROM `tblapplicants` a, `tbljobregistration` c, `tbljob` d   WHERE a.APPLICANTID=c.APPLICANTID AND c.JOBID=d.JOBID AND c.PENDINGAPPLICATION =0");
				  		$cur = $mydb->loadResultList(); 
						foreach ($cur as $result) {
				  		echo '<tr>';
				  		// echo '<td width="5%" align="center"></td>';
				  		// echo '<td>
				  		//      <input type="checkbox" name="selector[]" id="selector[]" value="'.$result->CATEGORYID. '"/>
				  		// 		' . $result->CATEGORIES.'</a></td>';
				  			echo '<td>' . $result->FNAME.'</td>';
				  			echo '<td>' . $result->LNAME.'</td>';
				  			echo '<td>' . $result->ADDRESS.'</td>';
				  			echo '<td>' . $result->SEX.'</td>';
				  			echo '<td>' . $result->CIVILSTATUS.'</td>';
				  			echo '<td>' . $result->AGE.'</td>';
				  			echo '<td>' . $result->CATEGORY.'</td>';
				  			echo '<td>' . $result->OCCUPATIONTITLE.'</td>';
				  			
				  		// echo '<td></td>';
				  		echo '</tr>';
				  	} 
				  	?>
				  </tbody>
					
				</table>
						<div class="btn-group">
				 <!--  <a href="index.php?view=add" class="btn btn-default">New</a> -->
					<?php
					if($_SESSION['ADMIN_ROLE']=='Administrator'){
					// echo '<button type="submit" class="btn btn-default" name="delete"><span class="glyphicon glyphicon-trash"></span> Delete Selected</button'
					; }?>
				</div>
			
			
				</form>
	
 <div class="table-responsive">	 