<%-- 
    Document   : Registration Table
    Created on : 17 Jun 2024, 12:43:46 am
    Author     : Eliseio
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Table</title>
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
    <body style="background-color: yellow;">
        <div class="container-fluid">
            <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4"">
                <div class="card mb-3">
                    <div class="card-body">
                        <table class="table table-sm">
                            <thead>
                                <tr>
                                    <th scope="col">Username</th>
                                    <th scope="col">First Name</th>
                                    <th scope="col">Middle Name</th>
                                    <th scope="col">Last Name</th>
                                    <th scope="col">Birthday</th>
                                    <th scope="col">Address</th>
                                    <th scope="col">Mobile Number</th>
                                    <th scope="col">Account Type</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${userList}" var="user">
                                    <tr>

                                        <td><c:out value="${user.username}"/></td>
                                        <td><c:out value="${user.firstname}"/></td>
                                        <td><c:out value="${user.middlename}"/></td>
                                        <td><c:out value="${user.lastname}"/></td>
                                        <td><c:out value="${user.address}"/></td>
                                        <td><c:out value="${user.birthday}"/></td>
                                        <td><c:out value="${user.mobilenumber}"/></td>
                                        <td><c:out value="${user.role}"/></td>
                                        <td>
                                            <a href="${pageContext.request.contextPath}/admin/edit-user?id=<c:out value="${user.id}"/>" class="btn btn-sm" style="color: green;">Edit</a>
                                            <a href="${pageContext.request.contextPath}/admin/delete-user?id=<c:out value="${user.id}"/>" class="btn btn-sm" style="color: green;">Delete</a>
                                        </td>
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                        <div class="form-group col-md-4 text-left mb-3">
                            <a href="${pageContext.request.contextPath}/form" class="btn btn-primary btn-sm" style="background-color: green;">Add Account</a>
                            <a href="${pageContext.request.contextPath}/inventory" class="btn btn-primary btn-sm" style="background-color: green;">Inventory</a>
                            <a href="${pageContext.request.contextPath}/home" class="btn btn-primary btn-sm" style="background-color: green;">Website</a>
                            <br>
                            <br>
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