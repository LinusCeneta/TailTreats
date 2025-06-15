<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="eng">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tail Treats - About</title>
        <!--Link to CSS-->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/about.css">
        <!--Box Icons-->
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
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
                <li><a href="${pageContext.request.contextPath}/home">Home</a></li>
                <li><a href="${pageContext.request.contextPath}/products">Products</a></li>
                <li><a href="${pageContext.request.contextPath}/about" class="home-active">About</a></li>
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

        <!--About Page-->
        <section class="about" id="containerabout" style="background: url(img/background.png); padding-right: 47.42rem; padding-left: 47.42rem">
    <div class="about-content">
        <div class="about-img">
            <img src="img/profile.png" alt="">
        </div>
        <div class="about-text" style="white-space: nowrap;">
            <h3>Hello!</h3>
            <h2>We are <br><span class="color">Tail Treats</span></h2>
            <p>
                We offer a wide range of high-quality pet supplies 
                <br> and exceptional services to ensure your furry friends 
                <br>are happy and healthy.
                <br>
                <br><b>At Tail Treats, we're dedicated to providing the best for your pets 
                    <br>because we know they're more than just pets—they're family.</b>
                <br>
                <br>Here's more about us
                
         
            </p>
            <!--Social-->
            <div class="social">
                <a href="#"><i class='bx bxl-facebook'></i></a>
                <a href="#"><i class='bx bxl-twitter'></i></a>
                <a href="#"><i class='bx bxl-instagram'></i></a>
            </div>
        </div>
    </div>
</section>

        
        <!-- About Details-->
        <section class="details-container" id="containerabout">
            <!--Details Heading-->
            <h2 class="headingabout">About Us</h2>
            <!--Details Content-->
            <div class="details-content">
                <div class="details-data">
                    <span>About Us</span>
                    <h2>Pet Supplies, <br>
                        Services & Medication.</h2>
                    <a href="#" class="btn">
                        Contact Us
                        <i class='bx bx-message-alt' ></i>
                    </a>
                </div>
                <div class="details-text">
                    <p>At <span style="color:#466AA2;"><b> Tail Treats, </b></span>we offer high-quality <span style="color:orange;"><b>pet supplies</b></span> to keep your pets happy and healthy. From nutritious food and tasty treats to durable toys and cozy bedding, we have everything your furry friends need.</p>
                    <p>Our professional <span style="color:orange;"><b>services</b></span> include grooming and training to ensure your pets look and feel their best. Additionally, we provide essential <span style="color:orange;"><b>medications</b></span> and health products, with our knowledgeable staff ready to help you find the right solutions for your pet's well-being.</p>
                </div>
            </div>
        </section>
        
        <!-- About Services -->
        <section class="servicesabout" id="servicesabout">
            <!--Services Heading-->
            <h2 class="headingabout">Services</h2>
            <!--Services Content-->
            <div class="servicesabout-content" id="containerabout">
                <div class="servicesabout-box">
                    <i class='bx bx-heart'></i>
                    <h2>Vital Care Services</h2>
                    <p>Our Vital Care Services provide high-quality nutrition and essentials to keep your pets healthy and happy. From nutritious food to comfy bedding, we have everything your pets need.</p>
                </div>
                <div class="servicesabout-box">
                    <i class='bx bx-heart'></i>
                    <h2>Veterinary Services</h2>
                    <p>Our Veterinary Services offer essential medications and health products for your pets. Our knowledgeable staff is here to help you find the right solutions for their health needs.</p>
                </div>
                <div class="servicesabout-box">
                    <i class='bx bx-heart'></i>
                    <h2>Training Services</h2>
                    <p>Our Training Services help your pets learn new skills and behaviors. We offer professional training sessions to ensure your pets are well-behaved and happy.</p>
                </div>
            </div>    
        </section>
        
        <!--Organizations-->
        <section class="organization" id="containerabout">
            <!--Organization Heading-->
            <h2 class="headingabout">Organizations</h2>
            <p style="text-align: center; padding-bottom: 50px;">Tail Treats is supporting <span style="color: var(--green-color);"><b> The Philippine Animal Welfare Society (PAWS)</b></span> to help unfortunate animals in the Philippines.</p>
            <!--Organization Content-->
            <div class="organization-content">
                <div class="organization-box">
                    <img src="img/organization1.png" alt="" class="organization-img">
                    <!--Overlay-->
                    <div class="organization-overlay">
                        <h2></h2>
                        <a href="https://donatetopaws.org.ph/">
                            <i class='bx bx-link-alt'></i>
                        </a>
                    </div>
                </div>
                <div class="organization-box">
                    <img src="img/organization2.png" alt="" class="organization-img">
                    <!--Overlay-->
                    <div class="organization-overlay">
                        <h2></h2>
                        <a href="https://paws.org.ph/events/">
                            <i class='bx bx-link-alt'></i>
                        </a>
                    </div>
                </div>
                <div class="organization-box">
                    <img src="img/organization3.png" alt="" class="organization-img">
                    <!--Overlay-->
                    <div class="organization-overlay">
                        <h2></h2>
                        <a href="https://paws.org.ph/adopt/">
                            <i class='bx bx-link-alt'></i>
                        </a>
                    </div>
                </div>
                <div class="organization-box">
                    <img src="img/organization4.png" alt="" class="organization-img">
                    <!--Overlay-->
                    <div class="organization-overlay">
                        <h2></h2>
                        <a href="https://paws.org.ph/cruelty-neglect/">
                            <i class='bx bx-link-alt'></i>
                        </a>
                    </div>
                </div>
            </div>
        </section>
        
        <!--Contact Form-->
        <section class="contact" id="containerabout">
            <!--Heading-->
            <h2 class="headingabout">Contact</h2>
            <!--Contact Form-->
            <form action="" class="contact-form" id="contact-form">
                <input type="text" placeholder="Your Name" class="name">
                <input type="email" name="" id="" placeholder="Email address..." class="email">
                <textarea name="" id="" cols="30" rows="10"  placeholder="Write message here..." class="message"></textarea>
                <input type="submit" value="Send" class="send-btn">
            </form>
        </section>

        <!-- Swiper JS -->
        <script src="${pageContext.request.contextPath}/js/swiper-bundle.min.js"></script>
        <!--Link to JS-->
        <script src="${pageContext.request.contextPath}/js/main.js"></script>
    </body>
</html>
