<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
  <%@ page isELIgnored="false" %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
    <script src="js/jquery.js"></script>
    <script src="js/proper.js"></script>
	<script src="js/bootstrap.js"></script>
	 	
	<title>SignIn</title>
</head>

<body>
	<div class="container-fluid" style="height: 1500px">
		<div class="row" >
			<div class="header">
				<img src="Images/logo.PNG" style="width:12%;margin-left: 2%">
 				<font style="font-family: Good Times; font-size: 230%"><span style="color: white;margin-left: 2%;marg">Automated Barcode Solutions</span></font>
 
 					<div class="navbar">
						<div class="dropdown">
  							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Employee Management</a></button>
  							<div class="dropdown-content">
    							<a href="#">Add Employee</a>
							    <a href="#">Remove Employee</a>
							    <a href="#">Employee Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#">Payroll System</a>
							    <a href="#">Time and Attendance System</a>
							    <a href="#">Leaving System</a>
  							</div> 
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Client Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
 							</div>
 						</div>
					 	<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Sales Management</a></button>
 							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Order Management</a></button>
						  	<div class="dropdown-content">
							    <a href="ClientOrder">ClientOrder</a>
							    <a href="#">SupplierOrder</a>
							    
						       	<a href="EditSupplierOrder">Edit Supplier Order</a>
						       	<a href="ViewClientOrder">View Client Orders</a>
						       	<div class="dropdown-divider"></div>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Inventory Management</a></button>
							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
							    <div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
							</div>
						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Payment Management</a></button>
						  	<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
						      	<div class="dropdown-divider"></div>
						       	<a href="#"> a System</a>
						       	<a href="#"> b System</a>
						       	<a href="#"> c System</a>
						  	</div>
						</div>
						<div class="dropdown">
  				 			<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Fault Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Visitor Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add Client</a>
							    <a href="#">Remove Client</a>
							    <a href="#">Client Profile</a>
      							<div class="dropdown-divider"></div>
							    <a href="#"> a System</a>
							    <a href="#"> b System</a>
							    <a href="#"> c System</a>
  							</div>
  						</div>
				</div>
			</div>
		</div>
		
		<div class="row mx-auto">
			<div class="col-md-12">
								<h2 align="center" style="margin-top: 2%">Add Supplier</h2>
			
				<form:form method="POST" modelAttribute="supplier" class="form-horizontal" action="editsuppliersubmit">
  				<div class="form-group row" style="margin-left: 30%;margin-top: 12%">
    				<label class="control-label col-sm-2" for="name">Supplier Name</label>
    					<div class="col-sm-4">
      						<input type="text" value="${supplier.name}" name="name" class="form-control" id="name" placeholder="Enter Supplier Name" >
    					</div>
 	 			</div>
  				  				<input type="hidden" name="id" value="${supplier.id}">
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="pwd">Supplier Location</label>
    					<div class="col-sm-4"> 
      						<input type="text" value="${supplier.location}" name="location" class="form-control" id="location" placeholder="Enter location">
    					</div>
  				</div>
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="pwd">Item</label>
    					<div class="col-sm-4"> 
      						<input type="text" value="${supplier.item}" name="item" class="form-control" id="item" placeholder="Enter Item">
    					</div>
  				</div>
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="regDate">Date</label>
    					<div class="col-sm-4"> 
      						<input type="date" value="${supplier.regDate}" name="regDate" class="form-control" id="regDate" placeholder="Enter date">
    					</div>
  				</div>
  				
  				
	 			<div class="form-group" style="margin-left: 42%;margin-top: 5%"> 
    				<div class="col-sm-offset-2 col-sm-10">
      					<button type="submit" class="btn btn-primary" id="submit">Submit</button><br><br>
      					<button type="reset" class="btn btn-primary">Reset</button>
    				</div>
    				
 	 			</div>
				</form:form>
			</div>
  		</div>
	</div>
	<script>
	
  </script>
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright � 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved </a></div>
  </footer>
</body>
<script>

</script>
</html>