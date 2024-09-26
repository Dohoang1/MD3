<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh sách Khách hàng</title>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Danh sách Khách hàng</h1>

    <div class="table-responsive">
        <table class="table table-striped table-hover">
            <thead class="table-dark">
            <tr>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Địa chỉ</th>
                <th>Ảnh</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="customer" items="${customerList}">
                <tr>
                    <td>${customer.name}</td>
                    <td>${customer.birth}</td>
                    <td>${customer.address}</td>
                    <td><img src="${customer.image}" alt="${customer.name}" class="img-thumbnail" style="width: 100px;">
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div class="text-center mt-4">
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#customerModal">
            <i class="fas fa-user-plus me-2"></i>Thêm Khách hàng
        </button>
    </div>
</div>

<div class="modal fade" id="customerModal" tabindex="-1" aria-labelledby="customerModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header bg-primary text-white">
                <h5 class="modal-title" id="customerModalLabel">Thêm Khách hàng Mới</h5>
                <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal"
                        aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form action="AddCustomerServlet" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Tên</label>
                        <input type="text" class="form-control" id="name" name="name" placeholder="Tên" required>
                    </div>
                    <div class="mb-3">
                        <label for="birth" class="form-label">Ngày sinh</label>
                        <input type="date" class="form-control" id="birth" name="birth" required>
                    </div>
                    <div class="mb-3">
                        <label for="address" class="form-label">Địa chỉ</label>
                        <input type="text" class="form-control" id="address" name="address" placeholder="Địa chỉ"
                               required>
                    </div>
                    <div class="mb-3">
                        <label for="image" class="form-label">Ảnh URL</label>
                        <input type="text" class="form-control" id="image" name="image" placeholder="Ảnh URL" required>
                    </div>
                    <div class="text-end">
                        <button type="submit" class="btn btn-primary">
                            <i class="fas fa-save me-2"></i>Thêm Khách hàng
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>