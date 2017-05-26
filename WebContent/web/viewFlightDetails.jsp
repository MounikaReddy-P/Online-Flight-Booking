<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JuzzGo</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}/" />

<link href="${contextPath}bootstrap/css/bootstrap.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="${contextPath}bootstrap/js/bootstrap.js"></script>
<link href="${contextPath}css/home.css" rel="stylesheet">

<SCRIPT>
	function submitFunction(i) {
		if (i == 1)
			document.theForm.action = "${contextPath}web/userHome.jsp";
		if (i == 2)
			document.theForm.action = "${contextPath}web/help1.jsp";

		document.theForm.submit()
	}
</SCRIPT>
</head>
<body id="background_image">
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

								<li><a href="${contextPath}web/login.jsp">Sign Out <span
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
				
				<div class="col-sm-12 col-md-12 col-lg-12 col-xs-12">
					<div class="book">
						<div class="well">
							

							<table class="table table-striped">
								<thead>
									<tr>
										
										<th>From</th>
										<th>To</th>
										<th>DepartureDate</th>
										<th>ArrivalDate</th>
										<th>TravelClass</th>
										<th>Passengers</th>
										
									</tr>
								</thead>
								<tbody>
								<c:forEach var="flight" items="${flights}" end="0">
    
									<tr>
										
										<td><c:out value="${flight.from_location}"/></td>
										<td><c:out value="${flight.to_location}"/></td>
								 		<td><c:out value="${flight.depart_date}"/></td>
								 		<td><c:out value="${flight.arrival_date}"/></td>
								 		<td><c:out value="${flight.travel_class}"/></td>
								 		<td><c:out value="${flight.passengers} Adult"/></td>
									</tr>
								</c:forEach>
									
								</tbody>
							</table>
							<form action="${contextPath}web/payment.jsp" method="post">
							<table class="table">
								<thead>
									<tr class="bg-warning">
										<th></th>
										<th>Depart</th>
										<th>Arrive</th>
										<th>Leg</th>
										<th>Duration</th>
										<th>Stops</th>
										<th>Class</th>
										<th>Price</th>
										
									</tr>
								</thead>
								<tbody>
									<c:forEach var="flight" items="${flights}">		
								
									<tr class="table-active">
										<td class="bg-success"> 
                     						<input type="radio" id='regular' name="optradio">
                						 </td>
										<td class="bg-success"><c:out value="${flight.depart_time}"/></td>
										<td class="bg-success"><c:out value="${flight.arrival_time}"/></td>
								 		<td class="bg-success"><c:out value="${flight.leg}"/></td>
								 		<td class="bg-success"><c:out value="${flight.duration}"/></td>
								 		<td class="bg-success"><c:out value="${flight.stops}"/></td>
								 		<td class="bg-success"><c:out value="${flight.travel_class}"/></td>
								 		<td class="bg-success">$<c:out value="${flight.price}"/></td>
								 		
									</tr>
									</c:forEach>
								</tbody>
							</table>
							
							
							
							<input type="submit" value="Confirm Selection"
								id="confirmSelection" class="btn  btn-primary btn1">
								</form>
						</div>

					</div>

				</div>
			</div>
		</div>
	</div>



</body>
</html>