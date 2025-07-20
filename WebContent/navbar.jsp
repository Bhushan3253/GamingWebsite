 <style>
 *{
    box-sizing: border-box;
}
body{

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
.account a{
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
.account a:hover{
    background:rgb(103, 111, 111);
    color:black;
    
}
.cart a{
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
    margin: 20px 15px 20px 10px;
}
.cart a:hover{
    background:rgb(103, 111, 111);
    color:black;
}
.phone a{
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
}
    .phone a:hover{
        background :rgb(103, 111, 111);
        color:black;
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
        border-radius: 30px; /* Makes the input ellipse shape */
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
    .button-container {
        text-align: center;
    }
    
    .btn {
        background-color: #6c757d; /* Secondary button color */
        color: white;
        border: none;
        padding: 10px 30px; /* Adjust padding for shape */
        font-size: 16px;
        border-radius: 50px; /* Makes the button ellipse */
        cursor: pointer;
        transition: all 0.3s ease;
    }
    
    .btn:hover {
        background-color: #5a6268; /* Darker shade on hover */
    }
    
    .btn:focus {
        outline: none;
        box-shadow: 0 0 8px rgba(108, 117, 125, 0.5); /* Subtle glow effect */
    }
    
 
 </style>
 <div class="header-main">
                <div class="header-space">
                    <div class="header-row">
                        <div class="header-logo ">
                                <div class="logo">
                                    <a href="#">
                                        <img class="site-logo" alt="HGworld | Happy Gaming World" src="assets/Images/hgworld-logo-1.png">
       </a>
                                </div>
                        </div>
                        <div class="dropdown">
                            <button class="btn btn-outline-secondary dropdown-toggle" 
                            type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" >All</button>
                            <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <li><a class="dropdown-item" href="#">Item 1</a></li>
                                <li><a class="dropdown-item" href="#">Item 2</a></li>
                                <li><a class="dropdown-item" href="#">Item 3</a></li>
                            </ul>
                        </div>
                        <div class="search-container">
                            <input type="text" class="form-search" placeholder="Search for something..." aria-label="Search">
                        </div>
                        <div class="button-container">
                            <button class="btn btn-secondary" type="button">Search</button>
                        </div>
                    
                    <div class="cart">
                        <a href="#cart" ><i class='bx bxs-cart' ></i></a>
                    </div>
                    
                    <div class="account">
                        <a href="signin"><i class='bx bxs-user'></i></a>
                    </div>
                     </div>
                </div>
                    </div>
