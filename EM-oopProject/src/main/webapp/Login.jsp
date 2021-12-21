<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Login</title>

	<!-- Styles -->
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" >
</head>
<body>
<br>
        <div class="row">

            <div class="col-lg-12">
            <h1 class="text-center">Login</h1>
            </div>
        </div>
<br>

<div class="row">
<div class="col-lg-4 col-0">

</div>
    <div class="col-lg-4 col-12">
        <div class="border ml-3 mr-3 bg-light shadow">
        
        <!-- Login form -->
            <form class="mt-3 ml-3 mr-3 mb-3" action="login" method="post">
                <div class="form-group">
                    <label>User Name</label>
                    <input type="name" class="form-control" name="cusname" placeholder="Enter Login ID">
                </div>
                <div class="form-group">
                    <label >Password</label>
                    <input type="password" class="form-control mb-2" name="password" placeholder="Enter password">
                    <a href="#" ><p>Forget Password</p></a>
                    <br>
                </div>
                <div class="text-center">
                    <button type="submit" class="btn btn-success btn-lg btn-block text-center mb-5">Login</button>
                    <button type="submit" class="btn btn-success btn-lg btn-block text-center mb-5"><a href="CusInsertForm.jsp">New User</a></button>
                </div>      
            </form><!-- End of the login form -->
        </div>
    </div>
    <div class="col-lg-2 col-0">
    </div>   
</div>


<br>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
</body>
</html>