<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Discount Calculator</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
<main class="container mt-5">
    <section class="row justify-content-center">
        <article class="col-md-6">
            <header class="text-center mb-4">
                <h1>Product Discount Calculator</h1>
            </header>
            <form action="calculate" method="post" class="card shadow">
                <fieldset class="card-body">
                    <legend class="visually-hidden">Product Information</legend>
                    <div class="mb-3">
                        <label for="productDescription" class="form-label">Product Description:</label>
                        <input type="text" class="form-control" id="productDescription" name="productDescription">
                    </div>
                    <div class="mb-3">
                        <label for="listPrice" class="form-label">List Price:</label>
                        <input type="text" class="form-control" id="listPrice" name="listPrice">
                    </div>
                    <div class="mb-3">
                        <label for="discountPercent" class="form-label">Discount Percent:</label>
                        <input type="text" class="form-control" id="discountPercent" name="discountPercent">
                    </div>
                    <button type="submit" class="btn btn-primary w-100">Calculate</button>
                </fieldset>
            </form>
        </article>
    </section>
</main>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>