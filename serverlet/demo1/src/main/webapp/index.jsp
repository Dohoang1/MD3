<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Facebook - Đăng nhập hoặc đăng ký</title>
</head>
<body>
<div class="container">
    <div class="row d-flex justify-content-center align-items-center vh-100">
        <div class="col-lg-10">
            <div class="row">
                <div class="col-lg-6 d-flex flex-column justify-content-center">
                    <h1 class="facebook-logo font-weight-bold">fakebook</h1>
                    <h2 class="h4 mb-4">Fakebook giúp bạn mất kết nối và chia sẻ với không một ai trong cuộc sống của
                        bạn.</h2>
                </div>
                <div class="col-lg-6">
                    <div class="login-card">
                        <form>
                            <div class="mb-3">
                                <input type="text" class="form-control form-control-lg"
                                       placeholder="Email hoặc số điện thoại">
                            </div>
                            <div class="mb-3">
                                <input type="password" class="form-control form-control-lg" placeholder="Mật khẩu">
                            </div>
                            <button type="submit" class="btn btn-primary btn-lg w-100 mb-3 btn-login">Đăng nhập</button>
                            <div class="text-center mb-3">
                                <a href="#" class="text-decoration-none">Quên mật khẩu?</a>
                            </div>
                            <div class="divider"></div>
                            <div class="text-center mt-4">
                                <button type="button" class="btn btn-success btn-lg btn-new-account"
                                        data-bs-toggle="modal" data-bs-target="#registerModal">
                                    Tạo tài khoản mới
                                </button>
                            </div>
                        </form>
                    </div>
                    <p>
                        <strong>Tạo Trang</strong> dành cho người nổi tiếng, thương hiệu hoặc doanh nghiệp.
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="registerModal" tabindex="-1" aria-labelledby="registerModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="registerModalLabel">Đăng ký</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="row mb-3">
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Họ">
                        </div>
                        <div class="col">
                            <input type="text" class="form-control" placeholder="Tên">
                        </div>
                    </div>
                    <div class="mb-3">
                        <input type="text" class="form-control" placeholder="Số di động hoặc email">
                    </div>
                    <div class="mb-3">
                        <input type="password" class="form-control" placeholder="Mật khẩu mới">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Ngày sinh</label>
                        <div class="row">
                            <div class="col">
                                <select class="form-select">
                                    <option selected>Ngày</option>
                                </select>
                            </div>
                            <div class="col">
                                <select class="form-select">
                                    <option selected>Tháng</option>
                                </select>
                            </div>
                            <div class="col">
                                <select class="form-select">
                                    <option selected>Năm</option>

                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">Giới tính</label>
                        <div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="female">
                                <label class="form-check-label" for="female">Nữ</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="male">
                                <label class="form-check-label" for="male">Nam</label>
                            </div>
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="gender" id="custom">
                                <label class="form-check-label" for="custom">Tùy chỉnh</label>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3">
                        <small class="text-muted">Những người dùng dịch vụ của chúng tôi có thể đã tải thông tin liên hệ
                            của bạn lên Facebook. Tìm hiểu thêm.</small>
                        <br>
                        <small class="text-muted">Bằng cách nhấp vào Đăng ký, bạn đồng ý với Điều khoản, Chính sách
                            quyền riêng tư và Chính sách cookie của chúng tôi. Bạn có thể nhận được thông báo của chúng
                            tôi qua SMS và hủy nhận bất kỳ lúc nào.</small>
                    </div>
                    <div class="text-center">
                        <button type="submit" class="btn btn-success btn-lg">Đăng ký</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>


<link rel="stylesheet" href="myCSS.css">
<link href="bootstrap.min.css" rel="stylesheet">
<script src="bootstrap.bundle.min.js"></script>



</body>
</html>

