<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<meta http-equiv="content-type" content="text/html"; charset="utf-8">
<head>
    <title>Simple Dictionary</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container mt-4">
<h2>Vietnamese Dictionary</h2>
<form action="dictionary.jsp" method="post" class="form-inline">
    <input type="text" name="search" class="form-control mr-2" placeholder="Enter your word">
    <input type="submit" id="submit" class="btn btn-primary" value="Search">
</form>

</body>
</html>