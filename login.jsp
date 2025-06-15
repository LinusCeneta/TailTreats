<%-- 
    Document   : login
    Created on : 19 Jun 2024, 1:48:49 am
    Author     : Eliseio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/css/log-in-style.css">
        <style>
            body{
                background: url(img/background.png);
            }
        </style>
    </head>
    <body>
        <main>
            <div class="box">
                <div class="inner-box">
                    <div class="forms-wrap">
                        <form action="${pageContext.request.contextPath}/login/submit" method="post">
                            <div class="logo">
                                <img src="${pageContext.request.contextPath}/img/homelogo.png"/>
                                <h4><a style="color: #466AA2;">Tail</a>Treats</h4>
                            </div>

                            <div class="heading">
                                <h2>Welcome Back</h2>
                                <h6>Not registered yet?</h6>
                                <a href="${pageContext.request.contextPath}/form" class="toggle">Sign up</a>
                            </div>

                            <div class="actual-form">
                                <div class="input-wrap">
                                    <input type="text" class="input-field" name="username">
                                    <label>Username</label>
                                </div>

                                <div class="input-wrap">
                                    <input type="password" class="input-field" name="password">
                                    <label>Password</label>
                                </div>

                                <input type="submit" value="Sign In" class="sign-btn" />
                                
                                <p class="text">
                                    Forgotten your password? <br>
                                    <a href="${pageContext.request.contextPath}/changepassword">Change Password</a>
                                </p>
                            </div>
                        </form>
                    </div>

                    <div class="carousel">
                        <div class="images-wrapper">
                            <img src="img/image1.png" class="image img-1 show" alt="" />
                            <img src="img/image2.png" class="image img-2" alt="" />
                            <img src="img/image3.png" class="image img-3" alt="" />
                        </div>

                        <div class="text-slider">
                            <div class="text-wrap">
                                <div class="text-group">

                                </div>
                            </div>

                            <div class="bullets">
                                <span class="active" data-value="1"></span>
                                <span data-value="2"></span>
                                <span data-value="3"></span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!-- Javascript file -->

        <script src="${pageContext.request.contextPath}/js/app.js"></script>
    </body>
</html>
