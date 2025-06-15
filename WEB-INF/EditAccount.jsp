<%-- 
    Document   : EditAccount
    Created on : 17 Jun 2024, 10:58:40 am
    Author     : Eliseio
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Edit Account Form</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/form.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <style>
            body{
                background-color: yellow;
            }
            @font-face {
                font-family: "Poppins", sans-serif;
                src: url("https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700;800&display=swap");
                ;
            }

            * {
                font-family: Poppins;
            }
        </style>
    </head>
    <body>
        <header>
            <h1><span style="color:#466AA2;">Registration </span>Form</h1>
            <h1><span style="color:#466AA2;">Tail </span>Treats</h1>
        </header>
        <!-- Registration Form (edit CSS if not satisfied)-->
        <form id="form" method="POST" action="${pageContext.request.contextPath}/admin/edit-submit" onsubmit="return inputValidation();">
            <div class ='wrapper'>
                <div class="right">
                    <a href="${pageContext.request.contextPath}/home">X</a>
                    <input type="hidden" name="role" value="Client">
                    <input type="hidden" name="id" value="<c:out value='${userDetails.id}'/>">
                </div>
                <br>
                <br>

                <div style="display:flex;">
                    <div class="column1">
                        <label for="username">Username: </label>
                        <br>
                        <input id="username" name="username" type="text" placeholder="Enter your username" value="<c:out value='${userDetails.username}'/>">
                        <br>
                        <p id="usermessage"></p>
                        <br>
                        <label for="password">Password: </label>
                        <br>
                        <input id="password" name="password" type="password" placeholder="Enter your password" value="<c:out value='${userDetails.password}'/>">
                        <br>
                        <p  id="usermessage1"></p>
                        <p id="usermessage9"></p>
                        <br>
                        <label for="confirmpassword">Confirm Password: </label>
                        <br>
                        <input id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm Password" value="<c:out value='${userDetails.password}'/>">
                        <br>
                        <p id="usermessage2"></p>
                        <br>
                        <label for="firstname">Firstname: </label>
                        <br>
                        <input id="firstname" name="firstname" type="text" placeholder="Enter your firstname" value="<c:out value='${userDetails.firstname}'/>">
                        <br>
                        <p id="usermessage3"></p>
                        <br>
                        <label for="middlename">Middlename: </label>
                        <br>
                        <input id="middlename" name="middlename" type="text" placeholder="Enter your middlename" value="<c:out value='${userDetails.middlename}'/>">
                        <br>
                        <p id="usermessage8"></p>
                    </div>
                    <div class="column2">
                        <label for="lastname">Lastname: </label>
                        <br>
                        <input id="lastname" name="lastname" type="text" placeholder="Enter your lastname" value="<c:out value='${userDetails.lastname}'/>">
                        <br>
                        <p id="usermessage4"></p>
                        <p id="usermessage10"></p>
                        <br>
                        <label for="address">Address: </label>
                        <br>
                        <input id="address" name="address" type="text" placeholder="Enter your address" value="<c:out value='${userDetails.address}'/>">
                        <br>
                        <p id="usermessage5"></p>
                        <br>
                        <label for="birthday">Birthday: </label>
                        <br>
                        <input id="birthday" name="birthday" type="text" placeholder="MM-DD-YYYY" value="<c:out value='${userDetails.birthday}'/>">
                        <br>
                        <p id="usermessage6"></p>
                        <br>
                        <label for="mobilenumber">Mobile Number: </label>
                        <br>
                        <input id="mobilenumber" name="mobilenumber" type="text" placeholder="Enter your mobile number" value="<c:out value='${userDetails.mobilenumber}'/>">
                        <br>
                        <p id="usermessage7"></p>
                        <br>
                        <label for="mobilenumber"></label>
                        <br>
                        <button type="submit">Submit</button>
                    </div>    
                </div>
            </div>

        </form>

        <!-- Registration FOrm Javascript -->
        <script src="${pageContext.request.contextPath}/js/form.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-3.7.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/jquery-ui.js"></script>
        <script>
             $(function() {
                $("#birthday").datepicker({
                    dateFormat: "mm-dd-yy",
                    yearRange: "1980:2024",
                    selectOtherMonths: true,
                    changeMonth: true,
                    changeYear: true,
                });
            });
        </script>
    </body>
</html>
