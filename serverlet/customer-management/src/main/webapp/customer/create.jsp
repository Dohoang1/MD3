<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">
<head>
  <title>Create new customer</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h1>Create new customer</h1>
  <p>
    <c:if test='${requestScope["message"] != null}'>
      <span class="alert alert-success">${requestScope["message"]}</span>
    </c:if>
  </p>
  <p>
    <a href="/customers" class="btn btn-secondary">Back to customer list</a>
  </p>
  <form method="post">
    <fieldset>
      <legend>Customer information</legend>
      <table class="table table-striped">
        <tr>
          <td>Name: </td>
          <td><input type="text" name="name" id="name" class="form-control"></td>
        </tr>
        <tr>
          <td>Email: </td>
          <td><input type="text" name="email" id="email" class="form-control"></td>
        </tr>
        <tr>
          <td>Address: </td>
          <td><input type="text" name="address" id="address" class="form-control"></td>
        </tr>
        <tr>
          <td></td>
          <td><input type="submit" value="Create customer" class="btn btn-primary"></td>
        </tr>
      </table>
    </fieldset>
  </form>
</div>
</body>
</html>