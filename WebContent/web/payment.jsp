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
												<h3 class="panel-title display-td">Payment Details</h3>
												<div class="display-td">
													<img class="img-responsive pull-right"
														src="http://i76.imgup.net/accepted_c22e0.png">
												</div>
											</div>
										</div>
										<div class="panel-body">

											<form action="chooseLayout.jsp" method="post">

												<div class="row">
													<div class="col-xs-12">
														<div class="form-group">
															<label for="cardNumber">CARD NUMBER</label>
															<div class="input-group">
																<input type="text" class="form-control"
																	placeholder="Valid Card Number" name="cardNumber" pattern="[0-9]{16}"  
																	title="Please Enter Valid Card Number(16 Digits)"
																	required autofocus /> <span class="input-group-addon"><i
																	class="fa fa-credit-card"></i></span>
															</div>
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-xs-12">
														<div class="form-group">
															<label for="nameOnCard">NAME ON CARD</label>
															<div class="input-group">
																<input type="tel" class="form-control" name="nameOnCard"
																	placeholder="Cardholder Name" required autofocus /> <span
																	class="input-group-addon"><i
																	class="glyphicon glyphicon-user"></i></span>
															</div>
														</div>
													</div>
												</div>
												<div class="row">
													<div class="col-xs-7 col-md-7">
														<div class="form-group">
															<label for="cardExpiry"><span class="hidden-xs">EXPIRATION</span><span
																class="visible-xs-inline">EXP</span> DATE</label> <input
																type="tel" class="form-control" name="cardExpiry"
																placeholder="MM / YY" autocomplete="cc-exp" required />
														</div>
													</div>
													<div class="col-xs-5 col-md-5 pull-right">
														<div class="form-group">
															<label for="cardCVC">CV CODE</label> <input type="tel"
																class="form-control" name="cardCVC" placeholder="CVC" pattern="[0-9]{3}"  
																	title="Please Enter Valid CVV(3 Digits)"
																autocomplete="cc-csc" required />
														</div>
													</div>
												</div>

												<div class="row">
													<div class="col-xs-4">
														<ul class="nav">
															<li class="active"><a href="#"><span
																	class="badge pull-right"><span
																		class="glyphicon glyphicon-usd"></span>650</span> Final
																	Payment</a></li>
														</ul>
														<br />

													</div>
													<div class="col-xs-8">
														<button id="findTicket"
															class="btn btn-primary btn-lg btn-block ">Pay</button>
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