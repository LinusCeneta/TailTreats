<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tail Treats</title>
        <!--Link to CSS-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- Link Swiper's CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper-bundle.min.css">
         
       <style>
            #container{
                background: url(img/background.png);
            }
        </style>
    </head>
    <body>
        <!--Navbar-->
        <header>
            <a href="${pageContext.request.contextPath}/home" class="logo"><img src="img/homelogo.png" alt=""></a>
            <h1><span style="color:#466AA2;">Tail </span>Treats</h1>
            <!--Menu Icon-->

            <!--Nav List-->
            <ul class="navbar">
                <li><a href="${pageContext.request.contextPath}/home" class="home-active">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li><a href="${pageContext.request.contextPath}/services">Services</a></li>
                <br>
            </ul>
            <!--Nav Icons-->
            <div class="nav-icons">
                <div class="dropdown">
                    <button class="dropbtn"><i class='bx bxs-user'></i></button>
                    <div class="dropdown-content">
                        <a class="dropdown-item"><c:out value='${logDetails.username}'/> (<c:out value='${logDetails.firstname}'/> <c:out value='${logDetails.lastname}'/>)</a> 
                        <form class="dropdown-item" action="${pageContext.request.contextPath}/logout">
                            <input type="hidden" name="id" value="<c:out value='${logDetails.id}'/>">
                            <input type="hidden" name="username" value="<c:out value='${logDetails.username}'/>">
                            <button style="background: transparent; font-size: 16px;" type="submit">Log-out</button>
                        </form>
                    </div>
                </div>
                <a href="${pageContext.request.contextPath}/cart"><i class='bx bxs-shopping-bag' ></i></a>
                <a href="#"> <i class="bx bx-menu" id="menu icon"></i></a>
            </div>

        </header>
        <!--Home-->
        <section class="home swiper" id="home">
            <div class="swiper-wrapper">
                <!--Slide 1-->
                <div class="swiper-slide" id="container">
                    <div class="home-text" style="align">
                        
                         <h1 style="color: white;">Buy <span style="color:#466AA2; font-weight: 700; font-size: 50px">pet supplies</span> 
                             <br>for your pets now!</h1>
                        <a href="#categories" class="btn">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
                    </div>
                    <img src="img/home3.png" width="500" height="900">
                </div>
                <!--Slide 2-->
                <div class="swiper-slide" id="container"> 
                    <div class="home-text">
                         
                         <h1 style="color: white;">Book a <span style="color:#466AA2; font-weight: 700; font-size: 50px">pet service</span> 
                             <br>for your pets now!</h1>
                        <a href="#" class="btn">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
                    </div>
                    <img src="img/home1.png" alt=""  width="500" height="900">
                </div>
                <!--Slide 3-->
                <div class="swiper-slide" id="container">
                    <div class="home-text">
                        
                         <h1 style="color: white;">Buy <span style="color:#466AA2; font-weight: 700; font-size: 50px">pet medications</span> 
                             <br>for your pets now!</h1>
                        <a href="#" class="btn">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
                    </div>
                    <img src="img/home2.png" alt=""  width="500" height="900">
                </div>
            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </section>
        
        <!--Categories-->
        <section class="categories" id="categories">
            <div class="heading">
                <h1>Browse <span>available items</span> here!</h1>
                <a href="${pageContext.request.contextPath}/products" class="btn">See All<i class='bx bx-right-arrow-alt'></i></a>
            </div>
            <!-- Container Content-->
            <div class="categories-container">
                <!--Box 1-->
                <div class="box box1">
                    <img src="img/cate1.png" alt="">
                    <h1>Foods</h1>
                    <a style="justify-content: center; align-items: center; align-self: center; display: inline-flex;" href="${pageContext.request.contextPath}/products#food"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <!--Box 2-->
                <div class="box box2">
                    <img src="img/cate2.png" alt="">
                    <h1>Treats</h1>
                    <a style="justify-content: center; align-items: center; align-self: center; display: inline-flex;" href="${pageContext.request.contextPath}/products#treats"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <!--Box 3-->
                <div class="box box3">
                    <img src="img/cate3.png" alt="">
                    <h1>Grooming Supplies</h1>
                    <a style="justify-content: center; align-items: center; align-self: center; display: inline-flex;" href="${pageContext.request.contextPath}/products#groom"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <!--Box 4-->
                <div class="box box4">
                    <img src="img/cate4.png" alt="">
                    <h1>Health & Wellness</h1>
                    <a style="justify-content: center; align-items: center; align-self: center; display: inline-flex;" href="${pageContext.request.contextPath}/products#health"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
                <!--Box 5-->
                <div class="box box5">
                    <img src="img/cate5.png" alt="">
                    <h1>Supplies</h1>
                    <a style="justify-content: center; align-items: center; align-self: center; display: inline-flex;" href="${pageContext.request.contextPath}/products#supplies"><i class='bx bx-right-arrow-alt'></i></a>
                </div>
            </div>
        </section>
        <!--Products-->
        <section class="categories">
            <div class="heading">
                <h1>Our Popular <span>Items</span></h1>
                <a href="${pageContext.request.contextPath}/products" class="btn">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
            </div>
            <!--Products Content-->
            <!--Container 1-->
            <div class="products-container">
                <!--Box 1-->
                <div class="box">
                    <img src="img/popular1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pet Logic 10-in-1 Multivitamins Pet Supplement 240g</h2>
                    <h3 class="price">₱459.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=31 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 2-->
                <div class="box">
                    <img src="img/popular2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pet Logic Skin and Coat Health Pet Supplement 240g</h2>
                    <h3 class="price">₱459.00</h3>
                   <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=32 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 3-->
                <div class="box">
                    <img src="img/popular3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pet Logic Probiotic Digestive Health Pet Supplement 240g</h2>
                    <h3 class="price">₱459.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=33 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 4-->
                <div class="box">
                    <img src="img/popular4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Royal Canin Feline Breed Nutrition Adult Maine Coon Wet Cat Food 85g (12 pouches)</h2>
                    <h3 class="price">₱1,152.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=34 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 5-->
                <div class="box">
                    <img src="img/popular5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Royal Canin Feline Health Nutrition Adult Instinctive Wet Cat Food 85g (12 pouches)</h2>
                    <h3 class="price">₱972.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=35 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 6-->
                <div class="box">
                    <img src="img/popular6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Royal Canin Feline Care Nutrition Adult Urinary Care Wet Cat Food 85g (12 pouches)</h2>
                    <h3 class="price">₱942.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=36 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        <section class="categories">
            <div class="heading">
                <h1>Tail Treats <span>Exclusives</span></h1>
                <a href="${pageContext.request.contextPath}/products" class="btn">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
            </div>
            <!--Products Content-->
            <!--Container 2-->
            <div class="products-container">
                <!--Box 1-->
                <div class="box">
                    <img src="img/exclusives1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Sunny Daze Wide Stripe Clip on Dog Poop Bag Dispenser Blue</h2>
                    <h3 class="price">₱499.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=37 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 2-->
                <div class="box">
                    <img src="img/exclusives2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Sunny Daze Retractable Dog Lead Blue</h2>
                    <h3 class="price">₱499.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=38 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 3-->
                <div class="box">
                    <img src="img/exclusives3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Sunny Daze Wide Stripe Print Dog Lead Blue - 102cm</h2>
                    <h3 class="price">₱499.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=39 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 4-->
                <div class="box">
                    <img src="img/exclusives4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Sunny Daze Strawberry Clip On Dog Poop Bag Dispenser</h2>
                    <h3 class="price">₱499.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=40 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 5-->
                <div class="box">
                    <img src="img/exclusives5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Sunny Daze Strawberry Dog Collar Red</h2>
                    <h3 class="price">₱499.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=41 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 6-->
                <div class="box">
                    <img src="img/exclusives6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pets at Home Fabric Pet Carrier Multi Coloured</h2>
                    <h3 class="price">₱1,492.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=42 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        <section class="categories">
            <div class="heading">
                <h1><span>Special</span> Offers</h1>
                <a href="${pageContext.request.contextPath}/products" class="btn">Shop Now<i class='bx bx-right-arrow-alt'></i></a>
            </div>
            <!--Products Content-->
            <!--Container 3-->
            <div class="products-container">
                <!--Box 1-->
                <div class="box">
                    <img src="img/special1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Ibiyaya Pet Stroller/Wheeled Carrier Green</h2>
                    <h3 class="price">₱4,799.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=43 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 2-->
                <div class="box">
                    <img src="img/special2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Ibiyaya Noah All-Around Beach Pet Wagon</h2>
                    <h3 class="price">₱21,999.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=44 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 3-->
                <div class="box">
                    <img src="img/special3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Ibiyaya 5-in-1 Combo Pet Carrier/Stroller Pink</h2>
                    <h3 class="price">₱8,879.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=45 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 4-->
                <div class="box">
                    <img src="img/special4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Kennel Pro Pet Carrier Small Pink - 50x34x32cm</h2>
                    <h3 class="price">₱789.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=46 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 5-->
                <div class="box">
                    <img src="img/special5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Kennel Pro Pet Carrier Small Orange - 50x34x32cm</h2>
                    <h3 class="price">₱789.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=47 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Box 6-->
                <div class="box">
                    <img src="img/special6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Kennel Pro Pet Carrier Small Green - 50x34x32cm</h2>
                    <h3 class="price">₱789.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=48 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        

        <!-- Swiper JS -->
        <script src="${pageContext.request.contextPath}/js/swiper-bundle.min.js"></script>
        <!--Link to JS-->
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
        <!--Link to Login JS-->
        <script src="${pageContext.request.contextPath}/js/log-in.js"></script>
    </body>
</html>
