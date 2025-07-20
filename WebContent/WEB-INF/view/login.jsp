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

    <title>Login Page</title>
    <link rel="stylesheet" href="assets/css/login.css">
   <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
      <c:set var="sespass" value="${sespass}"></c:set>

<c:choose>
		<c:when test="${sespass=='success' }">
		<script type="text/javascript">
		swal("Good Job!", "Password Updated Successfull!", "success");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="sespass" scope="session"/>
      <c:set var="sesereg" value="${sesereg}"></c:set>

<c:choose>
		<c:when test="${sesreg=='success' }">
		<script type="text/javascript">
		swal("Good Job!", "Registration Successfull!", "success");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="sesreg" scope="session"/>
	 <c:set var="sesereg1" value="${sesereg1}"></c:set>

<c:choose>
		<c:when test="${sesreg1=='failed' }">
		<script type="text/javascript">
		swal("Sorry!", "Create an Account !!!", "error");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="sesreg1" scope="session"/>
	      <c:set var="seslog1" value="${seslog1}"></c:set>
	
	<c:choose>
		<c:when test="${seslog1=='failed' }">
		<script type="text/javascript">
		swal("Sorry!", "Check Password!!!!", "error");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="seslog1" scope="session"/>
    <div class="container">
        <h2>Login</h2>
        <form action="submitForm" method="POST">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit" class="btn">Login</button>
        </form>
        <div class="link">
             <a href="forgetpass">Forget Password</a>
            <p>Don't have an account? <a href="signup">Register</a></p>
        </div>
    </div>
</body>
</html>
