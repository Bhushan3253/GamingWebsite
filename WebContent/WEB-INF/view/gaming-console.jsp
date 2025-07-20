<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gaming Consoles</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/gaming-console.css">
    
        
        
</head>
<body>
  <div>
  <%@ include file="navbar.jsp" %>
  </div>
    <h1>Gaming Consoles</h1>
      <div class="console-container">
        <div class="console-card handheld">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console1.PNG" alt="Handheld Console">
            <h3>Handheld Console</h3>
        </div>
        <div class="console-card meta">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console2.PNG" alt="Meta Quest">
            <h3>Meta Quest (VR)</h3>
        </div>
        <div class="console-card retro">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console3.PNG" alt="Retro Gaming">
            <h3>Retro Gaming And Arcade</h3>
        </div>
        <div class="console-card steering">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console4.PNG" alt="Steering Wheels & Shifter">
            <h3>Steering Wheels & Shifter</h3>
        </div>
        <div class="console-card vr">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console5.PNG" alt="Virtual Reality(VR)">
            <h3>Virtual Reality(VR)</h3>
        </div> 
               <div class="console-card playstation">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console6.PNG" alt="Playstation Consoles">
            <h3>Playstation Consoles</h3>
        </div>     
           <div class="console-card xbox">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console7.PNG" alt="Xbox Consoles">
            <h3>Xbox Consoles</h3>
        </div>    
            <div class="console-card nintendo">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console8.PNG" alt="Nintendo Consoles">
            <h3>Nintendo Consoles</h3>
        </div>    
            <div class="console-card video">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console9.PNG" alt="Video Consoles">
            <h3>Video Games Console</h3>
        </div>       
         <div class="console-card xbox-series">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console10.PNG" alt="Xbox series">
            <h3>Xbox Series-S</h3>
        </div>     
           <div class="console-card ps3">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console11.PNG" alt="Ps3 Console">
            <h3>PS3 Super Slim</h3>
        </div>   
             <div class="console-card ps2">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console12.PNG" alt="ps2">
            <h3>PS2 Slim</h3>
        </div>      
          <div class="console-card ps2-slim">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console13.PNG" alt="Handheld Console">
            <h3>PS2 Slim</h3>
        </div>     
           <div class="console-card ps3-slim">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console14.PNG" alt="Handheld Console">
            <h3>PS3 Slim</h3>
        </div>     
           <div class="console-card ps4-slim">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console15.PNG" alt="Handheld Console">
            <h3>PS4 Slim</h3>
        </div>      
          <div class="console-card ps4-slim-best">
            <img src="${pageContext.request.contextPath}/assets/Images/gaming-console16.PNG" alt="Handheld Console">
            <h3>PS4 Slim (new)</h3>
        </div>
        
    </div>
      <div>
  <%@ include file="footer.jsp" %>
  </div>
</body>
</html>
