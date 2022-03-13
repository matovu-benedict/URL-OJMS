
<?php
     if (!isset($_SESSION['ADMIN_USERID'])){
      redirect(web_root."admin/index.php");
     }

?>

<?php
include 'database.php';
?>
 <form class="form-horizontal span6" action="process.php" method="POST">

                <div class="row">
                   <div class="col-lg-12">
                      <h1 class="page-header">Add New Candidate</h1>
                    </div>
                    <!-- /.col-lg-12 -->
                 </div> 

                


                   <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "COMPANYNAME">Company Name:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="COMPANYNAME" name="COMPANYNAME" placeholder="Enter employing company name"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div>  



                
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "CANDIDATENAME">Candidate's Name:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="CANDIDATENAME" name="CANDIDATENAME" placeholder="Candidate's name"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div>  
				  
				  
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "AGE">Candidate's Age:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="AGE" name="AGE" placeholder="Candidate's Age"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div>  
				  
				
				  
				  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "GENDER">Sex:</label> 
                      <div class="col-md-8">
                          <select class="form-control input-sm" id="GENDER" name="GENDER">
                          <option value="None">Select</option>
                           <option>Male</option>
                           <option>Female</option>
                 
                        </select>
                      </div>
                    </div>
                  </div>  
				  
				    
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "JOBTITLE">Job Title:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="JOBTITLE" name="JOBTITLE" placeholder="Job Title"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div>  

                    
				  
				  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "COUNTRY">Country:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="COUNTRY" name="COUNTRY" placeholder="country"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div> 
				  
				  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "CONTRACT">Contract Period:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="CONTRACT" name="CONTRACT" placeholder="Contract Period"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div> 

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "SALARY">Salary:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="SALARY" name="SALARY" placeholder="Salary"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div>  

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "CONTACT">Contact Number:</label> 
                      <div class="col-md-8">
                         <input class="form-control input-sm" id="CONTACT" name="CONTACT" placeholder="Contact Number"  required autocomplete="none"/> 
                      </div>
                    </div>
                  </div>

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "CONTRACTBEGIN">Begining of contract:</label> 
                      <div class="col-md-8">
                          <input type="date" class="form-control input-sm" id="CONTRACTBEGIN" name="CONTRACTBEGIN" placeholder="Enter begining date for contract"  required autocomplete="none">
                      </div>
                    </div>
                  </div> 

                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "CONTRACTEND">End of Contract:</label> 
                      <div class="col-md-8">
                       <input type="date" class="form-control input-sm" id="CONTRACTEND" name="CONTRACTEND" placeholder="Enter end date for contract"  required autocomplete="none"/>
                      </div>
                    </div>
                  </div>  

                 

                  
     
                  <div class="form-group">
                    <div class="col-md-8">
                      <label class="col-md-4 control-label" for=
                      "idno"></label>  

                      <div class="col-md-8">
                         <button class="btn btn-primary btn-sm" name="save" type="submit" ><span class="fa fa-save fw-fa"></span> Save</button>
                      <!-- <a href="index.php" class="btn btn-info"><span class="glyphicon glyphicon-arrow-left"></span>&nbsp;<strong>Back</strong></a> -->
                     
                     </div>
                    </div>
                  </div> 
 
          
        </form>
      
 