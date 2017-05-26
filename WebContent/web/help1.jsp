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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
<link href="../css/home.css" rel="stylesheet">
<SCRIPT>
function submitFunction(i) {
   if (i==1) document.theForm.action=
      "userHome.jsp";
   if (i==2) document.theForm.action=
      "help.jsp";
   
   document.theForm.submit()
   }
function display(){
	  var answer = confirm ("Your message has been sent successfully")
	if (answer)
		window.location="help.jsp";
	}
</SCRIPT>
<style type="text/css">
h3 {
	color: #286090 !important;
	font-style: italic;
}
</style>
</head>
<body>
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
					
				</form>
			</div>
		</div>
	</nav>
	<div id="page_content">
		<div class="container">
			<div class="row">
				<div class="col-md-6  col-xs-12">
					<h2 class="changeFont">FAQ'S</h2>
					<h3 class="changeFont">
						<strong>Baggage allowance Details?</strong>
					</h3>
					<h5 class="changeFont">Every passenger can carry a Check-in
						bag, a Cabin bag and backpack.</h5>
					<h3 class="changeFont">
						<strong>What other documents do I need to carry while
							checking in?</strong>
					</h3>
					<h5 class="changeFont">If you are flying out of your state we
						may need to look at your photo ID and that's all you need</h5>
					<h3 class="changeFont">
						<strong>Will I be able to choose my seat?</strong>
					</h3>
					<h5 class="changeFont">Choosing seat your prefer will be one
						of the steps while you book ticket. You can also change your seat
						position according to availability and at least week before your
						fly.</h5>
					<h3 class="changeFont">
						<strong>What kind of things can I bring with me?</strong>
					</h3>
					<h5 class="changeFont">Passengers are not allowed to Carry
						Things like Batteries, Cutting Instruments, Electronic cigarettes,
						Explosives, Hoverboards and any sharp items.</h5>

					<h3 class="changeFont">
						<strong>How can I know that I am done with reservation</strong>
					</h3>
					<h5 class="changeFont">Right after you pay for the ticket, you
						will be redirected showing conformation message there you can see
						your unique reservation number.</h5>
					<h3 class="changeFont">
						<strong>How can I pay for single way flight?</strong>
					</h3>
					<h5 class="changeFont">Process for booking single and return
						trip will be same you can make selection of type of trip in the
						first step of booking ticket.</h5>
					<h3 class="changeFont">
						<strong>When will be the money charged out of my card?
							Once I book flight ticket.</strong>
					</h3>
					<h5 class="changeFont">Once you book the ticket, money will be
						charged from you card immediately after conformation message with
						your booking conformation message generated.Even though some times
						payment may take more time.</h5>
					<h3 class="changeFont">
						<strong>What are the methods of payment?</strong>
					</h3>
					<h5 class="changeFont">You can book your ticket using any kind
						of debit or credit card Through online payment.</h5>

				</div>
				<div class="col-md-6  col-xs-12">


					<div class="row">
						<div class="col-md-12  col-xs-12">
							<div class="well well-sm">
								<form>
									<div class="row">
										<div class="col-md-6  col-xs-12">
											<div class="form-group">
												<label for="name"> Name</label> <input type="text"
													class="form-control" id="name" placeholder="Enter name"
													required="required" />
											</div>
											<div class="form-group">
												<label for="email"> Email Address</label>
												<div class="input-group">
													<span class="input-group-addon"><span
														class="glyphicon glyphicon-envelope"></span> </span> <input
														type="email" class="form-control" id="email"
														placeholder="Enter email" required="required" />
												</div>
											</div>
											<div class="form-group">
												<label for="subject"> Subject</label> <select id="subject"
													name="subject" class="form-control" required="required">
													<option value="na" selected="">Choose One:</option>
													<option value="service">General Customer Service</option>
													<option value="suggestions">Suggestions</option>
													<option value="product">Support</option>
												</select>
											</div>
										</div>
										<div class="col-md-6  col-xs-12">
											<div class="form-group">
												<label for="name"> Message</label>
												<textarea name="message" id="message" class="form-control"
													rows="9" cols="25" required="required"
													placeholder="Message"></textarea>
											</div>
										</div>
										<div class="col-md-12  col-xs-12">
											<button type="submit" class="btn btn-primary pull-right"
												id="btnContactUs" onclick="display();">Send Message</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
				<div class="row">
					<div class="col-md-6  col-xs-12">
						<div class="form-group">
							<form>
								<fieldset>
								<legend style="border-bottom:0">
									<span class="glyphicon glyphicon-globe"></span> Our office
								</legend>
							</fieldset>
								<address>
									<strong>Twitter, Inc.</strong><br> 795 Folsom Ave, Suite
									600<br> San Francisco, CA 94107<br> <abbr
										title="Phone"> P:</abbr> (123) 456-7890
								</address>
								<address>
									<strong>Full Name</strong><br> <a href="mailto:#">first.last@example.com</a>
								</address>
							</form>
						</div>
					</div>
					<div class="col-md-6  col-xs-12">
					
					</div>
			 </div>
				</div>
			</div>

		</div>
	</div>
	</div>

</body>
</html>
