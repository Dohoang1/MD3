<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Customers</h1>

    <a href="/customers?action=create" class="btn btn-primary mb-3">Create new customer</a>

    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Address</th>
                <th>Edit</th>
                <th>Delete</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items='${customers}' var="customer">
                <tr>
                    <td><a href="/customers?action=view&id=${customer.getId()}" class="text-decoration-none"><c:out value="${customer.getName()}"/></a></td>
                    <td><c:out value="${customer.getEmail()}"/></td>
                    <td>${customer.getAddress()}</td>
                    <td><a href="/customers?action=edit&id=${customer.getId()}" class="btn btn-warning btn-sm">Edit</a></td>
                    <td><a href="/customers?action=delete&id=${customer.getId()}" class="btn btn-danger btn-sm">Delete</a></td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>