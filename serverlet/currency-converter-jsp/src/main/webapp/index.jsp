<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Currency Converter</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body class="container">
<h2 class="mt-4">Currency Converter</h2>
<form action="converter.jsp" method="post" class="mt-3">
    <div class="form-group">
        <label>Rate: </label>
        <input type="text" name="rate" class="form-control" placeholder="RATE" value="22000" />
    </div>
    <div class="form-group">
        <label>USD: </label>
        <input type="text" name="usd" class="form-control" placeholder="USD" value="0" />
    </div>
    <input type="submit" id="submit" class="btn btn-primary" value="Converter" />
</form>

</body>
</html>