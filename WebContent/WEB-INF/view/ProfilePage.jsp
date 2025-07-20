<%@page import="com.spring.UserModel"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile Page</title>
<style>
    /* Add your CSS styles here for better presentation */
    .profile-container {
        max-width: 600px;
        margin: 20px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 10px;
    }
    .profile-header {
        text-align: center;
    }
    .form-group {
        margin-bottom: 15px;
    }
    .form-group label {
        display: block;
        margin-bottom: 5px;
    }
    .form-group input, .form-group textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    .btn-container {
        display: flex;
        justify-content: space-between;
    }
    .btn {
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #007BFF;
        color: white;
        text-decoration: none;
        cursor: pointer;
    }
    .btn.cart-btn {
        background-color: #28a745;
    }
    .btn:hover {
        opacity: 0.9;
    }
</style>
</head>
<body>
     <%
     UserModel um = (UserModel) session.getAttribute("userdata");
     %>
    <div class="profile-container">
        <div class="profile-header">
            <h2>User Profile</h2>
        </div>
        <form class="profile-form" action="saveProfile" method="POST">
            <div class="form-group">
                <label for="username">Name:</label>
                <input type="text" id="username" name="username" value="<%=um.getName() %>" readonly="readonly">
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" value="<%=um.getEmail()%>" readonly="readonly">
            </div>
            <div class="form-group">
                <label for="phone">Phone:</label>
                <input type="tel" id="phone" name="phone" placeholder="Enter your phone number"  >
            </div>
            <div class="form-group">
                <label for="address">Address:</label>
                <textarea id="address" name="address" rows="4" placeholder="Enter your address"></textarea>
            </div>
            <div class="btn-container">
                <button type="submit" class="btn">Save</button>
                <a href="cart?userid=<%=um.getId() %>" class="btn cart-btn">Cart</a>
            </div>
        </form>
    </div>
</body>
</html>
