<%-- 
    Document   : AddInventory
    Created on : 17 Jun 2024, 3:07:31 pm
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
        <title>Edit Inventory Form</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/form.css">
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
            <h1><span style="color:#466AA2;">Inventory </span>Form</h1>
            <h1><span style="color:#466AA2;">Tail </span>Treats</h1>
        </header>
        <!-- Registration Form (edit CSS if not satisfied)-->
        <form id="form" method="POST" action="${pageContext.request.contextPath}/inventory/form/edit">
            <div style="margin-top: 20%;width:1000px;height: 500px;background: transparent;border: 2px solid rgba(255, 255, 255, 5.0);padding-right: 150px;">
                <br>
                <br>
                <div style="justify-content: left; margin-left: 30px;">
                    <input style="width: 938px" name="productid" type="hidden" placeholder="Enter price:" value="<c:out value='${itemDetails.productid}'/>">
                    <label for="productname">Product Name: </label>
                    <br>
                    <input style="width: 938px" id="password" name="productname" type="text" placeholder="Enter your product name:" value="<c:out value='${itemDetails.productname}'/>">
                    <br>
                    <label for="productname">Product Desc: </label>
                    <br>
                    <input style="width: 938px" id="password" name="productdesc" type="text" placeholder="Enter your product name:" value="<c:out value='${itemDetails.productdesc}'/>">
                    <br>
                    <label for="quantity">Quantity: </label>
                    <br>
                    <input style="width: 938px" id="confirmpassword" name="quantity" type="text" placeholder="Enter quantity:" value="<c:out value='${itemDetails.quantity}'/>">
                    <br>
                    <label for="price">Price: </label>
                    <br>
                    <input style="width: 938px" id="firstname" name="price" type="text" placeholder="Enter price:" value="<c:out value='${itemDetails.price}'/>">
                    <br>
                    <br>
                    <button style="background-color: lightgreen; color: white;font-size: 150%;padding-left: 52%;padding-right: 52%;" type="submit">Submit</button>
                </div>
                <br>
            </div>
        </form>
        
    </body>
</html>
