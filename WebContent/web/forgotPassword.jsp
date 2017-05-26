<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JuzzGo</title>
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/validate.js"></script>
<link href="../css/home.css" rel="stylesheet">

<SCRIPT>
	function submitFunction(i) {
		if (i == 1)
			document.theForm.action = "home.jsp";
		if (i == 2)
			document.theForm.action = "http://www.company.com/cgi-bin/cgi2.cgi";
		if (i == 3)
			document.theForm.action = "register.jsp";
		document.theForm.submit()
	}
	
	function alertDisplay() {
		
		 var x;
		    if (confirm("Recovery Email has been sent to your email") == true) {
		        x = "You pressed OK!";
		    } else {
		        x = "You pressed Cancel!";
		    }
		    if( x == "You pressed OK!"){
		    	
	    			window.location="login.jsp";
		    	}
			}
	    
	

</SCRIPT>
</head>
<body>
	<div>
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
				<a class="navbar-brand" href="home.jsp" id="styleLink">JuzzGo</a>
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

				</form>
			</div>
		</div>
		</nav>
	</div>
	<div class="container">
		<div id="loginbox" style="margin-top: 50px;"
			class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-info">
				<div class="panel-heading">
					<div class="panel-title">Forgot Password</div>
					
				</div>

				<div style="padding-top: 30px" class="panel-body">

					
						
						

					<form id="loginform" class="form-horizontal" role="form"
						action="login.jsp" method="post">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input id="login-username"
								type="text" class="form-control" name="username" value=""
								placeholder="username or email" required>
						</div>

						





						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

						<div class="row">
						
						
						</div>
							<div class="col-sm-12 controls">
								<input type="submit" value="Send Recovery Email" class="btn btn-primary "
									id="btn-login" onclick="alertDisplay();"> 
									
							
							</div>
						</div>


						
					</form>



				</div>
			</div>
		</div>
	
	</div>
	
</body>
</html>