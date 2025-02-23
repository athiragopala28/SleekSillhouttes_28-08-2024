<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dao.UserDao" %>
<%@ page import="bean.User" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>User List</title>
</head>
<body>

<div class="container mt-5">
    <h2 class="text-center">User List</h2>
    <table class="table table-bordered table-striped">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Created At</th>
            </tr>
        </thead>
        <tbody>
            <%
                UserDao userDao = new UserDao();
                List<User> users = userDao.getAllUsers();

                for (User user : users) {
            %>
            <tr>
                <td><%= user.getUsersId() %></td>
                <td><%= user.getName() %></td>
                <td><%= user.getPhone() %></td>
                <td><%= user.getEmail() %></td>
                <td><%= user.getCreatedAt() %></td>
            </tr>
            <%
                }
            %>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
