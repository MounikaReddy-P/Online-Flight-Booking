<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>JuzzGo</title>
<c:set var="contextPath" value="${pageContext.request.contextPath}/" />

<link href="${contextPath}bootstrap/css/bootstrap.css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="${contextPath}bootstrap/js/bootstrap.js"></script>
<link href="${contextPath}css/home.css" rel="stylesheet">
<SCRIPT>
function submitFunction(i) {
   if (i==1) document.theForm.action=
      "adminHome.jsp";
   if (i==2) document.theForm.action=
      "help1.jsp";
   
   document.theForm.submit()
   }
   
function addNewFlight() {
	
	alert("Flight details added successfully");
   
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
				<a class="navbar-brand" href="adminHome.jsp" id="styleLink">JuzzGo</a>
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
						<!-- <input type="text" class="form-control input-lg" placeholder="Search"
							aria-describedby="basic-search"> <span
							class="input-group-addon" id="basic-addon1"><span
							class="glyphicon glyphicon-search" aria-hidden="true"></span></span> -->
					</div>
					<div class="form-group">

						<ul class="nav navbar-nav navbar-right">
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown"> <span
									class="glyphicon glyphicon-user icon-size1"></span> 
									<span class="glyphicon glyphicon-chevron-down"></span>
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
													<p class="text-left small">${sessionScope.userMail} </p>
													<p class="text-left">
														<a href="#" class="btn btn-primary btn-block btn-sm">Profile</a>
													</p>
												</div>
											</div>
										</div>
									</li>
									
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
			
				<div class="col-sm-2 col-md-2 col-lg-2 col-xs-12">
				</div>

				<div class="col-sm-10 col-md-10 col-lg-10 col-xs-12">
					<div class="book">
						<div class="container">
							<div class="row">
								<div class="col-xs-12 col-md-8">
									<!-- CREDIT CARD FORM STARTS HERE -->
									<div class="panel panel-default credit-card-box">
										<div class="panel-heading display-table">
											<div class="row display-tr">
												<h3 class="panel-title display-td" align="center"><strong>Add a New Flight</strong></h3>
												<div class="display-td">
													
												</div>
											</div>
										</div>
										<div class="panel-body">

											<form action="adminHome.jsp" method="post">

												<div class="row">
													<div class="col-xs-12">
														<div class="form-group">
															<label for="cardNumber">FLIGHT NUMBER</label>
															<div class="input-group">
																<input type="text" class="form-control"
																	placeholder="Flight Number" name="Flight Number" 
																	required autofocus /> <span class="input-group-addon"><i
																	class="fa fa-credit-card"></i></span>
															</div>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-xs-6 col-md-6">
														<div class="form-group">
															<label for="nameOnCard">Departure City</label>
															<div class="input-group">
																<input type="tel" class="form-control" name="nameOnCard"
																	placeholder="Departure City" required autofocus /> <span
																	class="input-group-addon"><i
																	class="glyphicon glyphicon-plane"></i></span>
															</div>
														</div>
													</div>
													<div class="col-xs-6 col-md-6">
														<div class="form-group">
															<label for="nameOnCard">Arrival City</label>
															<div class="input-group">
																<input type="tel" class="form-control" name="nameOnCard"
																	placeholder="Arrival City" required autofocus /> <span
																	class="input-group-addon"><i
																	class="glyphicon glyphicon-plane"></i></span>
															</div>
														</div>
													</div>
													
												</div>
												<div class="row">
													<div class="col-xs-6 col-md-6">
														<div class="form-group">
															<label for="cardExpiry"><span class="hidden-xs">Departure</span><span
																class="visible-xs-inline">EXP</span> Date</label> <input
																type="date" class="form-control" name="cardExpiry"
																placeholder="mm/dd/yyyy" autocomplete="cc-exp" required />
														</div>
													</div>
													<div class="col-xs-6 col-md-6 pull-right">
														<div class="form-group">
															<label for="cardCVC">Arrival Date</label> <input type="date"
																class="form-control" name="cardCVC" placeholder="mm/dd/yyyy" 
																autocomplete="cc-csc" required />
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-xs-6 col-md-6">
														<div class="form-group">
															<label for="cardExpiry"><span class="hidden-xs">Departure</span><span
																class="visible-xs-inline">EXP</span> Time</label> <input
																type="text" class="form-control" name="cardExpiry"
																placeholder="Deaprture Time" autocomplete="cc-exp" required />
														</div>
													</div>
													<div class="col-xs-6 col-md-6 pull-right">
														<div class="form-group">
															<label for="cardCVC">Arrival Time</label> <input type="text"
																class="form-control" name="cardCVC" placeholder="Arrival Time" 
																autocomplete="cc-csc" required />
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-xs-4"></div>
													<div class="col-xs-4">
														<button id="findTicket"
															class="btn btn-primary btn-lg btn-block" onclick="addNewFlight()">Add Flight Schedule</button>
													</div>
												</div>



											</form>

										</div>
									</div>
									<!-- CREDIT CARD FORM ENDS HERE -->


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
