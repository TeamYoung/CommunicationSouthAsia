<html>
<head>
	<title>Communication Status in South Asia</title>
	<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
    <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript">
		$(document).ready(function(){
			$("#expanderHead").click(function(){
				$("#expanderContent").slideToggle();
				if ($("#expanderSign").text() == "+"){
					$("#expanderSign").html("-")
				}
				else {
					$("#expanderSign").text("+")
				}
			});
		});
	</script>
	<style type="text/css">
    	.container, .navbar {
    		width: 960px !important;
            background-color: #E5E4E2;
    	}
        body {
            background-color: black;
        }
        hr { 
            border-top: 2px solid #ccc;
        }
    </style>
</head>
    <script type="text/javascript" src="js/chart_internet.js"></script>
    <script type="text/javascript" src="js/chart_mobile.js"></script>
    <script type="text/javascript" src="js/chart_internet_pie.js"></script>      
    <script type="text/javascript" src="js/chart_internet_users.js"></script>
	<link rel="shortcut icon" href="img/favicon.png" type="image/png">
<body>
    <center>
        <img src="img/header_final.png" />
    </center>
	<div class="container">
         <div class="navbar">
          <div class="navbar-inner">
              <ul class="nav">
                <li class="active"><a href="index.php">South Asia</a></li>
                <li><a href="nepal_index.php">Nepal</a></li>
              </ul>
          </div>
        </div>
        <div class="row-fluid">
            <h2 align="center">South Asia</h2>
            <div class="span10 offset1 well">
                <div id="saarc_internet"></div>
                <br />
                <hr>
                <div id="saarc_mobile_subscription"></div>
                <br />
                <hr>
                <div id="saarc_internet_pie"></div>
                <br />
                <hr>
                <div id="saarc_internet_users"></div>
                <br />
                <hr>
				<h4 id="expanderHead" style="cursor:pointer;">
					Analysis
					<span id="expanderSign">+</span>
				</h4>
				<div id="expanderContent" style="display:none">
					<p style="color: black; font-weight: bold; color: #777777;">
						The number of internet, mobile users is increasing rapidly in South Asian countries. South Asia is home to well over one fifth of the world's population, making it both the most populous and the most densely populated geographical region in the world. But, still large number of population in South Asia are deprived of communication services. Thus, there's still a large void to fill.
					</p>
				</div>
				<hr>
            </div>
        </div>
	</div>
    <script src="http://code.highcharts.com/highcharts.js"></script>
    <script src="http://code.highcharts.com/modules/exporting.js"></script>

    <div id="footer">
      <div class="container">
        <p class="muted credit" align="center">Courtesy Team Young, Open Nepal Hackathon 2013</p>
      </div>
    </div>
</body>
</html>