<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cart Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/cart.css">
</head>
<body>
<%
    String userid = (String) session.getAttribute("Userid1");
    double finalPrice = 0.00;
%>
    <div><%@ include file="navbar.jsp" %></div>
    <div class="container">
        <h1 class="cart-title">Cart</h1>
        <table class="cart-table">
            <thead>
                <tr>
                    <th>Product</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>
            </thead>
            <tbody>
              <%
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamewebsite", "root", "");
                    
                    String sql = "select id, cid, cfd, cdb from cart where UserId = ?";
                    PreparedStatement pst = con.prepareStatement(sql);
                    pst.setString(1, userid);
                    ResultSet rs = pst.executeQuery();

                    while (rs.next()) {
                        String cid = rs.getString("cid");
                        String cfd = rs.getString("cfd");
                        String cdb = rs.getString("cdb");

                        String sql1 = "select name, price, file from " + cdb + " where id = ?";
                        PreparedStatement pst1 = con.prepareStatement(sql1);
                        pst1.setString(1, cid);
                        ResultSet rs1 = pst1.executeQuery();

                        while (rs1.next()) {
                            String name = rs1.getString("name");
                            String price = rs1.getString("price");
                            String file = rs1.getString("file");
                            double priceValue = Double.parseDouble(price);
                            finalPrice += priceValue;
              %>
                <tr>
                    <td class="product-info">
                        <img src="${pageContext.request.contextPath}/assets/<%= cfd %>/<%= file %>" alt="Product Image" class="product-img">
                        <span><%= name %></span>
                    </td>
                    <td>&#8377;<%= String.format("%.2f", priceValue) %></td>
                    <td>
                        <div class="quantity">
                            <button>-</button>
                            <input type="number" value="1" min="1">
                            <button>+</button>
                        </div>
                    </td>
                    <td>&#8377;<%= String.format("%.2f", priceValue) %></td>
                </tr>
              <%
                        }
                        rs1.close();
                        pst1.close();
                    }
                    rs.close();
                    pst.close();
                    con.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
              %>
            </tbody>
        </table>

        <a href="HomePage?userid=<%= userid %>">
            <button class="back-to-shop">← Back To Shop</button>
        </a>

        <div class="cart-summary">
            <div class="coupon-section">
                <h3>Coupon Discount</h3>
                <input type="text" placeholder="Coupon code">
                <button>Apply coupon</button>
            </div>
            <div class="summary-box">
                <div class="subtotal">
                    <span>Subtotal</span> <span>&#8377;<%= String.format("%.2f", finalPrice) %></span>
                </div>
                <div class="shipping">
                    <p>Shipping</p>
                    <ul>
                        <li>Free Shipping</li>
                        <li>Free Surface Shipping: 3 to 7 days</li>
                        <li>Shipping options will be updated during checkout.</li>
                    </ul>
                </div>
                <div class="total">
                    <span>Total</span> <span>&#8377;<%= String.format("%.2f", finalPrice) %></span>
                </div>
                <button class="checkout-btn">Proceed to checkout</button>
            </div>
        </div>
    </div>
    <div><%@ include file="footer.jsp" %></div>
</body>
</html>
