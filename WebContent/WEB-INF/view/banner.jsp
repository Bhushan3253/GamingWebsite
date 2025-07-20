<style>
/* <!-- banner section --> */
.banner{
 
 width: 100%;
 overflow: hidden;
 
}
.slider{
    width: 4098;
    display: flex;
    flex-direction: row;
    position: relative;
    animation-name: slide;
    animation-duration: 15s;
    animation-iteration-count: infinite;
}
 
.slider img{
    width: 100%;
} 
@keyframes slide{
    0%{
        left: 0px;
    }
    26.66%{
        left: 0px;
    }
     33.33%{
        left: -1366px;
    }
     60%{
        left: -1366px;
    }
    66.66%{
        left: -2732px;
    }
    93.33%{
        left: -2732px;
    }


    100%{
        left: -4098px;
    }

}

 
</style>
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