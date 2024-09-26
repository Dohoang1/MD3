<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <title>com.example.calculator.Calculator</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<h1 class="text-center">Máy tính cơ bản</h1>

<form action="CalculatorServlet" method="post" class="container mt-4">
  <div class="form-group">
    <input type="text" name="operand1" class="form-control" placeholder="Toán hạng 1">
  </div>
  <div class="form-group">
    <select name="operator" class="form-control">
      <option value="+">Cộng</option>
      <option value="-">Trừ</option>
      <option value="*">Nhân</option>
      <option value="/">Chia</option>
    </select>
  </div>
  <div class="form-group">
    <input type="text" name="operand2" class="form-control" placeholder="Toán hạng 2">
  </div>
  <input type="submit" class="btn btn-primary" value="Tính">
</form>
</body>
</html>