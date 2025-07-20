<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <title>Password Page</title>
    <link rel="stylesheet" href="assets/css/login.css">
   
</head>
<body>

     <%
          String Usermail=(String)session.getAttribute("Usermail");
     %>     
    <div class="container">
        <h2>Create New Password</h2>
        <h3 id="Message" class="text-center"></h3>
        <form action="submitPassword?Usermail=<%=Usermail %>" method="POST">
            <div class="form-group">
                <label for="email">Password</label>
                <input type="password" id="Password" name="password" required>
            </div>
            <div class="form-group">
                <label for="password"> Confirm Password</label>
                <input type="password" id="ConfirmPassword" name="confirmpassword" required onkeyup="passConfirm()">
            </div>
            <button type="submit" class="btn">Submit</button>
        </form>
       
    </div>
    
    <script>
        var passConfirm = function() {
            const password = document.getElementById("Password").value;
            const confirmPassword = document.getElementById("ConfirmPassword").value;
            const message = document.getElementById("Message");

            if (password === confirmPassword) {
                message.style.color = "green";
                message.textContent = "Passwords match!";
            } else {
                message.style.color = "red";
                message.textContent = "Passwords do NOT match!";
            }
        };
    </script>
</body>
</html>
