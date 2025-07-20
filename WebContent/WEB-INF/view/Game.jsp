<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*"%>
    <%@ page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gaming Titles Store</title>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/game.css">
</head>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<body>
<%
    String msg = request.getParameter("msg");
    if (msg != null) {
        msg = URLDecoder.decode(msg, "UTF-8"); 
    }
%>
<script>
    <% if (msg != null) { %>
        Swal.fire({
            title: "Success!",
            text: "<%= msg %>",
            icon: "success",
            confirmButtonText: "OK"
        });
    <% } %>
</script>
    <div><%@ include file="navbar.jsp" %></div>
 <% 
    String db = (String) request.getAttribute("accessoriesdb"); 
 String fd = (String) request.getAttribute("accessoriesfd"); 
 String pg= (String)request.getAttribute("Page");
 String userid=(String)request.getAttribute("UserID");
%>
    <section class="product-container">
        <!-- Product 1 -->
        <%
                            String GameImage = "";
                             String GameName="";
                             String GamePrice="";
                             String id="";
                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/gamewebsite", "root", "");
                                String sql = "select * from "+db;
                                PreparedStatement pst = con.prepareStatement(sql);
                                ResultSet rs = pst.executeQuery();
                                boolean isFirst = true;
                            
                       
                       
                                while (rs.next()) {
                                	id=rs.getString("id");
                                	GameImage = rs.getString("file");
                                	GameName=rs.getString("name");
                                	GamePrice=rs.getString("price");
                                	double d=Double.parseDouble(GamePrice)*0.05;
                                	int f=(int)(Double.parseDouble(GamePrice)-d);
                                	
                                	
                                	%>
                                
        	      <div class="product-card">
 
        <img src="${pageContext.request.contextPath}/assets/<%=fd %>/<%=GameImage %>" alt="Image">
        <h2><%=GameName %></h2>
        <p class="price">&#8377;<%= f %>.00<span class="old-price">&#8377;<%=GamePrice %></span></p>
  
    <div class="product-actions">
           <a href="Product-page?id=<%=id %>&fd=<%=fd%>&db=<%=db%>&userid=<%=userid%>"><button class="buy-button" >Buy Now</button>  </a>
       <a href="Cart-Page?cid=<%=id %>&cfd=<%=fd%>&cdb=<%=db%>&cpg=<%=pg%>&userid=<%=userid%>"><button class="cart-button">Add to Cart</button></a>
    </div>
</div>
 <%
                                }
                                rs.close();
                                pst.close();
                                con.close();
                            } catch (Exception ex) {
                                System.out.println(ex);
                            }
                        %>

       

                       
                       
    </section>
     <div><%@ include file="footer.jsp" %></div>
</body>
</html>
