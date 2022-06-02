<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="../../public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <!-- <link href="../public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"> -->
    <!-- <link href="${pageContext.request.contextPath}/public/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"> -->

    <!-- Customized Bootstrap Stylesheet -->
    <link href="../../public/css/style.css" rel="stylesheet">
    <!-- <link href="../public/css/style.css" rel="stylesheet"> -->
    <!-- <link href="${pageContext.request.contextPath}/public/css/style.css" rel="stylesheet"> -->
    <!-- <jsp:include page="../components/lib-css.jsp"></jsp:include> -->

    <link rel="stylesheet" href="../../resources/css/custom.css">
    <script src="../../resources/js/custom.js"></script>
</head>
<body>
    <div class="container-fluid">
        <div class="row bg-secondary py-2 px-xl-5">
           <div class="col-lg-6 d-none d-lg-block">
              <div class="d-inline-flex align-items-center">
                 <a class="text-dark" href="">FAQs</a>
                 <span class="text-muted px-2">|</span>
                 <a class="text-dark" href="">Help</a>
                 <span class="text-muted px-2">|</span>
                 <a class="text-dark" href="">Support</a>
              </div>
           </div>
           <div class="col-lg-6 text-center text-lg-right">
              <div class="d-inline-flex align-items-center">
                 <a class="text-dark px-2" href="">
                    <i class="fab fa-facebook-f"></i>
                 </a>
                 <a class="text-dark px-2" href="">
                    <i class="fab fa-twitter"></i>
                 </a>
                 <a class="text-dark px-2" href="">
                    <i class="fab fa-linkedin-in"></i>
                 </a>
                 <a class="text-dark px-2" href="">
                    <i class="fab fa-instagram"></i>
                 </a>
                 <a class="text-dark pl-2" href="">
                    <i class="fab fa-youtube"></i>
                 </a>
              </div>
           </div>
        </div>
        <div class="row align-items-center py-3 px-xl-5">
           <div class="col-lg-3 d-none d-lg-block">
              <a href="" class="text-decoration-none">
                 <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
              </a>
           </div>
           <div class="col-lg-6 col-6 text-left">
              <form action="">
                 <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for products">
                    <div class="input-group-append">
                       <span class="input-group-text bg-transparent text-primary">
                          <i class="fa fa-search"></i>
                       </span>
                    </div>
                 </div>
              </form>
           </div>
           <div class="col-lg-3 col-6 text-right">
              <a href="" class="btn border">
                 <i class="fas fa-heart text-primary"></i>
                 <span class="badge">0</span>
              </a>
              <a href="" class="btn border">
                 <i class="fas fa-shopping-cart text-primary"></i>
                 <span class="badge">0</span>
              </a>
           </div>
        </div>
    </div>
    <!-- Topbar End -->

    <!-- Navbar Start -->
    <div class="container-fluid mb-5">
    <div class="row border-top px-xl-5">
        
        <div class="col-lg-12">
            <nav class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0">
                <a href="" class="text-decoration-none d-block d-lg-none">
                <h1 class="m-0 display-5 font-weight-semi-bold"><span class="text-primary font-weight-bold border px-3 mr-1">E</span>Shopper</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarCollapse">
                <div class="navbar-nav mr-auto py-0">
                    <a href="index.html" class="nav-item nav-link active">Trang chủ</a>
                    <a href="shop.html" class="nav-item nav-link">Cửa hàng</a>
                    <a href="detail.html" class="nav-item nav-link">Liên hệ</a>
                </div>
                <div class="navbar-nav ml-auto py-0">
                  <div class="nav-item dropdown">
                      <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Xin chào ${user.userName}</a>
                      <div class="dropdown-menu rounded-0 m-0">
                              <a href="${pageContext.request.contextPath}/productList" class="dropdown-item">Quản lý sản phẩm</a>
                              <a href="checkout.html" class="dropdown-item">Đăng xuất</a>
                      </div>
                  </div>
                  </div>
                </div>
            </nav>
            
        </div>
    </div>
    </div>
    <!-- Navbar End -->

    <div class="container">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                    <h4 class="d-flex justify-content-between"> THÊM SẢN PHẨM
                       <a href="" class="btn btn-primary float-end">Trở lại trang trước</a>
                    </h4>
                    </div>
                    <div class="card-body" style="font-size: 20px">
                    <form action="${pageContext.request.contextPath}/createProduct" method="POST" enctype="multipart/form-data">
                          <div class="form-group">
                          <label for="nameProduct">Tên sản phẩm:</label>
                          <input type="text" name="nameProduct" id="name" class="form-control" value="${product.nameProduct}">
                          </div>
                          <div class="form-group">
                          <label for="price">Giá:</label>
                          <input type="text" name="price" id="price" class="form-control" value="${product.price}">
                          </div>
              
                          <div class="form-group">
                          <label for="image">Hình ảnh:</label>
                          <input type="file" name="imageProduct" id="image" class="form-control">
                          </div>
                          <div class="form-group d-flex justify-content-end">
                          <button type="button" class="btn btn-secondary mr-3" data-dismiss="modal">Hủy</button>
                          <button type="submit" class="btn btn-primary">Thêm sản phẩm</button>
                          </div>
                       </form>
                    </div>
                 </div>
            </div>
        </div>
    </div>


    <jsp:include page="./includes/footer.jsp"></jsp:include>
</body>
</html>