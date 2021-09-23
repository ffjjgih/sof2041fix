<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <header class="row pt-5 pb-2">
            <div class="col-9">
                <h1>Noob Food</h1>
            </div>
            <div class="col-3 text-right">
                <img src="/img/logo.jpg" alt="" class="mr-4">
            </div>
        </header>
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
            
              <form class="row g-3 needs-validation" novalidate>
                <div class="col-8">
                    <div class="card">
                        <div class="card-header">
                          <label class="float-start">Địa chỉ nhận hàng</label>
                          <a href="#" class="btn btn-primary float-end"> sửa thông tin</a>
                        </div>
                        <div class="card-body">
                          <h5 class="card-title col-3">Bùi Cao Lâm</h5>
                          <label class="card-text col-3">0372905365</label>
                          <label class="card-text col-8">With supporting text below as a natural lead-in to additional content.</label>
                        </div>
                      </div>
                    <div class="card border-info mt-3">
                       
                        <div class="card-body">
                          <img src="abc.jpg" class="rounded float-start col-4" style="width:200px">
                          <h5 class="card-title col-3">Card title</h5>
                          <label class="col-3">số lượng: 1 </label>
                          <!--<input type="number" class="form-control" id="validationCustom03" required value="0"><br>-->
                          <label class="col-3"  >giá:10000đ </label>
                          <a href="#" class="btn btn-danger col-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                          </svg> xóa</a>
                        </div>
                      </div>
                      <div class="card border-info mt-3">
                        <div class="card-body">
                          <img src="abc.jpg" class="rounded float-start col-4" style="width:200px">
                          <h5 class="card-title col-3">Card title</h5>
                          <label class="col-3">số lượng: 1 </label>
                          <!--<input type="number" class="form-control" id="validationCustom03" required value="0"><br>-->
                          <label class="col-3"  >giá:10000đ </label>
                          <a href="#" class="btn btn-danger col-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                          </svg> xóa</a>
                        </div>
                      </div>
                      <div class="card border-info mt-3">
                       
                        <div class="card-body">
                          <img src="abc.jpg" class="rounded float-start col-4" style="width:200px">
                          <h5 class="card-title col-3">Card title</h5>
                          <label class="col-3">số lượng: 1 </label>
                          <!--<input type="number" class="form-control" id="validationCustom03" required value="0"><br>-->
                          <label class="col-3"  >giá:10000đ </label>
                          <a href="#" class="btn btn-danger col-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                          </svg> xóa</a>
                        </div>
                      </div>
                      <div class="card border-info mt-3">
                       
                        <div class="card-body">
                          <img src="abc.jpg" class="rounded float-start col-4" style="width:200px">
                          <h5 class="card-title col-3">Card title</h5>
                          <label class="col-3">số lượng: 1 </label>
                          <!--<input type="number" class="form-control" id="validationCustom03" required value="0"><br>-->
                          <label class="col-3"  >giá:10000đ </label>
                          <a href="#" class="btn btn-danger col-2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                            <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0z"/>
                          </svg> xóa</a>
                        </div>
                      </div>
                </div>
                <div class="col-4 ">
                    <div class="card border-danger" style="width: 27rem;">
                        <div class="card-header">
                            <label class="float-start">Chọn phương thức thanh toán</label>
                            <a href="#" class="btn btn-primary float-end"> xem tất cả</a>
                        </div>
                        <div class="card-body">
                            <div class="form-check border-success">
                                <label class="form-check-label" for="flexRadioDefault1">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-cash-stack" viewBox="0 0 16 16">
                                        <path d="M1 3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1H1zm7 8a2 2 0 1 0 0-4 2 2 0 0 0 0 4z"/>
                                        <path d="M0 5a1 1 0 0 1 1-1h14a1 1 0 0 1 1 1v8a1 1 0 0 1-1 1H1a1 1 0 0 1-1-1V5zm3 0a2 2 0 0 1-2 2v4a2 2 0 0 1 2 2h10a2 2 0 0 1 2-2V7a2 2 0 0 1-2-2H3z"/>
                                      </svg>Thanh toán khi nhận hàng
                                </label>
                                <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                                
                              </div>
                              <hr class="dropdown-divider">
                          <h4 class="card-title">Thông tin đơn hàng</h4>
                            <label>tạm tính(1 sản phẩm) </label>
                          <h6 class="card-text">14000đ </h6>
                          <label>phí giao hàng </label>
                          <h6 class="card-text">0đ </h6>
                          <hr class="dropdown-divider">
                          <label>Tổng cộng: </label>
                          <h6 class="card-text">14000đ </h6></br>
                        </div>
                        <div class="card-footer col-12">
                          <button class="btn btn-outline-success" type="submit"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-cart-check" viewBox="0 0 16 16">
                            <path d="M11.354 6.354a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                            <path d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zm3.915 10L3.102 4h10.796l-1.313 7h-8.17zM6 14a1 1 0 1 1-2 0 1 1 0 0 1 2 0zm7 0a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
                          </svg> đặt hàng</button>
                        </div>
                      </div>
                </div>
                
              </form>
        </section>
    </main>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
        crossorigin="anonymous"></script>
</body>
</html> 