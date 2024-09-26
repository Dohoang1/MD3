<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>View Customer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="mb-4">Customer Details</h1>

    <a href="/customers" class="btn btn-secondary mb-3">Back to customer list</a>

    <div class="card">
        <div class="card-body">
            <h5 class="card-title">Customer Information</h5>
            <table class="table table-borderless">
                <tbody>
                <tr>
                    <th scope="row">Name:</th>
                    <td>${requestScope["customer"].getName()}</td>
                </tr>
                <tr>
                    <th scope="row">Email:</th>
                    <td>${requestScope["customer"].getEmail()}</td>
                </tr>
                <tr>
                    <th scope="row">Address:</th>
                    <td>${requestScope["customer"].getAddress()}</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>