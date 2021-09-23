<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>Assignment</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
</head>

<body>
    <main class="container">
        <nav class="row">
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="/Finaljava4/Customer/Home.jsp">Noob Food</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item active"><a class="nav-link" href="/Finaljava4/Customer/Favorites.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-calendar-event " viewBox="0 0 16 16">
                                        <path
                                            d="M11 6.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                                        <path
                                            d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM1 4v10a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V4H1z" />
                                    </svg> đặt bàn </a></li>
                            <li class="nav-item dropdown" aria-expanded="true">
                            <li class="nav-item"><a class="nav-link" href="/Finaljava4/Customer/Favorites.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-egg-fried" viewBox="0 0 16 16">
                                        <path d="M8 11a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                        <path
                                            d="M13.997 5.17a5 5 0 0 0-8.101-4.09A5 5 0 0 0 1.28 9.342a5 5 0 0 0 8.336 5.109 3.5 3.5 0 0 0 5.201-4.065 3.001 3.001 0 0 0-.822-5.216zm-1-.034a1 1 0 0 0 .668.977 2.001 2.001 0 0 1 .547 3.478 1 1 0 0 0-.341 1.113 2.5 2.5 0 0 1-3.715 2.905 1 1 0 0 0-1.262.152 4 4 0 0 1-6.67-4.087 1 1 0 0 0-.2-1 4 4 0 0 1 3.693-6.61 1 1 0 0 0 .8-.2 4 4 0 0 1 6.48 3.273z" />
                                    </svg> đồ ăn </a></li>
                            <li class="nav-item dropdown">
                            <li class="nav-item"><a class="nav-link" href="/Finaljava4/Customer/Favorites.jsp">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor"
                                        class="bi bi-cart4" viewBox="0 0 16 16">
                                        <path
                                            d="M0 2.5A.5.5 0 0 1 .5 2H2a.5.5 0 0 1 .485.379L2.89 4H14.5a.5.5 0 0 1 .485.621l-1.5 6A.5.5 0 0 1 13 11H4a.5.5 0 0 1-.485-.379L1.61 3H.5a.5.5 0 0 1-.5-.5zM3.14 5l.5 2H5V5H3.14zM6 5v2h2V5H6zm3 0v2h2V5H9zm3 0v2h1.36l.5-2H12zm1.11 3H12v2h.61l.5-2zM11 8H9v2h2V8zM8 8H6v2h2V8zM5 8H3.89l.5 2H5V8zm0 5a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0zm9-1a1 1 0 1 0 0 2 1 1 0 0 0 0-2zm-2 1a2 2 0 1 1 4 0 2 2 0 0 1-4 0z" />
                                    </svg> giỏ hàng </a></li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-user"></i> Account
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="/Finaljava4/Customer/Login.jsp">Login</a></li>
                                    <li><a class="dropdown-item" href="/Finaljava4/Customer/Changepassword.jsp">change
                                            password
                                        </a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">logout</a></li>
                                    <li><a class="dropdown-item" href="#">Edit profile</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        </nav>
        <section class="row">
              <form class="row g-3 needs-validation" method="POST" action="/dam/Appontment" novalidate>
                <div class="col-4">
                    <input type="date" class="form-control" id="thoi_gian" required value="19/02/2021">
                </div>
                <div class="col-4">
                    <input type="time" class="form-control" id="thoi_gian" required value="20:00">
                </div>
                <div class="col-6">
                    <label for="adresss" class="form-label">Địa Chỉ</label>
                    <select class="form-select" aria-label="Default select example" name="address">
                        <option selected value="1">Shop House, 30 Nguyễn Chánh, Khu đô thị Nam Trung Yên, Cầu Giấy, Hà Nội</option>
                        <option value="2">95 Đường Lê Đức Thọ, đối diện sân, Nam Từ Liêm, Hà Nội</option>
                        <option value="3">Lô T166, Tầng 1 TTTM Aeon Mall Hà Đông, Hà Đông, Hà Nội</option>
                        <option value="4">25 Nguyễn Khang, Yên Hoà, Cầu Giấy, Hà Nội</option>
                        <option value="5">1 Thái Hà, Trung Liệt, Đống Đa, Hà Nội</option>
                      </select>
                </div>
                <div class="col-12">
                  <label for="validationCustomUsername" class="form-label">bàn</label></br>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="loaiban" id="loaiban1" value="2 người" checked>
                    <label class="form-check-label" for="loaiban1">2 người</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="loaiban" id="loaiban2" value="4 người">
                    <label class="form-check-label" for="loaiban2">4 người </label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input class="form-check-input" type="radio" name="loaiban" id="loaiban3" value="6 người">
                    <label class="form-check-label" for="loaiban3">6 người</label>
                  </div>
                </div>
                <div class="col-md-6">
                  <label for="soluong" class="form-label">số bàn</label>
                  <input type="number" class="form-control" id="soluong" name="soluong" required value="0">
                  <div class="invalid-feedback">
                    Please provide a table number
                  </div>
                </div>
                <div class="col-12">
                  <button class="btn btn-danger" formaction="/dam/Appointment/book?index=${idcustomer }" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-calendar2-check-fill" viewBox="0 0 16 16">
                    <path d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zm9.954 3H2.545c-.3 0-.545.224-.545.5v1c0 .276.244.5.545.5h10.91c.3 0 .545-.224.545-.5v-1c0-.276-.244-.5-.546-.5zm-2.6 5.854a.5.5 0 0 0-.708-.708L7.5 10.793 6.354 9.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                  </svg> đặt lịch</button>
                </div>
              </form>
        </section>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html>