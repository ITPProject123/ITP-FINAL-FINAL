<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">

<script src="js/jquery.js"></script>
<script src="js/proper.js"></script>
<script src="js/bootstrap.js"></script>
<style>
table {
    border-collapse: collapse;
   
}

th {
    background-color: #0171a1;
    color: white;
}


th, td {
    text-align: center;
    padding: 8px;
}



tr:nth-child(odd) {background-color: #9fc1cf;}
tr:hover {background-color:#2bb2cf;}
</style>

<title>View Client Order</title>
</head>

<body>
	<div class="container-fluid" style="height: 1200px">
		<div class="row">
			<div class="header">
				<img src="Images/logo.png" style="width: 12%; margin-left: 2%">
				<font style="font-family: Good Times; font-size: 230%"><span
					style="color: white; margin-left: 2%;">Automated Barcode
						Solutions</span></font>

				<div class="navbar">
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Employee
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Employee</a> <a href="#">Remove Employee</a> <a
								href="#">Employee Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#">Payroll System</a> <a href="#">Time and
								Attendance System</a> <a href="#">Leaving System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Client
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>

							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Sales
								Management</a>
						</button>
						<div class="dropdown-content">
							    <a href="salesdashbord">Sales Dash Board</a>
							    <a href="viewclientorders">Today Orders</a>
							    <a href="viewclientorders2">Orders For Range</a>
							    <a href="viewsalesdetails">Sales Details</a>
							    <a href="viewinstallationcertificate">Installation Certificates</a>
  							</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Order
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Inventory
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Payment
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Fault
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn dropdown-toggle">
							<a href="#" style="color: black; text-decoration: none;">Visitor
								Management</a>
						</button>
						<div class="dropdown-content">
							<a href="#">Add Client</a> <a href="#">Remove Client</a> <a
								href="#">Client Profile</a>
							<div class="dropdown-divider"></div>
							<a href="#"> a System</a> <a href="#"> b System</a> <a href="#">
								c System</a>
						</div>
					</div>
				</div>
			</div>
		</div>
<br>
<div class="row"  align="right">
						<div  class="col text-center">
							<div  align="right" style="width:40%;margin-left: 60%;">
								<input 
								type="button" value="Check order for a range"
									class="btn btn-primary btn-sm" onclick="window.location.href='/viewclientorders2'" >
									
							</div>
						</div>
					</div>
					
					<br>
					<div class="row"  align="right">
						<div  class="col text-center">
							<div  align="right" style="width:40%;margin-left: 60%;">
								<input 
								type="button" value="Sales Details"
									class="btn btn-primary btn-sm" onclick="window.location.href='/viewsalesdetails'" >
									
							</div>
						</div>
					</div>
		 

		<br>

		<h1 align="center">Orders For Today</h1>
		<br>
		<form:form>
			<div class="table-responsive">


				<table id="icTable01" border="0px" align="center">
					<tr align="center">
						<th>Order ID</th>
						<th>Client ID</th>
						<th>Expected Date</th>
						<th>Location</th>
						<th>Payment Type</th>
						<th>Description</th>
						<th>Delivery Type</th>
						<th>Assign Technician</th>
						<th>Assign Driver</th>
					</tr>

					<c:forEach var="clientorder" items="${list}">
						<tr align="center">
							<td>COI${clientorder.clienOrdID}</td>
							<td>CLI${clientorder.custID}</td>
							<td>${clientorder.expectedDate}</td>
							<td>${clientorder.delLocation}</td>
							<td>${clientorder.paymentType}</td>
							<td>${clientorder.descrip}</td>
							<td>${clientorder.delType}</td>
				<!-- Assign technician -->
							<td><a href="/viewandassigntechnicians/${clientorder.clienOrdID}">Technician</a></td>
							
							
				<!-- Assign Driver -->
							<td><a href="/viewandassigndrivers/${clientorder.clienOrdID}">Driver</a></td>

						</tr>
					</c:forEach>

				</table>
				



		</form:form>
		
		<br><br>
		
		

				
			</div>
			
								
				

	</div>


	<footer class="page-footer" style="background-color: #5c5d60;">
		<div class="footer-copyright text-center py-3">
			Copyright � 2018 Automated Barcode Solutions (Pvt) Ltd . All rights
			reserved </a>
		</div>
	</footer>

</body>
</html>