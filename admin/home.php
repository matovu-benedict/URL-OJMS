
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Dashboard
        <small>Control panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class="active">Dashboard</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
      <div class="row">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
             
			  
			  
			   <div class="h5 mb-0 font-weight-bold text-gray-800"><?php


$databaseHost = 'localhost';   //your db host 
$databaseName = 'job_management';  //your db name 
$databaseUsername = 'root';    //your db username 
$databasePassword = '';//   db password 

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 


if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$sql="select count('1') from tblapplicants";
$result=mysqli_query($mysqli,$sql);
$row=mysqli_fetch_array($result);
echo "<h3>$row[0]</h3>";
mysqli_close($mysqli);
?></div>

              <p>Job  Applicants</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
			
   <div class="h5 mb-0 font-weight-bold text-gray-800"><?php


$databaseHost = 'localhost';   //your db host 
$databaseName = 'job_management';  //your db name 
$databaseUsername = 'root';    //your db username 
$databasePassword = '';//   db password 

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 


if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$sql="select count('1') from tblcompany";
$result=mysqli_query($mysqli,$sql);
$row=mysqli_fetch_array($result);
echo "<h3>$row[0]</h3>";
mysqli_close($mysqli);
?></div>
              
			  
			  
			  
			  
			  
			  
			  <p>Registered Companies</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              
			  
			  <div class="h5 mb-0 font-weight-bold text-gray-800"><?php


$databaseHost = 'localhost';   //your db host 
$databaseName = 'job_management';  //your db name 
$databaseUsername = 'root';    //your db username 
$databasePassword = '';//   db password 

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 


if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$sql="select count('1') from tbljob";
$result=mysqli_query($mysqli,$sql);
$row=mysqli_fetch_array($result);
echo "<h3>$row[0]</h3>";
mysqli_close($mysqli);
?></div>
			  

              <p>Posted Vcancies</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
             
			  
			  
			  
			  <div class="h5 mb-0 font-weight-bold text-gray-800"><?php


$databaseHost = 'localhost';   //your db host 
$databaseName = 'job_management';  //your db name 
$databaseUsername = 'root';    //your db username 
$databasePassword = '';//   db password 

$mysqli = mysqli_connect($databaseHost, $databaseUsername, $databasePassword, $databaseName); 
 


if (mysqli_connect_errno())
{
echo "Failed to connect to MySQL: " . mysqli_connect_error();
}
$sql="select count('1') from tblcategory";
$result=mysqli_query($mysqli,$sql);
$row=mysqli_fetch_array($result);
echo "<h3>$row[0]</h3>";
mysqli_close($mysqli);
?></div>
			  
			  
			  
              <p>Registered Categories</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
      </div>
      <!-- /.row -->
      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <section class="col-lg-7 connectedSortable">
          <!-- Custom tabs (Charts with tabs)-->
         
         

     
       
      </div>
      <!-- /.row (main row) -->

    </section>
    <!-- /.content -->
  