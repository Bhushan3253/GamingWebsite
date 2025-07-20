<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
      <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
   
    <title>Register Page</title>
    <link rel="stylesheet" href="assets/css/register.css">
</head>
<body>
      <c:set var="sesereg" value="${sesereg}"></c:set>
	<c:choose>
		<c:when test="${sesereg=='failed' }">
		<script type="text/javascript">
		swal("Sorry!", "Email Already Exist!", "error");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="sesereg" scope="session"/>
	 <c:set var="sesereg1" value="${sesereg1}"></c:set>
	<c:choose>
		<c:when test="${sesereg1=='failed' }">
		<script type="text/javascript">
		swal("Sorry!", "Create an Account !!!", "error");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="sesereg1" scope="session"/>
    <div class="container">
        <h2>Register</h2>
        <form action="SignUpForm" method="POST">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Register</button>
        </form>
        <div class="link">
            <p>Already have an account? <a href="signin">Login</a></p>
        </div>
    </div>
</body>
</html>
