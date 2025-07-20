<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="net.javaguides.usermanagement.model.User" %>
<%
    User user = (User) request.getAttribute("user");
    boolean isEdit = (user != null);
%>

<!DOCTYPE html>
<html>
<head>
    <title>User Form</title>
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          crossorigin="anonymous">
</head>
<body>

<header>
    <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
        <div>
            <a href="#" class="navbar-brand">User Management App</a>
        </div>
        <ul class="navbar-nav">
            <li><a href="list" class="nav-link">Users</a></li>
        </ul>
    </nav>
</header>

<br>

<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="<%= isEdit ? "update" : "insert" %>" method="post">
                <h2><%= isEdit ? "Edit User" : "Add New User" %></h2>

                <% if (isEdit) { %>
                    <input type="hidden" name="id" value="<%= user.getId() %>" />
                <% } %>

                <fieldset class="form-group">
                    <label>User Name</label>
                    <input type="text" class="form-control" name="name" required
                           value="<%= isEdit ? user.getName() : "" %>">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Email</label>
                    <input type="email" class="form-control" name="email" required
                           value="<%= isEdit ? user.getEmail() : "" %>">
                </fieldset>

                <fieldset class="form-group">
                    <label>User Country</label>
                    <input type="text" class="form-control" name="country" required
                           value="<%= isEdit ? user.getCountry() : "" %>">

                </fieldset>

                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>
