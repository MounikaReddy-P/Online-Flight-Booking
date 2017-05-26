<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>JuzzGo</title>
<meta charset="utf-8" />
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
<link href="../css/home.css" rel="stylesheet">
<SCRIPT>
function submitFunction(i) {
   if (i==1) document.theForm.action=
      "home.jsp";
   if (i==2) document.theForm.action=
      "help.jsp";
   if (i==3) document.theForm.action=
      "register.jsp";
   document.theForm.submit()
   }
</SCRIPT>

</head>
<body id="background_image">
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">

				<a class="navbar-brand" href="#"> <span><img
						src="../images/logo1.png" width="50" height="40"
						class="d-inline-block align-top" alt=""> </span>
				</a>
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#navbar" aria-expanded="false"
					aria-controls="navbar">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" id="styleLink" href="home.jsp">JuzzGo</a>
			</div>
			<div id="navbar" class="navbar-collapse collapse">
				<form class="navbar-form navbar-right" name="theForm">
					<div class="form-group">
						<button type="submit" class="btn btn-lg btn-danger" id="action"
							value="Home" onClick="submitFunction(1)">Home</button>
					</div>
					<div class="form-group">
						<button type="submit" class="btn btn-lg btn-danger" id="action"
							value="Help" onClick="submitFunction(2)">Help</button>
					</div>
					<div class="input-group">
						<!-- <input type="text" class="form-control input-lg"
							placeholder="Search" aria-describedby="basic-search"> <span
							class="input-group-addon" id="basic-addon1"><span
							class="glyphicon glyphicon-search" aria-hidden="true"></span></span> -->
					</div>
					<div class="form-group">

						<button type="submit" class="btn btn-lg  btn-danger" id="action"
							value="Sign up" onClick="submitFunction(3)">Sign up</button>
					</div>
				</form>
			</div>
		</div>
	</nav>
	<div id="page_content">
		<div class="container">
			<div class="row">
				<div class="col-sm-2 col-md-2 col-lg-2 col-xs-12">
					<table class="table">
						<tr>
							<td><a href="login.jsp" class="btn btn-lg btn-danger btn1" role="button">Book
									a Flight</a></td>
						</tr>
						<tr>
							<td><a href="login.jsp" class="btn btn-lg btn-danger btn1" role="button">Manage
									Booking</a></td>
						</tr>
						<tr>
							<td><a href="login.jsp" class="btn btn-lg btn-danger btn1" role="button">Online
									Check In</a></td>
						</tr>
						<tr>
							<td><a href="login.jsp" class="btn btn-lg btn-danger btn1" role="button">Check
									Flight Status</a></td>
						</tr>
						<tr>
							<td><a href="login.jsp" class="btn btn-lg btn-default btn1" role="button">Login</a></td>
						</tr>
					</table>
				</div>
				<div class="col-sm-10 col-md-10 col-lg-10 col-xs-12"></div>
			</div>
		</div>
	</div>


	
	

</body>
</html>
