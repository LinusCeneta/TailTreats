<%-- 
    Document   : userinventory
    Created on : 25 Jun 2024, 5:25:18 pm
    Author     : Eliseio
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cart Page</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
        <style>
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
    <body style="background-color: yellow">
        <div class="container-fluid">
            <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4"">
                <div class="card mb-3">
                    <div class="card-body">
                        
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Product Description</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${productList}" var="item">
                                    <tr>
                                        <td><c:out value="${item.productname}"/></td>
                                        <td><c:out value="${item.productdesc}"/></td>
                                        <td>₱<c:out value="${item.price}"/></td>
                                        <td>
                                            <form>    
                                                <input name="quantity" type="text" value="<c:out value="${item.quantity}"/>" style="width: 30px; text-align: center;">
                                                <input name="productid" type="hidden" value="<c:out value="${item.productid}"/>" style="width: 30px; text-align: center;">
                                                <button formaction="${pageContext.request.contextPath}/checkout" class="btn btn-primary btn-sm" style="background-color: green" type="submit">Checkout</button>
                                            </form>     
                                        </td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/cart/remove?productid=<c:out value="${item.productid}"/>" class="btn btn-sm" style="color: green">Remove Item</a>
                                        </td>  
                                    </tr>
                                </c:forEach> 
                            </tbody>
                        </table>

                        <div class="form-group col-md-4 text-left mb-3">
                            <a href="${pageContext.request.contextPath}/home" class="btn btn-primary btn-sm" style="background-color: green">Website</a>
                        </div>
                    </div>
                </div>
        </div>
    </main>
</div>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/counter.js"></script>
</body>
</html>
