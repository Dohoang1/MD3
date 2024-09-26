<%@ page import="java.text.DecimalFormat" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/25/2024
  Time: 11:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.DecimalFormat" %>
<html>
<head>
    <title>Converter</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-4">
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;

    DecimalFormat df = new DecimalFormat("#,###");
%>




<h1>Converter Results</h1>
<div class="alert alert-info">
    <h4>Rate: <%=df.format(rate)%></h4>
    <h4>USD: <%=df.format(usd) + " USD"%></h4>
    <h4>VND: <%=df.format(vnd) + " VNĐ" %></h4>
</div>

</body>
</html>