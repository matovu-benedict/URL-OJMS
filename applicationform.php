
  <div class="hero-wrap js-fullheight" style="background-image: url('<?php echo web_root; ?>plugins/jobportal/images/bg_2.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start" data-scrollax-parent="true">
          <div class="col-md-8 ftco-animate text-center text-md-left mb-5" data-scrollax=" properties: { translateY: '70%' }">
            <p class="breadcrumbs" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }"><span class="mr-3"><a href="index.html">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Apply Now</span></p>
            <h1 class="mb-3 bread" data-scrollax="properties: { translateY: '30%', opacity: 1.6 }">Apply Now</h1>
          </div>
        </div>
      </div>
    </div>

 <?php
if (isset($_GET['search'])) {
# code...
$jobid = $_GET['search'];
}else{
$jobid = '';

}
$sql = "SELECT * FROM `tblcompany` c,`tbljob` j WHERE c.`COMPANYID`=j.`COMPANYID` AND JOBID LIKE '%" . $jobid ."%' ORDER BY DATEPOSTED DESC" ;
$mydb->setQuery($sql);
$result = $mydb->loadSingleResult();

?> 
<section class="ftco-section contact-section bg-light">
      <div class="container">
        <div class="row d-flex mb-5 contact-info">



            <h2 class="page-header" >Job Details</h2>
           
        </div>
        <div class="row block-9">
          <div class="col-md-6 order-md-last d-flex">
              <form class="form-horizontal span6  wow fadeInDown" action="process.php?action=submitapplication&JOBID=<?php echo $result->JOBID; ?>"  enctype="multipart/form-data"  method="POST" autocomplete="off">

               <?php require_once('applicantform.php') ?>  

            </form>
          </div>
          <div class="col-md-6 d-flex">
                     <div class="panel">
                         <div class="panel-header">
                              <div style="border-bottom: 1px solid #ddd;padding: 10px;font-size: 25px;font-weight: bold;color: #000;margin-bottom: 5px;"><a href="<?php echo web_root.'index.php?q=viewjob&search='.$result->JOBID;?>"><?php echo $result->OCCUPATIONTITLE ;?></a> 
                              </div> 
                         </div>
                         <div class="panel-body">
                                  <div class="row contentbody">
                                        <div class="col-md-6">
                                            <ul>
                                               <strong> <li><i class="fp-ht-bed"></i>Required No. of Employee's :</strong> <?php echo $result->REQ_NO_EMPLOYEES; ?></li>   </strong>
                                                <li><i class="fp-ht-food"></i><strong>Salary :</strong> <?php echo $result->SALARIES;  ?></li>
                                                <li><i class="fa fa-sun-"></i><strong>Working Hours :</strong> <?php echo $result->DURATION_EMPLOYEMENT; ?></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-6">
                                            <ul> 
                                                <li><i class="fp-ht-tv"></i><strong>Prefered Sex :</strong> <?php echo $result->PREFEREDSEX; ?></li>
                                                <li><i class="fp-ht-computer"></i><strong>Deadline for application :</strong> <?php echo $result->DEADLINE; ?></li>
                                            </ul>
                                        </div>
                                        <div class="col-md-12">
                                           <strong> <p>Minimum level of education Required:</p></strong>
                                             <ul style="list-style: none;"> 
                                                <li><?php echo $result->QUALIFICATION_WORKEXPERIENCE ;?></li> 
                                            </ul> 
                                        </div>
                                        <div class="col-md-12"> 
                                           <strong> <p>Job Description:</p></strong>
                                            <ul style="list-style: none;"> 
                                                 <li><?php echo $result->JOBDESCRIPTION ;?></li> 
                                            </ul> 
                                         </div>
                                        <div class="col-md-12">
                                            <p><strong>Employer :</strong>  <?php echo  $result->COMPANYNAME; ?></p> 
                                            <p><strong>Location : </strong> <?php echo  $result->COMPANYADDRESS; ?></p>
                                        </div>
                                    </div>
                         </div>
                         <div class="panel-footer">
                            <strong>  Date Posted :</strong>  <?php echo date_format(date_create($result->DATEPOSTED),'M d, Y'); ?>
                         </div>
                     </div> 

          </div>
        </div>
      </div>
    </section>
