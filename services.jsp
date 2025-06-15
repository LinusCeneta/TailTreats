<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tail Treats - Services</title>
        <!--Link To CSS-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <!--Box Icons-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    </head>
    <body>
        <!--Navbar-->
        <header>
            <a href="${pageContext.request.contextPath}/home" class="logo"><img src="img/homelogo.png" alt=""></a>
            <h1><span style="color:#466AA2;">Tail </span>Treats</h1>
            <!--Menu Icon-->

            <!--Nav List-->
            <ul class="navbar">
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="${pageContext.request.contextPath}/about">About</a></li>
                <li><a href="${pageContext.request.contextPath}/services" class="home-active">Services</a></li>
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
        <!--Services-->
        <section class="services" style="background: url(img/background.png)">
            <div class="home-text" style="align">
                <span>We are Tail Treats</span>
                <h1>Book Our Services</h1>
                <a href="#" class="btn">Book Now<i class='bx bx-right-arrow-alt'></i></a>
            </div>
            <div class="services-img">
                <img src="img/services.png" alt="">
            </div>
        </section>
        <!--Section 1-->
        <section class="shop" id="shop">
            <div class="headingservices">
                <span>Book Our Services Now</span>
                <h1 style="font-size: 50px;">VITAL CARE SERVICES</h1>
            </div>
            <div class="shop-container">
                <div class="box">
                    <div class="box.img">
                        <img src="img/book1.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Nutrition</h2>
                    <span>&#8369;1,599.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                <div class="box">
                    <div class="box.img">
                        <img src="img/book2.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Grooming</h2>
                    <span>&#8369;1,299.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                <div class="box">
                    <div class="box.img">
                        <img src="img/book3.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Veterinary</h2>
                    <span>&#8369;2,599.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                
            </div>
        </section>
        <!--Section 2-->
        <section class="shop" id="shop">
            <div class="headingservices">
                <span>Book Our Services Now</span>
                <h1 style="font-size: 50px;">VETERINARY SERVICES</h1>
            </div>
            <div class="shop-container">
                <div class="box">
                    <div class="box.img">
                        <img src="img/book4.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Vaccination</h2>
                    <span>&#8369;1,599.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                <div class="box">
                    <div class="box.img">
                        <img src="img/book5.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Check-Up</h2>
                    <span>&#8369;949.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                <div class="box">
                    <div class="box.img">
                        <img src="img/book6.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Medication</h2>
                    <span>&#8369;1,599.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                
            </div>
        </section>
        <!--Section 3-->
        <section class="shop" id="shop">
            <div class="headingservices">
                <span>Book Our Services Now</span>
                <h1 style="font-size: 50px;">TRAINING SERVICES</h1>
            </div>
            <div class="shop-container">
                <div class="box">
                    <div class="box.img">
                        <img src="img/book7.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Puppy</h2>
                    <span>&#8369;1,599.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                <div class="box">
                    <div class="box.img">
                        <img src="img/book8.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Beginner</h2>
                    <span>&#8369;2,699.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                <div class="box">
                    <div class="box.img">
                        <img src="img/book9.png" alt="">
                    </div>
                    <div class="stars">
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star'></i>
                        <i class='bx bxs-star-half'></i>
                    </div>
                    <h2>Advanced</h2>
                    <span>&#8369;3,899.00</span>
                    <a href="#" class="btn">Book Now</a>
                </div>
                
            </div>
        </section>
        
        <!--Another Section-->
        <section class="booking" id="booking">
            <div class="headingservices">
                <span>Get Now!</span>
                <h1>Book Now With Exclusive Promos</h1>
            </div>
            <div class="container" style="background: url(img/booking.png)">
                <div class="booking-img">
                 
                </div>
                <div class="booking-text">
                    <h2>You Can Book Anytime Today.</h2>
                    <p>At Tail Treats, we understand that your furry companions are more than just pets; <b>they're family.</b><br><br>That's why we offer a comprehensive range of services to ensure their health, happiness, and well-being. From premium pet supplies to essential veterinary care, vital services like grooming, and expert training sessions, we've got everything covered under one roof.</p>
                    <br>
                    <br>
                    <a href="#" class="btn">Book Service</a>
                </div>
            </div>
        </section>
               
        <!--Link To Custom JS-->
        <script src="main.js"></script>
    </body>
</html>
