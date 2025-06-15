
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Registration Form</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/form.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/jquery-ui.css">
        <link rel="stylesheet"
              href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <style>
            body{
                background: url(img/background.png);
            }
        </style>
    </head>
    <body>
        <header>
            <a href="${pageContext.request.contextPath}/home" class="logo"><img src="img/homelogo.png" alt=""></a>
            <h1><span style="color:#466AA2;">Registration </span>Form</h1>
            <h1><span style="color:#466AA2;">Tail </span>Treats</h1>
        </header>
        <!-- Registration Form (edit CSS if not satisfied)-->
        <form id="form" method="POST" action="${pageContext.request.contextPath}/form/register-successful" onsubmit="return inputValidation();">
            <div class ='wrapper'>
                <div class="right">
                    <input type="hidden" name="role" value="Client">
                </div>
                <br>
                <br>
                <div style="display:flex">
                <div class="column1">
                    <label for="username">Username: </label>
                    <br>
                    <input id="username" name="username" type="text" placeholder="Enter your username">
                    <p id="usermessage"></p>
                    <br>
                    <label for="password">Password: </label>
                    <br>
                    <input id="password" name="password" type="password" placeholder="Enter your password">
                    <p  id="usermessage1"></p>
                    <br>
                    <p id="usermessage9"></p>
                    <label for="confirmpassword">Confirm Password: </label>
                    <br>
                    <input id="confirmpassword" name="confirmpassword" type="password" placeholder="Confirm Password">
                    <p id="usermessage2"></p>
                    <br>
                    <label for="firstname">Firstname: </label>
                    <br>
                    <input id="firstname" name="firstname" type="text" placeholder="Enter your firstname">
                    <br>
                    <p id="usermessage3"></p>
                    <br>
                    <label for="middlename">Middlename: </label>
                    <br>
                    <input id="middlename" name="middlename" type="text" placeholder="Enter your middlename">
                    <br>
                    <p id="usermessage8"></p>
                    <br>
                </div>
                <div class="column2">
                    <label for="lastname">Lastname: </label>
                    <br>
                    <input id="lastname" name="lastname" type="text" placeholder="Enter your lastname">
                    <br>
                    <p id="usermessage4"></p>
                    <p id="usermessage10"></p>
                    <br>
                    <label for="address">Address: </label>
                    <br>
                    <input id="address" name="address" type="text" placeholder="Enter your address">
                    <br>
                    <p id="usermessage5"></p>
                    <br>
                    <label for="birthday">Birthday: </label>
                    <br>
                    <input id="birthday" name="birthday" placeholder="MM-DD-YYYY">
                    <br>
                    <p id="usermessage6"></p>
                    <br>
                    <label for="mobilenumber">Mobile Number: </label>
                    <br>
                    <input id="mobilenumber" name="mobilenumber" type="text" placeholder="Enter your mobile number">
                    <br>
                    <p id="usermessage7"></p>
                    <br>
                    <label for="mobilenumber"></label>
                    <br>
                    <button type="submit">Submit</button>
                </div>
                </div>    
                <br>
            </div>
        </form>
        
        <!-- Registration Form Javascript -->
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
