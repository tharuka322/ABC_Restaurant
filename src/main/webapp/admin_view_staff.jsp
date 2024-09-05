<%@ page import="java.util.List" %>
<%@ page import="admin.Staff" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Staff</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center mb-4">Staff Management</h2>

    <!-- Display Error Message -->
    <% 
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
    %>
    <div class="alert alert-danger"><%= errorMessage %></div>
    <% } %>

    <!-- Search Form -->
    <form method="get" action="AdminStaffviewServlet">
        <div class="input-group mb-3">
            <input type="text" class="form-control" name="search" placeholder="Search staff" value="<%= request.getParameter("search") %>">
            <button class="btn btn-primary" type="submit">Search</button>
        </div>
    </form>

    <!-- Staff Table -->
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Username</th>
                <th>Password</th>
                <th>Phone</th>
                <th>Name</th>
                <th>Role</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% 
            List<Staff> staffList = (List<Staff>) request.getAttribute("staffList");
            if (staffList != null) {
                for (Staff staff : staffList) {
            %>
            <tr>
                <td><%= staff.getUsername() %></td>
                <td><%= staff.getPassword() %></td>
                <td><%= staff.getPhone() %></td>
                <td><%= staff.getName() %></td>
                <td><%= staff.getRole() %></td>
                <td>
                    <a href="AdminStaffviewServlet?action=delete&username=<%= staff.getUsername() %>" class="btn btn-danger btn-sm">Delete</a>
                    <a href="admin_update_staff.jsp?username=<%= staff.getUsername() %>" class="btn btn-primary btn-sm">Update</a>
                </td>
            </tr>
            <% 
                }
            } else {
            %>
            <tr>
                <td colspan="6" class="text-center">No staff found</td>
            </tr>
            <% 
            }
            %>
        </tbody>
    </table>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
