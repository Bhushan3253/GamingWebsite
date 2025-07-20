<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
  <%@page import="java.sql.*"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
      <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Product Card/Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <link href="https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/PageProduct.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
   </head>

  <body>
      <%
    String msg = request.getParameter("msg");
    
    %>
<script type="text/javascript">
alert(""+msg);
</script>
    <div><%@ include file="navbar.jsp" %></div>
    <div class = "card-wrapper">
 <% 
    String id = (String) request.getAttribute("gameId"); 
    String fd = (String) request.getAttribute("folder"); 
    String db = (String) request.getAttribute("table"); 
    String userid = (String) request.getAttribute("UserID"); 

%>
      <div class = "card">
        <!-- card left -->
        <div class = "product-imgs">
          <div class = "img-display">
            <div class = "img-showcase">
            
              <%
                            String GameImage = "";
                             String GameName="";
                             String GamePrice="";
                             int f=0;
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamewebsite", "root", "");
                                String sql = "select file,name,price from "+db+" where id= '"+id+"'";
                                PreparedStatement pst = con.prepareStatement(sql);
                                ResultSet rs = pst.executeQuery();
                              
                            
                       
                       
                                while (rs.next()) {
                                	
                                	GameImage = rs.getString("file");
                                	GameName=rs.getString("name");
                                	GamePrice=rs.getString("price");
                                	double d=Double.parseDouble(GamePrice)*0.05;
                                	 f=(int)(Double.parseDouble(GamePrice)-d);
                                }
                            }catch(Exception e)
                            {
                            	System.out.println(e);
                            }
                                	%>
              <img src = "${pageContext.request.contextPath}/assets/<%=fd %>/<%=GameImage %>" alt = "game image" style="width: 500px; height: 600px;" >
             <!-- <img src = "${pageContext.request.contextPath}/assets/GTA/Grand Theft Auto San Andreas1.jpg" alt = "game image">
              <img src = "${pageContext.request.contextPath}/assets/GTA/Grand Theft Auto San Andreas2.jpg" alt = "game image">
              <img src = "${pageContext.request.contextPath}/assets/GTA/Grand Theft Auto San Andreas3.jpg" alt = "game image">-->
            </div>
          </div>
          <!--  <div class = "img-select">
            <div class = "img-item">
              <a href = "#" data-id = "1">
                <img src = "${pageContext.request.contextPath}/assets/GameImage/" alt = "game image">
              </a>
            </div>
          <div class = "img-item">
              <a href = "#" data-id = "2">
                <img src = "${pageContext.request.contextPath}/assets/GTA/Grand Theft Auto San Andreas1.jpg" alt = "game image">
              </a>
            </div>
            <div class = "img-item">
              <a href = "#" data-id = "3">
                <img src = "${pageContext.request.contextPath}/assets/GTA/Grand Theft Auto San Andreas2.jpg" alt = "game image">
              </a>
            </div>
            <div class = "img-item">
              <a href = "#" data-id = "4">
                <img src = "${pageContext.request.contextPath}/assets/GTA/Grand Theft Auto San Andreas3.jpg" alt = "game image">
              </a>
            </div>-->
          </div>
        </div>
        <!-- card right -->
        <div class = "product-content">
          <h2 class = "product-title"><%=GameName %></h2>
          <a href = "#" class = "product-link">visit Game store</a>
          <div class = "product-rating">
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star"></i>
            <i class = "fas fa-star-half-alt"></i>
            <span>4.7(21)</span>
          </div>

          <div class = "product-price">
            <p class = "last-price">Old Price: <span><i class="fa fa-rupee"></i><%=GamePrice %></span></p>
            <p class = "new-price">New Price: <span><i class="fa fa-rupee"></i><%=f %></span></p>
          </div>

          <div class = "product-detail">
            <h2>about this item: </h2>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illo eveniet veniam tempora fuga tenetur placeat sapiente architecto illum soluta consequuntur, aspernatur quidem at sequi ipsa!</p>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Consequatur, perferendis eius. Dignissimos, labore suscipit. Unde.</p>
            <ul>
              <li>Color: <span>Black</span></li>
              <li>Available: <span>in stock</span></li>
            
              <li>Shipping Area: <span>All over the world</span></li>
              <li>Shipping Fee: <span>Free</span></li>
            </ul>
          </div>

          <div class = "purchase-info">
           
           <a href="Cart-Page1?cid=<%=id %>&cfd=<%=fd%>&cdb=<%=db%>&cpg=Product-page&userid=<%=userid%>"> <button type = "button" class = "btn">
              Add to Cart <i class = "fas fa-shopping-cart"></i>
            </button></a>
            <button type = "button" class = "btn">Buy Now</button>
          </div>

          <div class = "social-links">
            <p>Share At: </p>
            <a href = "#">
              <i class = "fab fa-facebook-f"></i>
            </a>
            <a href = "#">
              <i class = "fab fa-twitter"></i>
            </a>
            <a href = "#">
              <i class = "fab fa-instagram"></i>
            </a>
            <a href = "#">
              <i class = "fab fa-whatsapp"></i>
            </a>
            <a href = "#">
              <i class = "fab fa-pinterest"></i>
            </a>
          </div>
        </div>
      </div>
    </div>

    <div><%@include file="footer.jsp" %></div>
    <script src="${pageContext.request.contextPath}/assets/script.js"></script>
  </body>
</html>