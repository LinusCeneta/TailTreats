
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tail Treats - Products</title>
        <!--Link to CSS-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <!-- Link Swiper's CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/swiper-bundle.min.css">

        <style>
            body{
                background: url(img/background.png);
            }
        </style>
    </head>
    <body class="">
        <!-- Navbar -->
        <header>
            <a href="${pageContext.request.contextPath}/home" class="logo"><img src="img/homelogo.png" alt=""></a>
            <h1><span style="color:#466AA2;">Tail </span>Treats</h1>
            <!--Menu Icon-->

            <!--Nav List-->
            <ul class="navbar">
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/products"class="home-active">Products</a></li>
                <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li><a href="${pageContext.request.contextPath}/services">Services</a></li>
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
        <br>
        <br>
        <br>
        <!-- Product List -->
        <!-- Pet Food Section -->
        <section class="categories" id="food">
            <div class="heading">
                <h1 style="color: white;">Pet Foods</h1>
            </div>
            <div class="products-container">
                <!--Product 1-->
                <div class="box" style="background-color: white;">
                    <img src="img/food1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Moochie Adult Small Breed Chicken Liver Wet Dog Food - 85g (12 pouches)</h2>
                    <h3 class="price">₱689.00</h3>
                    <form><button style="background-color: white; border:none; color: green; " type="submit" name="productid" value=1 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 2-->
                <div class="box" style="background-color: white;">
                    <img src="img/food2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Scrumbles Complete Dry Adult and Senior Dog Food Salmon - 2kg</h2>
                    <h3 class="price">₱929.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=2 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>    
                <!--Product 3-->
                <div class="box" style="background-color: white;">
                    <img src="img/food3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Kit Cat Signature Salmon Dry Cat Food - 1.2kg</h2>
                    <h3 class="price">₱619.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=3 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 4-->
                <div class="box" style="background-color: white;">
                    <img src="img/food4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Royal Canin Kitten Instinctive Wet Food - 85g</h2>
                    <h3 class="price">₱99.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=4 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 5-->
                <div class="box" style="background-color: white;">
                    <img src="img/food5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pedigree Adult Beef Wet Dog Food - 1.15kg (2 cans)</h2>
                    <h3 class="price">₱575.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=5 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 6-->
                <div class="box" style="background-color: white;">
                    <img src="img/food6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Goodest Meaty Mackerel Pate with Chunks Wet Cat Food - 85g (12 pouches)</h2>
                    <h3 class="price">₱419.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=6 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        <!-- Pet Treats Section -->
        <section class="categories" id="treats">
            <div class="heading">
                <h1 style="color: white;">Pet Treats</h1>
            </div>
            <div class="products-container">
                <!--Product 1-->
                <div class="box" style="background-color: white;">
                    <img src="img/treat1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pets at Home Calming Puppy Treats 50g</h2>
                    <h3 class="price">₱199.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=7 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>    
                <!--Product 2-->
                <div class="box" style="background-color: white;">
                    <img src="img/treat2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pets at Home Puppy Biscuits Bones 5kg</h2>
                    <h3 class="price">₱1,099.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=8 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 3-->
                <div class="box" style="background-color: white;">
                    <img src="img/treat3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pedigree Schmackos Adult Dog Treats Meaty Mix 144g</h2>
                    <h3 class="price">₱129.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=9 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 4-->
                <div class="box" style="background-color: white;">
                    <img src="img/treat4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Lily's Kitchen Best Ever Beef Mini Burgers Dog Treats 70g</h2>
                    <h3 class="price">₱229.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=10 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 5-->
                <div class="box" style="background-color: white;">
                    <img src="img/treat5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Catit Creamy Lickable Cat Treats Tuna 15x10g</h2>
                    <h3 class="price">₱519.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=11 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 6-->
                <div class="box" style="background-color: white;">
                    <img src="img/treat6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Dreamies Cat Treat Biscuits with Cheese 60g</h2>
                    <h3 class="price">₱139.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=12 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        <!-- Grooming Supplies Section -->
        <section class="categories" id="groom">
            <div class="heading">
                <h1 style="color: white;">Grooming Supplies</h1>
            </div>
            <div class="products-container">
                <!--Product 1-->
                <div class="box" style="background-color: white;">
                    <img src="img/groom1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Doggo Sharp Layering Scissor</h2>
                    <h3 class="price">₱289.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=13 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 2-->
                <div class="box" style="background-color: white;">
                    <img src="img/groom2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Bark2Basics Dog Cologne</h2>
                    <h3 class="price">₱589.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=14 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 3-->
                <div class="box" style="background-color: white;">
                    <img src="img/groom3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Doggo Bathing Brush</h2>
                    <h3 class="price">₱279.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=15 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 4-->
                <div class="box" style="background-color: white;">
                    <img src="img/groom4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Andis UltraEdge Clipper Blade, Size 10</h2>
                    <h3 class="price">₱1,459.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=16 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 5-->
                <div class="box" style="background-color: white;">
                    <img src="img/groom5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Boshel Dog Toothbrush Set</h2>
                    <h3 class="price">₱299.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=17 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 6-->
                <div class="box" style="background-color: white;">
                    <img src="img/groom6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Doggo Pet Nail Scissor</h2>
                    <h3 class="price">₱299.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=18 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        <!-- Health and Wellness Section -->
        <section class="categories" id="health">
            <div class="heading">
                <h1 style="color: white;">Health and Wellness</h1>
            </div>
            <div class="products-container">
                <!--Product 1-->
                <div class="box" style="background-color: white;">
                    <img src="img/health1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Dr Shiba Jolly Joints - Mini Tub - Dog Supplement</h2>
                    <h3 class="price">₱209.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=19 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 2-->
                <div class="box" style="background-color: white;">
                    <img src="img/health2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Nexgard One Tablet Chewable for Dogs</h2>
                    <h3 class="price">₱899.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=20 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 3-->
                <div class="box" style="background-color: white;">
                    <img src="img/health3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>IAMS Proactive Immune Dog Supplement - 168g</h2>
                    <h3 class="price">₱619.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=21 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 4-->
                <div class="box" style="background-color: white;">
                    <img src="img/health4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Fresh Friends Mint Toothpaste - 90g 2x</h2>
                    <h3 class="price">₱379.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=22 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 5-->
                <div class="box" style="background-color: white;">
                    <img src="img/health5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Dr Shiba Anti Flea & Tick Soap</h2>
                    <h3 class="price">₱209.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=23 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 6-->
                <div class="box" style="background-color: white;">
                    <img src="img/health6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>VitaCat Calming Aid for Cats - 60 Chews</h2>
                    <h3 class="price">₱1,229.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=24 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>
        <!-- Pet Supplies Section -->
        <section class="categories" id="supplies">
            <div class="heading">
                <h1 style="color: white;">Pet Supplies</span></h1>
            </div>
            <div class="products-container">
                <!--Product 1-->
                <div class="box" style="background-color: white;">
                    <img src="img/supplies1.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Doggo Squeaky Ball</h2>
                    <h3 class="price">₱99.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=25 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 2-->
                <div class="box" style="background-color: white;">
                    <img src="img/supplies2.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Doggo Strong Harness</h2>
                    <h3 class="price">₱278.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=26 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 3-->
                <div class="box" style="background-color: white;">
                    <img src="img/supplies3.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Doggo Slow-Down Bowl</h2>
                    <h3 class="price">₱298.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=27 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 4-->
                <div class="box" style="background-color: white;">
                    <img src="img/supplies4.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Pets at Home Clamshell Cat Bed Blue Spotty</h2>
                    <h3 class="price">₱1,099.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=28 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 5-->
                <div class="box" style="background-color: white;">
                    <img src="img/supplies5.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Squishmallows Original Gordon Shark Pet Bed Grey</h2>
                    <h3 class="price">₱2,199.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=29 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
                <!--Product 6-->
                <div class="box" style="background-color: white;">
                    <img src="img/supplies6.png" alt="">
                    <span>Item on Sale</span>
                    <h2>Approved Washable Male Wrap 1s Large</h2>
                    <h3 class="price">₱299.00</h3>
                    <form><button style="background-color: white; border:none; color: green;" type="submit" name="productid" value=30 formaction="${pageContext.request.contextPath}/cart/add"><i class='bx bxs-cart-alt'></i></button></form>
                    <i class='bx bx-heart' ></i>
                    <span class="discount">-10%</span>
                </div>
            </div>
        </section>

        <section class='cart'>
            <h1 style="color:white;"><span style="color:#466AA2;">Shopping </span>Cart</h1>
            <div class="listCart">
                <div class="item">
                    <div class="picture">
                        <img src="img/p1.png" alt="">
                    </div>
                    <div class="productname">
                        Name
                    </div>
                    <div class="price">
                        P500
                    </div>
                    <div class="quantity">
                        <span class="minus">-</span>
                        <span>1</span>
                        <span class="plus">+</span>
                    </div>
                </div>
            </div>
            <div class="row">
                <button class='bttn hide'>Close</button>
                <button class='bttn'>Checkout</button>
            </div>
        </section>

        <!--Link to Login JS-->
        <script src="${pageContext.request.contextPath}/js/log-in.js"></script>
        <script src="${pageContext.request.contextPath}/js/addtocart.js"></script>
    </body>
</html>
