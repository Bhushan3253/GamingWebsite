<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <title>Game Project</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/television.css">
    </head>
<body>
    <!--banner section-->
    <div><%@ include file="navbar.jsp" %></div>
   <div><%@ include file="banner.jsp" %></div>

    <section class="comfort-series">
        <h1>Comfort Series</h1>
        <div class="product-container">
            <div class="product-card">
                <img src="${pageContext.request.contextPath}/assets/Images/tv1.PNG" alt="TV 1">
                <h2>PicXL by Hgworld | Comfort Series</h2>
                <p>80cm (32 inch) | Full HD | WebOS Smart LED TV | Eye Care Technology | Free Doorstep Installation | 3 Year Doorstep Warranty</p>
                <span class="price">₹10,490.00</span>
                <span class="old-price">₹20,800.00</span>
            </div>
            <div class="product-card">
                <img src="${pageContext.request.contextPath}/assets/Images/tv2.PNG" alt="TV 2">
                <h2>PicXL by Hgworld | Comfort Series</h2>
                <p>215cm (85 inch) | Ultra HD (4K) | WebOS Smart LED TV | Voice Search | HDR10</p>
                <span class="price">₹119,990.00</span>
                <span class="old-price">₹223,990.00</span>
            </div>
            <div class="product-card">
                <img src="${pageContext.request.contextPath}/assets/Images/tv3.PNG" alt="TV 3">
                <h2>PicXL by Hgworld | Comfort Series</h2>
                <p>190cm (75 inch) | Ultra HD (4K) | Smart LED TV | Dolby Vision | AI Magic Remote</p>
                <span class="price">₹64,990.00</span>
                <span class="old-price">₹125,000.00</span>
            </div>
            <div class="product-card">
                <img src="${pageContext.request.contextPath}/assets/Images/tv4.PNG" alt="TV 4">
                <h2>PicXL by Hgworld | Comfort Series</h2>
                <p>108cm (43 inch) | Ultra HD (4K) | Smart LED TV | HDR10 | Dolby Vision</p>
                <span class="price">₹18,490.00</span>
                <span class="old-price">₹36,800.00</span>
            </div>
            <div class="product-card">
                <img src="${pageContext.request.contextPath}/assets/Images/tv5.PNG" alt="TV 5">
                <h2>PicXL by Hgworld | Comfort Series</h2>
                <p>126cm (50 inch) | Ultra HD (4K) | WebOS Smart LED TV | HDR10 | Dolby Vision</p>
                <span class="price">₹23,990.00</span>
                <span class="old-price">₹44,000.00</span><div class="product-card">
            </div>
            
            </div>
        </div>
    </section>


    <section class="television">
        <div class="television-container">
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television1.PNG" alt="membership code">
            </div>
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television2.PNG" >
            </div>
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television3.PNG" >
            </div>
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television4.PNG">
            </div>
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television7.PNG">
            </div>
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television5.PNG">
            </div>
            <div class="television-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/television6.PNG">
            </div>
        </div>
    </section>
    <div><%@ include file="footer.jsp" %></div>

</body>
</html>