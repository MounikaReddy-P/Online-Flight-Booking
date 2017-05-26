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
<script type="text/javascript"
	src="${contextPath}bootstrap/js/bootstrap.js"></script>
<script type="text/javascript" src="${contextPath}js/delete.js"></script>
<script type="text/javascript" src="${contextPath}js/updateTime.js"></script>
<link href="${contextPath}css/home.css" rel="stylesheet">

<SCRIPT>
	function submitFunction(i) {
		if (i == 1)
			document.theForm.action = "adminHome.jsp";
		if (i == 2)
			document.theForm.action = "help1.jsp";

		document.theForm.submit()
	}
	function deleteRow(r) {
		
		 var x;
		    if (confirm("Are you sure you want to delete this flight information?") == true) {
		        x = "You pressed OK!";
		    } else {
		        x = "You pressed Cancel!";
		    }
		    if( x == "You pressed OK!"){
		    	var answer = confirm ("Flight Information has been deleted successfully")
		    	if (answer){
				var i = r.parentNode.parentNode.rowIndex;
				document.getElementById("myTable").deleteRow(i);
		    	}
			}
	    
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


							<table class="table table-striped" id="myTable">
								<thead>
									<tr>

										<th>Flight Number</th>
										<th>Leg</th>
										<th>Departure Time</th>
										<th>Arrival Time</th>
										<th>Change Time</th>
										<th>Delete Flight</th>


									</tr>
								</thead>
								<tbody>



										<tr class="table-active">
											
											<td class="bg-success">6617</td>
											<td class="bg-success">MCI->DXB</td>
											<td class="bg-success" contenteditable="false">23:00</td>
											
											<td class="bg-success" contenteditable="false">08:00</td>
										<td class="bg-success"> <button class="editbtn btn btn-primary">Update</button></td>
											<td class="bg-success">

												<button id="deleteUser" class="btn btn-danger"
													onclick="deleteRow(this)">
													<i class="glyphicon glyphicon-trash"></i>
												</button>
											</td>

										</tr>

										<tr class="table-active">
											
											<td class="bg-success">8313</td>
											<td class="bg-success">DXB->HYD</td>
											<td class="bg-success" contenteditable="false">10:00</td>
											<td class="bg-success" contenteditable="false">02:00</td>
											<td class="bg-success"><button class="editbtn btn btn-primary">Update</button></td>
											<td class="bg-success">

												<button id="deleteUser" class="btn btn-danger"
													onclick="deleteRow(this)">
													<i class="glyphicon glyphicon-trash"></i>
												</button>
											</td>

										</tr>
										<tr class="table-active">
											
											<td class="bg-success">6681</td>
											<td class="bg-success">MCI->HOU</td>
											<td class="bg-success" contenteditable="false">20:00</td>
											
											<td class="bg-success" contenteditable="false">22:00</td>
										<td class="bg-success"> <button class="editbtn btn btn-primary">Update</button></td>
											<td class="bg-success">

												<button id="deleteUser" class="btn btn-danger"
													onclick="deleteRow(this)">
													<i class="glyphicon glyphicon-trash"></i>
												</button>
											</td>

										</tr>
										<tr class="table-active">
											
											<td class="bg-success">7878</td>
											<td class="bg-success">HOU->CHN</td>
											<td class="bg-success" contenteditable="false">23:00</td>
											
											<td class="bg-success" contenteditable="false">23:00</td>
										<td class="bg-success"> <button class="editbtn btn btn-primary">Update</button></td>
											<td class="bg-success">

												<button id="deleteUser" class="btn btn-danger"
													onclick="deleteRow(this)">
													<i class="glyphicon glyphicon-trash"></i>
												</button>
											</td>

										</tr>
										

								</tbody>
							</table>
								<!-- <form role="form" action="adminHome.jsp" method="post">

								<input type="submit" value="OK"
								 class="btn  btn-primary">
								</form>  -->

								
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>



</body>
</html>