<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/25/2024
  Time: 11:43 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-4">

<%
    Map<String, String> dic = new HashMap<>();
    dic.put("hello", "Xin chào");
    dic.put("fuck", "đm");
    dic.put("book", "vở");

    String search = request.getParameter("search");
    String result = dic.get(search);
%>

<h2>Simple Dictionary</h2>
<form action="dictionary.jsp" method="post" class="form-inline mb-3">
    <input type="text" name="search" class="form-control mr-2" placeholder="Enter your word">
    <input type="submit" id="submit" class="btn btn-primary" value="Search">
</form>

<div class="alert alert-info">
    <%
        if (result != null) {
    %>
    <strong>Word:</strong> <%= search %><br>
    <strong>Result:</strong> <%= result %>
    <%
    } else {
    %>
    <strong>Not found</strong>
    <%
        }
    %>
</div>

</body>
</html>