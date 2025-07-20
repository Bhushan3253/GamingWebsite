     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">

    <title>Game Project</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css">
         <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index1.css">
     
       <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

<body>
   
<c:set var="seslog" value="${sessionScope.seslog}" />
<c:choose>
    <c:when test="${seslog == 'success'}">
        <script type="text/javascript">
            Swal.fire({
                title: "Good Job!",
                text: "Login Success!!!!",
                icon: "success"
            });
        </script>
    </c:when>
</c:choose>

<!-- Remove the session attribute to prevent multiple alerts -->
<c:remove var="seslog" scope="session" />
<%
String userid=(String)session.getAttribute("userid");


%>
  <div id="page" >
        <div class="header-main">
                <div class="header-space">
                    <div class="header-row">
                        <div class="header-logo ">
                                <div class="logo">
                                    <a href="HomePage?Userid=<%=userid%>">
                                        <img class="site-logo" alt="HGworld | Happy Gaming World" src="assets/Images/logo.png" style="height: 100px;">
       </a>
                                </div>
                        </div>
                         <!-- Dropdown -->
      <div class="dropdown">
        <button class="dropbtn">All</button>
        <div class="dropdown-content">
          <a href="#">PlayStation</a>
          <a href="#">Xbox</a>
          <a href="#">PC </a>
        </div>
      </div>
                        <div class="search-container">
                            <input type="text" class="form-search" placeholder="Search for something..." aria-label="Search">
                        </div>
                        <div class="button-container">
                            <button class="btn btn-secondary" type="button">Search</button>
                        </div>
                    
                    <div class="cart">
                        <a href="cart?userid=<%=userid%>" ><i class='bx bxs-cart' ></i></a>
                    </div>
                    
                     <!-- Account -->
     
        <div class="dropdown">
          <a href="#" class="acc"><i class="bx bxs-user"></i></a>
          <div class="dropdown-content">
            <a href="profilepage?userid=<%=userid%>"><i class="fa-solid fa-user"></i> Profile</a>
            <a href="#">  <i class="fa-solid fa-gear"></i> Settings</a>
            <a href="index.jsp"><i class="fa-solid fa-right-from-bracket"></i>   Logout</a>
          </div>
        </div>
                     </div>
                </div>
                    </div>
           <!--banner section-->
           <section>
            <div class="banner">
                <div class="slider">
                    <img src="${pageContext.request.contextPath}/assets/Images/banner.png" alt="banner">
                    <img src="${pageContext.request.contextPath}/assets/Images/banner2.png" alt="banner">
                    <img src="${pageContext.request.contextPath}/assets/Images/banner3.png" alt="banner">
                    <img src="${pageContext.request.contextPath}/assets/Images/banner4.jpg" alt="banner">
                </div>
            </div>
            </section>
        <!-- Header Section -->
 <div class="container">
    <header>
        <div class="support-info">
            <div class="info-box">
                <img src="${pageContext.request.contextPath}/assets/Images/info1.PNG">
                <h3>Best After Sales Support</h3>
                <p>We believe in exemplary customer service</p>
            </div>
            <div class="info-box">
                <img src="${pageContext.request.contextPath}/assets/Images/info2.PNG">

                <h3>Price Smash</h3>
                <p>Seen it cheaper somewhere? we will smash it.</p>
            </div>
            <div class="info-box">
                <img src="${pageContext.request.contextPath}/assets/Images/info3.PNG">

                <h3>100% Original & Trusted</h3>
                <p>We sell are 100% Original & we abide by our Promise.</p>
            </div>
        </div>
    </header>

    <!-- Top Categories Section -->
    <section class="top-categories">
        <h2>Top Categories</h2>
        <div class="category-container">
            <div class="category-item"><a href="gaming-console-page">
                <img src="${pageContext.request.contextPath}/assets/Images/gamingconsole.PNG"  alt="Gaming Consoles"></a>
                <h4>Gaming Consoles</h4>
                <p>PlayStation, XBOX, Nintendo</p>
            </div>
            <div class="category-item">
                <a href="gamepage?db=gamedata&fd=GameImage&userid=<%=userid%>"><img src="${pageContext.request.contextPath}/assets/Images/games (5).PNG" alt="Games"></a>
                <h4>Games</h4>
                <p>PlayStation, XBOX, Nintendo</p>
            </div>
            <div class="category-item">
               <a href="gameaccessories?db=accessories&fd=accessories&userid=<%=userid%>"> <img src="${pageContext.request.contextPath}/assets/Images/assesories.PNG" alt="Gaming Accessories"></a>
                <h4>Gaming Accessories</h4>
                <p>Controllers, Cables, HDD & More</p>
            </div>
            <div class="category-item">
                <a href="television-page"><img src="${pageContext.request.contextPath}/assets/Images/television.png" alt="Television"></a>
               <h4>Television</h4>
                <p>Smart & 4K TV</p>
            </div>
        </div>
    </section>

    <!-- Gaming Titles Section -->
    <section class="gaming-titles">
        <h2>Gaming Titles</h2>
        <div class="gaming-container">
            <div class="gaming-item ">
                
                <img src="${pageContext.request.contextPath}/assets/Images/ps5.jpg" alt="PS5 Games">
                <h3>PS5</h3>
                <p>God Of War: Ragnarok, Horizon Forbidden West, Ratchet and Clank: Rift Apart.</p>
            </div>
            <div class="gaming-item ">
                
                <img src="${pageContext.request.contextPath}/assets/Images/ps4.jpg" alt="PS4 Games">
                <h3>PS4</h3>
                <p>Spiderman, God of War, GTA 5</p>
            </div>
            <div class="gaming-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/xbox.jpg" alt="Xbox Games">
                <h3>Xbox One</h3>
                <p>GTA 5, Kinect Sports Rival, Far Cry Primal</p>
            </div>
            <div class="gaming-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/gta5.webp" alt="Nintendo Switch Games">
                <h3>Nintendo Switch</h3>
                <p>Mario Kart, Pokemon Bouclier, Minecraft</p>
            </div>
        </div>
    </section>

    <!--membership-->
    <section class="membership">
        <h2>Membership Subscription Code</h2>
        <div class="membership-container">
            <div class="menbership-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/membership.PNG" alt="membership code">
            </div>
        </div>
    </section>


    <!--playstation-->
    <section class="playstation">
        <h2>Playstation</h2>
        <div class="playstation-container">
            <div class="playstation-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/playstation1.png" alt="PS5 Games">
                    <div class="playstation-list">
                        <a href="ps5console.html" >Consoles</a>
                    </div>
                    <div class="playstation-list">
                        <a href="ps5assesories.html" >Assesories</a>
                    </div>
            </div>
            <div class="playstation-item ">
                
                <img src="${pageContext.request.contextPath}/assets/Images/playstation2.png" alt="PS4 Games">
                <div class="playstation-list">
                    <a href="ps4console.html" >Consoles</a>
                </div>
                <div class="playstation-list">
                    <a href="ps4assesories.html" >Assesories</a>
                </div>
            </div>
            <div class="playstation-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/playstation3.png" alt="PS3 Games">
                <div class="playstation-list">
                    <a href="ps3console.html" >Consoles</a>
                </div>
                <div class="playstation-list">
                    <a href="ps3assesories.html" >Assesories</a>
                </div>
            </div>
            <div class="playstation-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/playstation4.PNG" alt="PS2 Games">
                <div class="playstation-list">
                    <a href="ps2console.html" >Consoles</a>
                </div>
                <div class="playstation-list">
                    <a href="ps2assesories.html" >Assesories</a>
                </div>
            </div>
        </div>
    </section>

    <!--xbox -->
    <section class="xbox">
        <h2>Xbox</h2>
        <div class="xbox-container">
            <div class="xbox-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/xbox1.png" alt="xbox 1">
                <div class="xbox-list">
                    <a href="xbox1console.html" >Consoles</a>
                </div>
                <div class="playstation-list">
                    <a href="xbox1assesories.html" >Assesories</a>
                </div>
            </div>
            <div class="xbox-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/xbox2.PNG" alt="xbox 2">
                <div class="xbox-list">
                    <a href="xboxseriesconsole.html" >Consoles</a>
                </div>
                <div class="xbox-list">
                    <a href="xboxseriesassesories.html" >Assesories</a>
                </div>
            </div>
            <div class="xbox-item ">
                <img src="${pageContext.request.contextPath}/assets/Images/xbox3.PNG" alt="xbox 3">
                <div class="xbox-list">
                    <a href="xbox360console.html" >Consoles</a>
                </div>
                <div class="xbox-list">
                    <a href="xbox360assesories.html" >Assesories</a>
                </div>
            </div>
        </div>
    </section>


<!--you might  like-->
<section class="like-categories">
    <h2>You Might Also Like</h2>
    <div class="like-container">
        <div class="like-item">
            <img src="${pageContext.request.contextPath}/assets/Images/like1.PNG"alt="Nintendo">
            <h4>Nintendo</h4>
            <p>Switch Lite, V2</p>
        </div>
        <div class="like-item">
            <img src="${pageContext.request.contextPath}/assets/Images/like2.PNG" alt="Virtual Gaming">
            <h4>Virtual Gaming</h4>
            <p>Motion Sensor & Cameras</p>
        </div>
        <div class="like-item">
            <img src="${pageContext.request.contextPath}/assets/Images/like3.PNG" alt="Budget Videos Games">
            <h4>Budget Videos Games</h4>
            <p>SUP, PVP</p>
        </div>
        <div class="like-item">
            <img src="${pageContext.request.contextPath}/assets/Images/like4.PNG" alt="Gaming Hard Drives">
            <h4>Gaming Hard Drives</h4>
            <p>Playstation & Xbox</p>
        </div>
        
        
        
    </div>
</section>
<!--sell-->
<section class="sell">
    <h2>Sell</h2>
    <div class="sell-container">
        <div class="sell-item ">
            <img src="${pageContext.request.contextPath}/assets/Images/sell.PNG" alt="sell">
        </div>
    </div>
</section>

<!--services-->
<section class="service">
    <h2>Services</h2>
    <div class="service-container">
        <div class="service-item ">
            <img src="${pageContext.request.contextPath}/assets/Images/services1.PNG" alt="service 1">
        </div>
        <div class="service-item ">
            <img src="${pageContext.request.contextPath}/assets/Images/services2.PNG" alt="service 2">
        </div>
    </div>
</section>


<!--reason to buy from us-->
<section class="buy">
    <h2>Reason To Buy From Us</h2>
    <div class="buy-container
    ">
        <div class="buy-box">
            <img src="${pageContext.request.contextPath}/assets/Images/buy1.PNG">
            <h3>Cash on Delivery</h3>
            <p>Get free delivery all over India on almost all the products</p>
        </div>
        <div class="buy-box">
            <img src="${pageContext.request.contextPath}/assets/Images/buy2.PNG">
            <h3>Extended Warranty</h3>
            <p>We offer upto 3 years of warranty on every product we sell </p>
        </div>
        <div class="buy-box">
            <img src="${pageContext.request.contextPath}/assets/Images/buy3.PNG">
            <h3>Quality Assurance</h3>
            <p>Top quality products tested by expert technicians.</p>
        </div>
        <div class="buy-box">
            <img src="${pageContext.request.contextPath}/assets/Images/buy4.PNG">
            <h3>Located in 15+ Cities</h3>
            <p>We are spread across all the major cities in India, feel free to say hello!!!</p>
        </div>
    </div>
 
</section>

<!--game console nexy gen-->
<section class="next-gen">
    <h2>All New Next Generation Game Consoles</h2>
    <div class="next-gen-container">
        <div class="next-gen-item ">
            <img src="${pageContext.request.contextPath}/assets/Images/shopnow1.PNG" alt="shop 1">
        </div>
        <div class="next-gen-item ">
            <img src="${pageContext.request.contextPath}/assets/Images/shopnow2.PNG" alt="shop 2">
        </div>
    </div>
</section>

<!--feedback form-->

<section class="feedback">
    <h2>Feedback Form</h2>
    <div class="feedback-container">
        <div class="feedback-item ">
            <a href="feedback-form-page"><img src="${pageContext.request.contextPath}/assets/Images/feedback.PNG" alt="feedback form"></a>
        </div>
    </div>
</section>
 
</div>
<!-- Footer -->
<footer class="footer">
    <div class="footer-container">
        <!-- Left Section: Logo -->
        <div class="footer-logo">
            <h2><i class="fas fa-gamepad"></i> happy gaming world</h2>
        </div>
        
        <!-- Services Section -->
        <div class="footer-section">
            <h4>SERVICES</h4>
            <ul>
                <li>Check & Buy</li>
                <li>Sell</li>
                <li>Game Repair</li>
                <li>Game Loading</li>
            </ul>
        </div>

        <!-- Quick Links -->
        <div class="footer-section">
            <h4>QUICK LINKS</h4>
            <ul>
                <li>My Account</li>
                <li>Billing and Payment Details</li>
                <li>About Us</li>
                <li>Contact Us</li>
                <li>Track Your Order</li>
                <li>Privacy & Policy</li>
            </ul>
        </div>

        <!-- Contact Us -->
        <div class="footer-section">
            <h4>CONTACT US</h4>
            <p><strong>Address:</strong> Nagpur<br>
                Maharashtra-440034</p>
            <p><strong>Contact:</strong> +91 9764xxxxxx</p>
            <p><strong>Support Email:</strong> support@hgworld.in</p>
            <p><strong>Sales Email:</strong> sales@hgworld.in</p>
        </div>

        <!-- Social Media Icons -->
        <div class="footer-social">
            <h4>CONNECT WITH US</h4>
            <div class="social-icons">
                <a href="#facebook"><i class="fab fa-facebook-f"></i></a>
                <a href="#twitter"><i class="fab fa-twitter"></i></a>
                <a href="#google"><i class="fab fa-google-plus-g"></i></a>
                <a href="#linkedin"><i class="fab fa-linkedin-in"></i></a>
                <a href="#instagram"><i class="fab fa-instagram"></i></a>
            </div>
        </div>
    </div>

    <!-- Payment Methods -->
    <div class="payment-methods">
        <p>Safe Payment For:</p>
        <div class="payment-icons">
            <img src="${pageContext.request.contextPath}/assets/Images/Paytm_logo.png" alt="Paytm">
            <img src="${pageContext.request.contextPath}/assets/Images/images.jpg" alt="GPay">
            <img src="${pageContext.request.contextPath}/assets/Images/bhim-logo.png" alt="BHIM">
            <img src="${pageContext.request.contextPath}/assets/Images/bank.png" alt="Bank Transfer">
            <img src="${pageContext.request.contextPath}/assets/Images/razorpay.png" alt="Razorpay">
        </div>
    </div>

    <!-- Bottom Text -->
    <div class="footer-bottom">
        <p>&copy; 2024 Happy Gaming World. All Rights Reserved</p>
    </div>
    
</footer>
</div>
</body>
</head>
</html>