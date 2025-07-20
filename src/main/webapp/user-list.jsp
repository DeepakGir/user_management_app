<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, net.javaguides.usermanagement.model.User" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

 <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
    <a class="navbar-brand" href="#">User Management App</a>
    <div class="navbar-nav">
        <a class="nav-link active" href="#">Users</a>
        <a class="nav-link" href="new">Add User</a>
    </div>
</nav>

<div class="container mt-5">
    <div class="card shadow-sm">
        <div class="card-body">
            <h3 class="card-title text-center mb-4">User List</h3>

            <table class="table table-bordered table-striped text-center">
                <thead class="thead-dark">
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Country</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                <%
                    List<User> list = (List<User>) request.getAttribute("listUser");
                    if (list != null) {
                        for (User user : list) {
                %>
                    <tr>
                        <td><%= user.getSr() %></td>
                        <td><%= user.getName() %></td>
                        <td><%= user.getEmail() %></td>
                        <td><%= user.getCountry() %></td>
                        <td>
                            <a class="btn btn-sm btn-warning" href="edit?id=<%= user.getId() %>">Edit</a>
                            <a class="btn btn-sm btn-danger" href="delete?id=<%= user.getId() %>" onclick="return confirm('Are you sure?')">Delete</a>
                        </td>
                    </tr>
                <%
                        }
                    }
                %>
                </tbody>
            </table>

            <a href="new" class="btn btn-success">Add New User</a>
        </div>
    </div>
</div>

</body>
</html>
