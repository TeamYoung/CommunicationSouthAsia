<html>
<head>
	<title>Nepal Status</title>
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <style type="text/css">
        .container, .navbar {
            width: 960px !important;
            background-color: #E5E4E2;
        }
        body {
            background-color: black;
        }
    </style>
</head>  
    <script type="text/javascript" src="js/chart_telecom_nepal.js"></script>
    <script type="text/javascript" src="js/chart_internet_nepal.js"></script>
    <script type="text/javascript" src="js/chart_internet_pie_nepal.js"></script>     
<body>
    <center>
        <img src="img/header_final.png" />
    </center>
	<div class="container">
        <div class="navbar">
          <div class="navbar-inner">
              <ul class="nav">
                <li><a href="index.php">South Asia</a></li>
                <li class="active"><a href="nepal_index.php">Nepal</a></li>
              </ul>
          </div>
        </div>
        <div class="actions">
		<div class="row-fluid">
            <h2 align="center">Nepal</h2>
            <div class="span10 offset1 well">
                <div id="chart_telecom_nepal"></div>
                <br />
                <hr>
                <div id="chart_internet_nepal"></div>
                <br />
                <hr> 
                <div id="chart_internet_pie_nepal"></div>
                <br />
                <hr>
            </div>
        </div>
	</div>
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.highcharts.com/modules/exporting.js"></script>

    <div id="footer">
      <div class="container">
        <p class="muted credit" align="center">Courtesy Team Young. Open Nepal Hackathon 2013</p>
      </div>
    </div>
</body>
</html>