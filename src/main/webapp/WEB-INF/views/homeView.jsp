<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- Favicon -->
    <!-- <link href="../public/img/favicon.ico" rel="icon"> -->
    <!-- <link rel="icon" href="../../public/img/favicon.ico"> -->
    <!-- <link href="${pageContext.request.contextPath}/public/img/favicon.ico" rel="icon"> -->

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
    
</head>
<body>
	<jsp:include page="./includes/header.jsp"></jsp:include>
   
    <div class="container-fluid">
        <div class="row px-xl-5">
            <c:forEach items="${productList}" var="product" >
                <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                    <div class="card product-item border-0 mb-4">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <!-- <img class="img-fluid w-100" src="../../image/${product.imageProduct}" alt=""> -->
                            <!-- <img class="img-fluid w-100" src="${pageContext.request.contextPath}/image/${product.imageProduct}" alt=""> -->
                            <!-- <img class="img-fluid w-100" src="../../image/product-1.jpg" alt=""> -->
                            <!-- <img src="C:/Users/nguye/eclipse-workspace/Demo/webapp/image/${product.imageProduct}" value= alt=""> -->
                            <img class="img-fluid w-100" src="<c:url value="/resources/img/${product.imageProduct}" />" />
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">${product.nameProduct}</h6>
                            <div class="d-flex justify-content-center">
                                <h6>${product.price} $</h6>
                                <!-- <h6 class="text-muted ml-2"><del>${product.price}</del></h6> -->
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>Xem chi tiết</a>
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Thêm vào giỏ hàng</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <jsp:include page="./includes/footer.jsp"></jsp:include>


    <!-- Back to Top -->
    <a href="#" class="btn btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


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