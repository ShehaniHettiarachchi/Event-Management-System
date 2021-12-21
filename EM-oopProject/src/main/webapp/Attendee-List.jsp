<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendee Management Page</title>
<!--styles-->
    <link rel="stylesheet" href="css/Attendee.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">


    <style>
        .logo{
            font-family:cursive;   
        }
        .text-center{
            font-family:Cambria, Cochin, Georgia, Times, 'Times New Roman', serif;
            
        }
    </style>
    
    <!--Background image-->
    <style>
    body {
      
        background-image: url('images/image7.png');
        background-repeat: no-repeat;
        background-position-x:100%;
        background-position-y: 360px;
        background-size: 40%;
      
        
      }
    </style>
</head>
<body>
<div class="row">
        <div class="col-4">
            <div class="wrapper">
                <div class="sidebar"> 
                    <div class="text-muted pl-3">
                        <h1 class="logo">Moments</h1>
                        <hr>
                    </div>
        
                    <!--Basic customer options-->
                    <ul>
                        <li><a href="#"><i class="fas fa-industry"></i> Dashboard</a></li>
                        <li><a href="#"><i class="fas fa-check"></i>  Online Event Page</a></li>
                        <li><a href="#"><i class="fas fa-check"></i>  Tickets</a></li>
                        <li><a href="#"><i class="fas fa-check"></i>  Publish</a></li>
                    </ul> 
                    
                    <!--Sub options-->
                    <small class="text-muted px-3">Attendee Management</small>
                    <ul>
                        <li><a href="Attendee.html"><i class="fas fa-user-plus"></i>Add Attendees</a></li>
                        
                       
                        	<li><i class="fas fa-users"></i> <form method="post" action="RetrieveAttendeesServlet"><input class="btn btn-dark" type="submit" value="Attendee List" > </form></li>
                       
                        <li><a href="AM.html"><i class="fas fa-list-ul"></i>Guest Lists</a></li>
                    </ul>
                    
                    <small class="text-muted px-3">Marketing</small>
                    <ul>
                        <li><a href="#"><i class="fas fa-balance-scale"></i> Paid Social Ads</a></li>
                        <li><a href="#"><i class="fas fa-external-link-alt"></i> Multi-Event Promo Codes</a></li>
                        <li><a href="#"><i class="fas fa-share-alt"></i> Tracking Links</a></li>
                    </ul> 
                
                </div>
            </div>
        </div><!--End of the side navBar-->

        <!--AM page content-->
        <div class="col-6">
            <div class="row">
                <div class="col-12">
                    <!--Title-->
                    <h1 class="text-center">Attendee List</h1>
                </div>
            </div>  
            <div class="row">
                <div class="col-12">
                    <h5 class="text-center">Add Attendees to your event without impacting ticket inventory or event capacity</h5>
                    <hr>
                </div>
            </div>
            
            <div class="row">
                <div class="col-12 text-center">
                    <button class="btn btn-success" type="submit"><a  href="InsertForm.jsp" class="text-decoration-none">Add Attendee</a></button>

                   
                    
                </div>
            </div>
            
            <br>
            <!--Table-->
            <div class="row">
                <div class="col-12">
                    <table class="table table-striped">
                       
                        <tr>
                            <th>Attendee ID</th>
                            <th>Attendee Name</th>
                            <th>E-mail</th>
                            <th>NIC</th>
                            <th>Mobile No</th>
                            <th>Affiliation</th>
                            <th>Checked In</th>
                        </tr>
            
            			 <c:forEach var="att" items="${AttDetails}"><!-- show attendee details -->
            			 
            			 	<!--declare variables for attendee update-->
            			 	<c:set var="attid" value="${att.attid}"/>
            			 	<c:set var="attname" value="${att.attname}"/>
            			 	<c:set var="email" value="${att.email}"/>
            			 	<c:set var="nic" value="${att.nic}"/>
            			 	<c:set var="mobile" value="${att.mobile}"/>
            			 	<c:set var="affillation" value="${att.affillation}"/>
            			 
	                        <tr>
	                            <td>${att.attid}</td>
	                            <td>${att.attname}</td>
	                            <td>${att.email}</td>
	                            <td>${att.nic}</td>
	                            <td>${att.mobile}</td>
	                            <td>${att.affillation}</td>
	                            
	                            <!--when press update button redirect to the updateAttendee form  with values -->
	                            <c:url value="UpdateAttendee.jsp" var="attupdate">
	                            	<c:param name="attid" value="${attid}"/>
	                            	<c:param name="attname" value="${attname}"/>
	                            	<c:param name="email" value="${email}"/>
	                            	<c:param name="nic" value="${nic}"/>
	                            	<c:param name="mobile" value="${mobile}"/>
	                            	<c:param name="affillation" value="${affillation}"/>
	                            </c:url>
	                            
	                            <!--when press delete button redirect to the DeleteAttendee page -->
	                            <c:url value="DeleteAttendee.jsp" var="attdelete">
	                            	<c:param name="attid" value="${attid}"/>
	                            	<c:param name="attname" value="${attname}"/>
	                            	<c:param name="email" value="${email}"/>
	                            	<c:param name="nic" value="${nic}"/>
	                            	<c:param name="mobile" value="${mobile}"/>
	                            	<c:param name="affillation" value="${affillation}"/>
	                            </c:url>
	                            <td>
	                                <a href="${attupdate}"> <button type="submit" class="btn btn-primary" name="update" >Update</button></a>
	                                <a href="${attdelete}"><button type="submit" class="btn btn-danger" name="delete">Delete</button></a>
	                            </td>
	                        </tr>
	                      </c:forEach>  
                    </table>
                </div>
            </div>
                    
                   
        </div><!--End of the page content-->
       

        
    </div>
   
    <!--Link JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>    
    
</body>
</html>