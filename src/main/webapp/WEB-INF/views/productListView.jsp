<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Product List</title>

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
   <style>
      .title {
         font-family: "Helvetica Neue", Roboto, Arial, "Droid Sans", sans-serif;
         font-size: 3rem;
         color: #73879C;
         font-weight: 500;
         line-height: 1.2;
      }

      .column-title {
         font-family: "Helvetica Neue", Roboto, Arial, "Droid Sans", sans-serif;
         font-size: 20px;
         font-weight: bold;
      }
   </style>
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
							<a href="index.html" class="nav-item nav-link active">Home</a>
							<a href="shop.html" class="nav-item nav-link">Shop</a>
							<a href="detail.html" class="nav-item nav-link">Shop Detail</a>
							<div class="nav-item dropdown">
								<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Pages</a>
								<div class="dropdown-menu rounded-0 m-0">
									<a href="cart.html" class="dropdown-item">Shopping Cart</a>
									<a href="checkout.html" class="dropdown-item">Checkout</a>
								</div>
							</div>
							<a href="${pageContext.request.contextPath}/productList" class="nav-item nav-link">Product Manager</a>
							<a href="contact.html" class="nav-item nav-link">Contact</a>
						</div>
						<div class="navbar-nav ml-auto py-0">
                     <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown">Hello ${user.userName}</a>
                        <div class="dropdown-menu rounded-0 m-0">
                              <a href="${pageContext.request.contextPath}/productList" class="dropdown-item">Product Manager</a>
                              <a href="checkout.html" class="dropdown-item">Logout</a>
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
           <h1 class="title text-center mb-5">PRODUCT MANAGEMENT</h1>
           <div class="row d-flex flex-row justify-content-between m-3">
             <div class="searh-box ">
                 <label for="search" class="mr-1" style="font-size: 20px">Nhập tên: </label>
                 <input type="text" name="search" id="search" class="" style="font-size: 20px">
                 <button type="submit" class="btn btn-primary">Tìm kiếm</button>
             </div>
     
             <div class="add-account-box">
                 <a href="${pageContext.request.contextPath}/createProduct" class="btn btn-primary" id="add-account-admin">Thêm sản phẩm</a>
             </div>
           </div>
           <div class="x_content">
             <div class="table-responsive">
                 <table class="table table-striped jambo_table bulk_action" >
                     <thead>
                        <tr class="headings text-center" style="font-size: 20px">
                           <th class="column-title" style="width: 15%">STT </th>
                           <th class="column-title" style="width: 21.25%">Tên sản phẩm</th>
                           <th class="column-title" style="width: 21.25%">Giá </th>
                           <th class="column-title" style="width: 21.25%">Hình ảnh </th>
                           <th class="column-title" style="width: 21.25%">Hành động </th>
                        </tr>
                     </thead>
   
                     <tbody class="text-center" style="font-size: 16px">
                        <c:set var="count" value="0" scope="page" ></c:set>
                        <c:forEach items="${productList}" var="product" >
                           <c:set var="count" value="${count + 1}" scope="page" ></c:set>
                           <tr class="even pointer">
                              <td class="align-items-center ">${count}</td>
                              <td class="align-items-center ">${product.nameProduct}</td>
                              <td class="align-items-center ">${product.price} $</td>
                              <td class="align-items-center ">
                                <img src="<c:url value="/resources/img/${product.imageProduct}" />" width="70px" height="70px" alt="">
                              </td>
                              <td class=" last">
                                <a href="${pageContext.request.contextPath}/editProduct?id=${product.id}" class="btn btn-warning" 
                                >Sửa</a>
                                <a href="${pageContext.request.contextPath}/deleteProduct?id=${product.id}" class="btn btn-danger" id="btn-view-order"
                                >Xóa</a>
                              </td>
                          </tr>
                        </c:forEach>
                         
                         
                     </tbody>
                 </table>
             </div>
   
   
           </div>
         </div>
       </div>
   </div>



   <jsp:include page="./includes/footer.jsp"></jsp:include>

   <!-- JavaScript Libraries -->
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
   <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
   <script src="../../public/lib/easing/easing.min.js"></script>
   <!-- <script src="../public/lib/easing/easing.min.js"></script> -->
   <!-- <script src="${pageContext.request.contextPath}/public/lib/easing/easing.min.js"></script> -->
   <script src="../../public/lib/owlcarousel/owl.carousel.min.js"></script>
   <!-- <script src="../public/lib/owlcarousel/owl.carousel.min.js"></script> -->
   <!-- <script src="${pageContext.request.contextPath}/public/lib/owlcarousel/owl.carousel.min.js"></script> -->

   <!-- Contact Javascript File -->
   <script src="../../public/mail/jqBootstrapValidation.min.js"></script>
   <!-- <script src="../public/mail/jqBootstrapValidation.min.js"></script> -->
   <!-- <script src="${pageContext.request.contextPath}/public/mail/jqBootstrapValidation.min.js"></script> -->
   <script src="../../public/mail/contact.js"></script>
   <!-- <script src="../public/mail/contact.js"></script> -->
   <!-- <script src="${pageContext.request.contextPath}/public/mail/contact.js"></script> -->

   <!-- Template Javascript -->
   <script src="../../public/js/main.js"></script>
   <!-- <script src="../public/js/main.js"></script> -->
   <!-- <script src="${pageContext.request.contextPath}/public/js/main.js"></script> -->
   <!-- <jsp:include page="../components/lib-js.jsp"></jsp:include> -->

 </body>
</html>