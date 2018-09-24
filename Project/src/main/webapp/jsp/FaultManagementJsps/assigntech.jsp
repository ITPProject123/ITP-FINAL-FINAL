<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored = "false" %>  
<%@page import="java.sql.*"  %> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/glyphican.css">
	<link rel="stylesheet" href="/css/custom.css">
	<link rel="stylesheet" href="/css/jquery.datetimepicker.min.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/proper.js"></script>
	<script src="/js/bootstrap.js"></script>
	<script type="text/javascript" src="/js/bootstrapValidator.js"></script>
	<script src="/js/jquery.datetimepicker.full.js"></script>
	 	
	<title>Assign Technician</title>
	
</head>

<body>
	<div class="container-fluid" style="height: 900px">
		<div class="row" >
			<div class="header">
				<img src="/Images/logo.png" style="width:12%;margin-left: 2%">
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
  				 			<button class="dropbtn dropdown-toggle"><a href="/faultdash" style="color: black;text-decoration: none;">Fault Management</a></button>
  							<div class="dropdown-content">
							    <a href="/form">Add Fault</a>
							    <a href="/pendingurgent">Pending urgent jobs</a>
							    <a href="/finished">Finished Jobs</a>
      							<div class="dropdown-divider"></div>
							    <a href="/detail">Jobs List</a>
							    <a href="/todayj">Today's Jobs</a>
							    <a href="/monreport">Get Monthly Report</a>
  							</div>
  						</div>
						<div class="dropdown">
   							<button class="dropbtn dropdown-toggle"><a href="#" style="color: black;text-decoration: none;">Visitor Management</a></button>
  							<div class="dropdown-content">
							    <a href="#">Add appointment</a>
							    <a href="#">Remove appointment</a>
					
      							<div class="dropdown-divider"></div>
							    <a href="#"> Appointment Log</a>
							    <a href="#"> Event Log</a>
							
  							</div>
  						</div>
				</div>
			</div>
		</div>
		
	<br><br>
		 <h2 style="text-align: center;">Assign Technician</h2> <br>
		<div class="row md-auto">
			<div class="col-md-12">
				<form:form  method ="POST" modelAttribute="assFault" id="validatedForm" class="form-horizontal form-responsive" action = "/ass">
  				
    					
    					<div class="form-group row" style="margin-left: 30%;margin-top: 4%">
    				<label class="control-label col-sm-2" for="faultid">Job ID</label>
    					<div class="col-sm-4">
    					      						F${assFault.faultid} 
    					
      						<form:input type="hidden" path="faultid" class="form-control" id="faultid" name="faultid"/>
      						</div>
    					</div>
    					
 	 		
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="empid">Employee Name : </label>
    					<div class="col-sm-4"> 
      						<select style="width: 280px; height: 35px;padding: 8px" id="empid" path="empid" name="empid">
      						<option value=""></option>
      						
      						<%
      						
      							try{
      								
      								String sql = "select empID, firstName,lastName from employee where empID IN(select empOTId from other_emps where availability=1)";
      								Class.forName("com.mysql.jdbc.Driver").newInstance();
      								Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/automatedbarcode_database?useSSL=false", "root", "root");
      								Statement stm = con.createStatement();
      								ResultSet rs = stm.executeQuery(sql);
      								
      								while (rs.next()){
      									
      									%>
      									
      									<option value="<%= rs.getInt("empID")%>"> <%= rs.getString("firstName") %><%=rs.getString("lastName") %></option>
      									<%
      								}
      								
      							}
      						
      							catch(Exception e){
      								
      								e.printStackTrace();
      								out.println("Error : " + e.getMessage());
      							}
      						
      						%>
      						
      						</select>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="empid" class="help-inline"/></font>
      						</div>
    					</div>
  				</div>
  				
  				<div class="form-group row"  style="margin-left: 30%;margin-top: 2%">
    				<label class="control-label col-sm-2" for="assDate">Assigned Date  : </label>
    					<div class="col-sm-4"> 
      						<form:input type="date" path="assDate" class="form-control" id="assDate" name="assDate"/>
      						<div class = "has-error">
      						<font color="red">
      						<form:errors path="assDate" class="help-inline"/></font>
    					</div>
  				</div></div>
  				
 	 			<br><br><br><br>
  				
	 			<div class="form-group" style="margin-left: 28%;margin-top: 2%"> 
    				<div class="col-sm-offset-2 col-sm-10">
    				<div class="form-actions">
      					<button type="submit" value = "assign" class="btn btn-primary" style="padding: 6px">Assign</button>
      					<button type="reset" value="reset" class="btn btn-warning">Reset</button>
      					<!--  <button type="submit" value="notify" class="btn btn-primary" style="padding: 6px">Notify Technician</button>-->
    				</div>
    				</div>
 	 			</div>
				</form:form>
			</div>
  		</div>
  		</div>
  		<script type="text/javascript">
  		
  		$(function(){
  		    var dtToday = new Date();
  		    
  		    var month = dtToday.getMonth() + 1;
  		    var day = dtToday.getDate();
  		    var year = dtToday.getFullYear();
  		    if(month < 10)
  		        month = '0' + month.toString();
  		    if(day < 10)
  		        day = '0' + day.toString();
  		    
  		    var minDate = year + '-' + month + '-' + day;
  		    //alert(maxDate);
  		    $('#assDate').attr('min', minDate);
  		});
	 
	   			$(document).ready(function() {
				$('#validatedForm').bootstrapValidator({
					feedbackIcons: {
						valid: 'glyphicon glyphicon-ok',
						invalid: 'glyphicon glyphicon-remove',
						validating: 'glyphicon glyphicon-refresh'
					},
					fields: {
						
						
						
						empid: {
							validators: {
								notEmpty: {
									message: 'Enter Employee name'
								}
							}
						},
			
						assDate: {
							validators: {
								notEmpty: {
									message: 'Select a Valid Date'
								}
							}
						},
			
					
						}
					});
				});
	   			
			</script>
  		
	
  		
  
  <footer class="page-footer" style="background-color:#5c5d60;">
	<div class="footer-copyright text-center py-3">Copyright � 2018  Automated Barcode Solutions (Pvt) Ltd . All rights reserved</div>
  </footer>
</body>
</html>