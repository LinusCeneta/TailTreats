    <%-- 
    Document   : Inventory
    Created on : 17 Jun 2024, 3:03:29 pm
    Author     : Eliseio
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventory</title>
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
            <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                <form class="form-inline my-2 my-lg-0" style="display:flex;" action="${pageContext.request.contextPath}/search">
                    <input class="form-control" style="width: 200px;" type="search" placeholder="Search" aria-label="Search" name='productname'>
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                <br>
                <div class="card mb-3">
                    
                    <div class="card-body">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Product ID</th>
                                    <th scope="col">Product Name</th>
                                    <th scope="col">Product Description</th>
                                    <th scope="col">Quantity</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Action</th>


                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${inventoryList}" var="item">
                                    <tr>

                                        <td><c:out value="${item.productid}"/></td>
                                        <td><c:out value="${item.productname}"/></td>
                                        <td><c:out value="${item.productdesc}"/></td>
                                        <td><c:out value="${item.quantity}"/></td>
                                        <td>₱<c:out value="${item.price}"/></td>

                                        <td>
                                            <a href="${pageContext.request.contextPath}/inventory/form/view?productid=<c:out value="${item.productid}"/>" class="btn btn-sm"style="color: green;">Edit</a>
                                            <a href="${pageContext.request.contextPath}/inventory/form/delete?productid=<c:out value="${item.productid}"/>" class="btn btn-sm"style="color: green;">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div>
                        <div class="form-group col-md-4 text-left mb-3">
                            <a href="${pageContext.request.contextPath}/inventory/form" class="btn btn-primary btn-sm"style="background-color: green;">Add Item</a>
                            <a href="${pageContext.request.contextPath}/admin/usertable" class="btn btn-primary btn-sm"style="background-color: green;">User Table</a>
                            <a href="${pageContext.request.contextPath}/home" class="btn btn-primary btn-sm"style="background-color: green;">Website</a>
                            <form class="dropdown-item" action="${pageContext.request.contextPath}/logout">
                                <input type="hidden" name="id" value="<c:out value='${logDetails.id}'/>">
                                <input type="hidden" name="username" value="<c:out value='${logDetails.username}'/>">
                                <button class="btn btn-primary btn-sm" style="background-color: green;" type="submit">Log-out</button>
                            </form>
                        </div>
                    </div>
                </div>
            </main>            
        </div>
</body>
</html>
