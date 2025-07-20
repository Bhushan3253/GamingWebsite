<style>
  * {
    box-sizing: border-box;
  }

  body {
    margin: 0;
    font-family: Arial, sans-serif;
  }

 .header-main {
    padding-top: 20px;
    padding-bottom: 20px;
    background-color:aliceblue;
}

.header-space{
    width: 100%;
    padding-left: 30px;
    padding-right: 30px;
}

.header-row {
    align-items: center;
    display: flex;
}

.header-logo {
    width: 22.5%;
    display: flex;
    align-items: stretch;
    justify-content: space-between;
}
  .account a,
  .cart a,
  .phone a {
    display: inline-flex;
    justify-content: center;
    align-items: center;
    width: 50px;
    height: 50px;
    border: 3px solid grey;
    border-radius: 50%;
    color: grey;
    text-decoration: none;
    margin: 0 15px;
    transition: background 0.3s ease, color 0.3s ease;
  }

  .account a:hover,
  .cart a:hover,
  .phone a:hover {
    background: rgb(103, 111, 111);
    color: black;
  }

    .search-container {
        width: 100%;
        max-width: 400px;
        padding: 10px;
    }
    

  .form-search {
    width: 100%;
    padding: 12px 20px;
    font-size: 16px;
    border: 1px solid #ccc;
    border-radius: 30px;
    outline: none;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: all 0.3s ease;
  }

  .form-search::placeholder {
    color: #aaa;
  }

  .form-search:focus {
    border-color: #007bff;
    box-shadow: 0 0 8px rgba(0, 123, 255, 0.5);
  }

  .button-container button {
    background-color: #6c757d;
    color: white;
    border: none;
    padding: 10px 30px;
    font-size: 16px;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .button-container button:hover {
    background-color: #5a6268;
  }

  .dropdown .dropbtn {
     background-color: #6c757d;
    color: white;
    border: none;
    padding: 10px 30px;
    font-size: 16px;
    border-radius: 50px;
    cursor: pointer;
    transition: all 0.3s ease;
  }

  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.2);
    z-index: 1;
  }
 .acc{
  display:inline-flex;
    justify-content:center;
    align-items:center;
    width:50px;
    height:50px;
    background:none;
    border:3px solid grey;
    border-radius:50%;
    color:grey;
    text-decoration:none;
    margin: 20px 15px 20px 0;
 }
  .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }

  .dropdown-content a:hover {
    background-color: #ddd;
  }

  .dropdown:hover .dropdown-content {
    display: block;
  }

  .dropdown:hover .dropbtn {
    background-color: #6c757d;
  }
</style>

<%
  String nid = (String) session.getAttribute("userid");

%>

<div class="header-main">
  <div class="header-space">
    <div class="header-row">
      <!-- Logo -->
      <div class="header-logo">
        <a href="HomePageNav?userid=<%= nid %>">
          <img class="site-logo" alt="HGworld | Happy Gaming World" src="assets/Images/logo.png" style="height: 100px;">
        </a>
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

      <!-- Search Bar -->
      <div class="search-container">
        <input type="text" class="form-search" placeholder="Search for something..." aria-label="Search">
      </div>
      <div class="button-container">
        <button class="btn btn-secondary" type="button">Search</button>
      </div>

      <!-- Cart -->
      <div class="cart">
        <a href="cart?userid=<%= nid %>"><i class="bx bxs-cart"></i></a>
      </div>

      <!-- Account -->
     
        <div class="dropdown">
          <a href="#" class="acc"><i class="bx bxs-user"></i></a>
          <div class="dropdown-content">
            <a href="profilepage?userid=<%=nid%>"><i class="fa-solid fa-user"></i> Profile</a>
            <a href="#">  <i class="fa-solid fa-gear"></i> Settings</a>
            <a href="index.jsp"><i class="fa-solid fa-right-from-bracket"></i>   Logout</a>
          </div>
        </div>
      </div>
    </div>
  </div>

