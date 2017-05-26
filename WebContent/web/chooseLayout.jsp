<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JuzzGo</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}/" />
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href="${contextPath}bootstrap/css/bootstrap.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript"
	src="${contextPath}bootstrap/js/bootstrap.js"></script>
<link href="${contextPath}css/home.css" rel="stylesheet">

<script src="http://s.codepen.io/assets/libs/modernizr.js"
	type="text/javascript"></script>

<meta name="viewport" content="width=device-width">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
<link href="${contextPath}css/seat.css" rel="stylesheet">

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
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">

			<a class="navbar-brand" href="#"> <span><img
					src="${contextPath}images/logo1.png" width="50" height="40"
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



	<div class="plane">
		<div class="cockpit">
			<h1>Please select a seat</h1>
		</div>
		<div class="exit exit--front fuselage"></div>
		<ol class="cabin fuselage">
			<li class="row row--1">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="1A" /> <label
						for="1A">1A</label></li>
					<li class="seat"><input type="checkbox" id="1B" /> <label
						for="1B">1B</label></li>
					<li class="seat"><input type="checkbox" id="1C" /> <label
						for="1C">1C</label></li>
					<li class="seat"><input type="checkbox" disabled id="1D" /> <label
						for="1D">Occupied</label></li>
					<li class="seat"><input type="checkbox" id="1E" /> <label
						for="1E">1E</label></li>
					<li class="seat"><input type="checkbox" id="1F" /> <label
						for="1F">1F</label></li>
				</ol>
			</li>
			<li class="row row--2">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="2A" /> <label
						for="2A">2A</label></li>
					<li class="seat"><input type="checkbox" id="2B" /> <label
						for="2B">2B</label></li>
					<li class="seat"><input type="checkbox" id="2C" /> <label
						for="2C">2C</label></li>
					<li class="seat"><input type="checkbox" id="2D" /> <label
						for="2D">2D</label></li>
					<li class="seat"><input type="checkbox" id="2E" /> <label
						for="2E">2E</label></li>
					<li class="seat"><input type="checkbox" id="2F" /> <label
						for="2F">2F</label></li>
				</ol>
			</li>
			<li class="row row--3">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="3A" /> <label
						for="3A">3A</label></li>
					<li class="seat"><input type="checkbox" id="3B" /> <label
						for="3B">3B</label></li>
					<li class="seat"><input type="checkbox" id="3C" /> <label
						for="3C">3C</label></li>
					<li class="seat"><input type="checkbox" id="3D" /> <label
						for="3D">3D</label></li>
					<li class="seat"><input type="checkbox" id="3E" /> <label
						for="3E">3E</label></li>
					<li class="seat"><input type="checkbox" id="3F" /> <label
						for="3F">3F</label></li>
				</ol>
			</li>
			<li class="row row--4">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="4A" /> <label
						for="4A">4A</label></li>
					<li class="seat"><input type="checkbox" id="4B" /> <label
						for="4B">4B</label></li>
					<li class="seat"><input type="checkbox" id="4C" /> <label
						for="4C">4C</label></li>
					<li class="seat"><input type="checkbox" id="4D" /> <label
						for="4D">4D</label></li>
					<li class="seat"><input type="checkbox" id="4E" /> <label
						for="4E">4E</label></li>
					<li class="seat"><input type="checkbox" id="4F" /> <label
						for="4F">4F</label></li>
				</ol>
			</li>
			<li class="row row--5">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="5A" /> <label
						for="5A">5A</label></li>
					<li class="seat"><input type="checkbox" id="5B" /> <label
						for="5B">5B</label></li>
					<li class="seat"><input type="checkbox" id="5C" /> <label
						for="5C">5C</label></li>
					<li class="seat"><input type="checkbox" id="5D" /> <label
						for="5D">5D</label></li>
					<li class="seat"><input type="checkbox" id="5E" /> <label
						for="5E">5E</label></li>
					<li class="seat"><input type="checkbox" id="5F" /> <label
						for="5F">5F</label></li>
				</ol>
			</li>
			<li class="row row--6">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="6A" /> <label
						for="6A">6A</label></li>
					<li class="seat"><input type="checkbox" id="6B" /> <label
						for="6B">6B</label></li>
					<li class="seat"><input type="checkbox" id="6C" /> <label
						for="6C">6C</label></li>
					<li class="seat"><input type="checkbox" id="6D" /> <label
						for="6D">6D</label></li>
					<li class="seat"><input type="checkbox" id="6E" /> <label
						for="6E">6E</label></li>
					<li class="seat"><input type="checkbox" id="6F" /> <label
						for="6F">6F</label></li>
				</ol>
			</li>
			<li class="row row--7">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="7A" /> <label
						for="7A">7A</label></li>
					<li class="seat"><input type="checkbox" id="7B" /> <label
						for="7B">7B</label></li>
					<li class="seat"><input type="checkbox" id="7C" /> <label
						for="7C">7C</label></li>
					<li class="seat"><input type="checkbox" id="7D" /> <label
						for="7D">7D</label></li>
					<li class="seat"><input type="checkbox" id="7E" /> <label
						for="7E">7E</label></li>
					<li class="seat"><input type="checkbox" id="7F" /> <label
						for="7F">7F</label></li>
				</ol>
			</li>
			<li class="row row--8">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="8A" /> <label
						for="8A">8A</label></li>
					<li class="seat"><input type="checkbox" id="8B" /> <label
						for="8B">8B</label></li>
					<li class="seat"><input type="checkbox" id="8C" /> <label
						for="8C">8C</label></li>
					<li class="seat"><input type="checkbox" id="8D" /> <label
						for="8D">8D</label></li>
					<li class="seat"><input type="checkbox" id="8E" /> <label
						for="8E">8E</label></li>
					<li class="seat"><input type="checkbox" id="8F" /> <label
						for="8F">8F</label></li>
				</ol>
			</li>
			<li class="row row--9">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="9A" /> <label
						for="9A">9A</label></li>
					<li class="seat"><input type="checkbox" id="9B" /> <label
						for="9B">9B</label></li>
					<li class="seat"><input type="checkbox" id="9C" /> <label
						for="9C">9C</label></li>
					<li class="seat"><input type="checkbox" id="9D" /> <label
						for="9D">9D</label></li>
					<li class="seat"><input type="checkbox" id="9E" /> <label
						for="9E">9E</label></li>
					<li class="seat"><input type="checkbox" id="9F" /> <label
						for="9F">9F</label></li>
				</ol>
			</li>
			<li class="row row--10">
				<ol class="seats" type="A">
					<li class="seat"><input type="checkbox" id="10A" /> <label
						for="10A">10A</label></li>
					<li class="seat"><input type="checkbox" id="10B" /> <label
						for="10B">10B</label></li>
					<li class="seat"><input type="checkbox" id="10C" /> <label
						for="10C">10C</label></li>
					<li class="seat"><input type="checkbox" id="10D" /> <label
						for="10D">10D</label></li>
					<li class="seat"><input type="checkbox" id="10E" /> <label
						for="10E">10E</label></li>
					<li class="seat"><input type="checkbox" id="10F" /> <label
						for="10F">10F</label></li>
				</ol>
			</li>
		</ol>
		<div class="exit exit--back fuselage"></div>
	</div>

	<div class="row">
		<div class="col-xs-6">

			

		</div>
		

	<form action="reviewItinerary.jsp">
		<div class="col-xs-4">
			<button id="confirmProceed" class="btn btn-primary btn-lg">Continue</button>
		</div>
	</form>
	<div class="col-xs-2">

			

		</div>
	</div>
	
	<script
		src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

</body>
</html>