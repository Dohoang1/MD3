<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<h1>User Management</h1>
<h2>
    <a href="/users?action=create">Add New User</a>
</h2>
<form action="/users" method="get">
    <label>Search User By</label>
    <select name="searchtype">
        <option name="id" id="id">ID</option>
        <option name="name" id="name">Name</option>
        <option name="country" id="country">Country</option>
    </select>
    <input type="text" name="keyword">
    <button type="submit">Search</button>
</form>
<div>
    <table>
        <caption><h2>List of Users</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="user" items="${listUser}">
            <tr>
                <td><c:out value="${user.id}"/></td>
                <td><c:out value="${user.name}"/></td>
                <td><c:out value="${user.email}"/></td>
                <td><c:out value="${user.country}"/></td>
                <td>
                    <a href="/users?action=edit&id=${user.id}">Edit</a>
                    <c:url var="deleteUrl" value="/users">
                        <c:param name="action" value="delete"/>
                        <c:param name="id" value="${user.id}"/>
                    </c:url>
                    <a href="${deleteUrl}" onclick="return confirm('Are you sure you want to delete user with ID ${user.id}?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <br> <br>
    <form action="/users" method="get">
        <label>Sort Users By</label>
        <select name="sortby">
            <option value="ID">ID</option>
            <option value="Name">Name</option>
            <option value="Country">Country</option>
        </select>
        <select name="order">
            <option value="asc">Ascending</option>
            <option value="desc">Descending</option>
        </select>
        <button type="submit">Sort</button>
    </form>
</div>
</body>
</html>