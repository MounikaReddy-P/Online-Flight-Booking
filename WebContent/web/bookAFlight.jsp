<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JuzzGo</title>
<link href="../bootstrap/css/bootstrap.css" rel="stylesheet"
	type="text/css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/validate.js"></script>
<link href="../css/home.css" rel="stylesheet">
<link href="../css/book.css" rel="stylesheet">
<SCRIPT>
	function submitFunction(i) {
		if (i == 1)
			document.theForm.action = "userHome.jsp";
		if (i == 2)
			document.theForm.action = "help1.jsp";

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
				<div class="form-group">

					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <span
								class="glyphicon glyphicon-user icon-size1"></span> <span
								class="glyphicon glyphicon-chevron-down"></span>
						</a>
							<ul class="dropdown-menu">
								<li>
									<div class="navbar-login">
										<div class="row">
											<div class="col-lg-4">
												<p class="text-center">
													<span class="glyphicon glyphicon-user icon-size"></span>
												</p>
											</div>
											<div class="col-lg-8">
												<p class="text-left">
													<strong>${sessionScope.userName}</strong>
												</p>
												<p class="text-left small">${sessionScope.userMail}</p>
												<p class="text-left">
													<a href="#" class="btn btn-primary btn-block btn-sm">Profile</a>
												</p>
											</div>
										</div>
									</div>
								</li>
								<!-- <li class="divider navbar-login-session-bg"></li>
								<li><a href="#">Account Settings <span
										class="glyphicon glyphicon-cog pull-right"></span></a></li> -->
								<li class="divider"></li>

								<li><a href="login.jsp">Sign Out <span
										class="glyphicon glyphicon-log-out pull-right"></span></a></li>
							</ul></li>
					</ul>
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
							<td><a href="bookAFlight.jsp"
								class="btn btn-lg btn-danger btn1" role="button">Book a
									Flight</a></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-lg btn-danger btn1"
								role="button">Manage Booking</a></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-lg btn-danger btn1"
								role="button">Online Check In</a></td>
						</tr>
						<tr>
							<td><a href="#" class="btn btn-lg btn-danger btn1"
								role="button">Check Flight Status</a></td>
						</tr>

					</table>
				</div>
				<div class="col-sm-10 col-md-10 col-lg-10 col-xs-12">

					<div class="book">
						<div class="card hovercard">
							<div class="card-background">
								<img class="card-bkimg" alt=""
									src="../images/icon.png">
								<!-- http://lorempixel.com/850/280/people/9/ -->
							</div>
							<div class="useravatar">
								<img alt=""
									src="../images/icon.png">
							</div>
							<div class="card-info">
								<span class="card-title">Booking Ticket</span>

							</div>
						</div>
						<div class="btn-pref btn-group btn-group-justified btn-group-lg"
							role="group" aria-label="...">
							<div class="btn-group" role="group">
								<button type="button" id="stars" class="btn btn-primary"
									href="#tab1" data-toggle="tab">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<div class="hidden-xs">One-Way</div>
								</button>
							</div>
							<div class="btn-group" role="group">
								<button type="button" id="favorites" class="btn btn-default"
									href="#tab2" data-toggle="tab">
									<span class="glyphicon glyphicon-star" aria-hidden="true"></span><span
										class="glyphicon glyphicon-star" aria-hidden="true"></span>
									<div class="hidden-xs">Round-trip</div>
								</button>
							</div>

						</div>

						<div class="well">
							<div class="tab-content">
								<div class="tab-pane fade in active" id="tab1">
									<form action="../BookFlightServlet" method="post">

										<div class="form-group">
											<div class="form-group col-lg-6">
												<input type="text" name="from_location" class="form-control" id=""
													value="" placeholder="From" required>
											</div>
											<div class="form-group col-lg-6">
												<input type="text" name="to_location" class="form-control" id=""
													value="" placeholder="To" required>
											</div>

										</div>
										<div class="form-group col-lg-6">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-calendar"></span></span> <input
													type="date" class="form-control" placeholder="depart" name="depart_date"
													required />
											</div>
										</div>
										
										
										<div class="form-group col-lg-6">
										<select id="travelClass" class="form-control" name="travel_class" required>
											<option>Economy</option>
											<option>Business</option>
											
										</select>
										</div>
										
										<div class="form-group col-lg-6">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-user"></span></span> <input type="text"
													class="form-control" placeholder="Passengers" name="passengers" required />
											</div>
										</div>


										<button id="findTicket" class="btn btn-primary btn-lg btn3d ">
											<i class="glyphicon glyphicon-tag"></i> Find Ticket
										</button>
									</form>
								</div>

								<div class="tab-pane fade in" id="tab2">
									<form action="../BookFlightServlet" method="post">
										<div class="form-group">
											<div class="form-group col-lg-6">
												<input type="text"  class="form-control" id=""
													value="" placeholder="From" name="from_location" required>
											</div>
											<div class="form-group col-lg-6">
												<input type="text"  class="form-control" id=""
													value="" placeholder="To" name="to_location" required>
											</div>

										</div>
										<div class="form-group col-lg-6">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-calendar"></span></span> <input
													type="date" class="form-control" placeholder="depart" name="depart_date"
													required />
											</div>
										</div>
										<div class="form-group col-lg-6">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-calendar"></span></span> <input
													type="date" class="form-control" placeholder="depart" name="arrival_date"
													required />
											</div>
										</div>
										
										<div class="form-group col-lg-6">
										<select id="travelClass" class="form-control" name="travel_class" required>
											<option>Economy</option>
											<option>Business</option>
											
										</select>
										</div>
										<div class="form-group col-lg-6">
											<div class="input-group">
												<span class="input-group-addon"><span
													class="glyphicon glyphicon-user"></span></span> <input type="text"
													class="form-control" placeholder="Passengers" name="passengers" required />
											</div>
										</div>
										<button id="findTicket" class="btn btn-primary btn-lg btn3d ">
											<i class="glyphicon glyphicon-tag"></i> Find Ticket
										</button>
									</form>
								</div>
							</div>
						</div>

					</div>

				</div>
			</div>
		</div>



	</div>





</body>
</html>