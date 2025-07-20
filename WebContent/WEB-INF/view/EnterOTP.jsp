<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
         <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter OTP</title>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f1f1f1;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 400px;
        margin: 100px auto;
        background-color: #fff;
        padding: 20px;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        margin-bottom: 20px;
    }
    input[type="text"], input[type="submit"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }
    .btn{
        background-color: #4CAF50;
        color: white;
        border: none;
        cursor: pointer;
    }
    .btn:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
	<c:set var="otp" value="${otp}"></c:set>
	<c:choose>
		<c:when test="${otp=='success' }">
		<script type="text/javascript">
		swal("Success!", "OTP has been sent successfully to your email.", "success");
		</script>
		</c:when>
	</c:choose> 
	<c:remove var="otp" scope="session"/>
	
	
    <div class="container">
        <h2>Enter OTP</h2>
        <form action="CheckOTP" method="post" >
            <label for="otp">Enter OTP:</label>
            <input type="text" id="otp" name="otp" required>

            <button class="btn" type="submit">submit</button>
        </form>
    </div>
</body>
</html>