<?php
session_start();
// Include database connection file
include_once('database.php');

    $query6 = "SELECT status, MONTHNAME(dateCreated) as month_bartered, count(*) as number FROM barter_items WHERE status = 'Bartered' GROUP BY MONTHNAME(dateCreated)";
    $result6 = mysqli_query($con, $query6);

?>
<style type="text/css">
    .nav-link{
	color: #f9f6f6;
	font-size: 14px;
    }	

	.logo{
	width: 120px;
	cursor: pointer;
}
</style>
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Reports</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    </head>
       <body>
	    <nav class="navbar navbar-info sticky-top bg-info flex-md-nowrap p-10">
		<a class="navbar-brand col-sm-3 col-md-2 mr-0" href="" style="color: #5b5757;"><img src="images/logo.webp" class="logo"></a>
	            <ul class="navbar-nav px-3">
			<li class="nav-item text-nowrap">
		    	    <a class="nav-link" href="logout.php">Hi, <?php echo ucwords($_SESSION['FNAME']); ?> <input type="submit" name="submit" class="btn btn-success" value="Log Out"></a>
			</li>
		    </ul>
		</nav>		
		<div class="container-fluid">
		    <div class="row">
			<nav class="col-md-2 d-none d-md-block bg-info sidebar" style="height: auto;">
		    	    <div class="sidebar-sticky">
			        <ul class="nav flex-column" style="color: #5b5757;">
				    <li class="nav-item">
					<a class="nav-link active" href="user-dashboard.php">
					<span data-feather="home"></span>
				            Dashboard <span class="sr-only">(current)</span>
							</a>
				    </li>

					<!-- <h6>ADMINISTRATOR</h6> -->
					<?php if ($_SESSION['ROLE'] == 'Super Admin' || $_SESSION['ROLE'] == 'Regular Admin') { ?>		
				    <li class="nav-item">
					<a href="admin-profile.php?id=<?php echo ucwords($_SESSION['ID']); ?>" class="nav-link" >
					    <span data-feather="users"></span>
					    Admin Profile
					</a>
				    </li>
					<!-- <li class="nav-item">
					<a class="nav-link" href="admin-approved.php?id=<?php echo ucwords($_SESSION['ID']); ?>">
				    	    <span data-feather="users"></span>
					    Admin Approval
						</a>
				    </li> -->
                    <li class="nav-item">
					<a class="nav-link" href="admin-analysis.php">
				    	    <span data-feather="users"></span>
					    User Analysis
                        </a>
				    </li>
                    <a class="nav-link" href="user-report.php">
				    	    <span data-feather="users"></span>
					    User Reports
						</a>
				    </li>
					<?php } ?>	

				<?php if ($_SESSION['ROLE'] == 'Super Admin') { ?>
					<li class="nav-item">
					<a class="nav-link" href="admin-dashboard.php">
				    	    <span data-feather="users"></span>
					    Admin Lists
						</a>
				    </li>
						</a>
				    </li>
				<?php } ?>						
			    </ul>
			</div>
		    </nav>
            <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
		<div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3">

		</div>
		<div class="card-header">
                        <h4>USER REPORTS</h4>
                    </div>

           <div id="bar-graph-location" style="width:110%; max-width:1000px; height:500px;"></div>  
           <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
           <script type="text/javascript">  
           google.charts.load('current', {'packages':['barchart']});  
           google.charts.setOnLoadCallback(drawChart);  
           function drawChart()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['Month', 'Bartered'],  
                          <?php  
                          while($row = mysqli_fetch_assoc($result6))  
                          {  
                               echo "['".$row["month_bartered"]."', ".$row["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title: 'TOTAL BARTER OF ITEMS EACH DAY IN A MONTH',   

                      colors: ['#FED000']
                };
                var chart = new google.visualization.BarChart(document.getElementById('bar-graph-location'));  
                chart.draw(data, options);  
           }  
    </script>  
</main>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
    feather.replace();
</script>			
</body>
</html>
