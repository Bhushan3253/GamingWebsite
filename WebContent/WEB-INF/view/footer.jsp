<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Footer Design</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css">
    <!-- Font Awesome for Social Icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
</head>
<body>
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
</body>
</html>