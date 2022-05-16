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
 </head>
 <body>

	<jsp:include page="./includes/header.jsp"></jsp:include>

    <h3>Product List</h3>

    <p style="color: red;">${errorString}</p>

    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Code</th>
          <th>Name</th>
          <th>Price</th>
          <th>Edit</th>
          <th>Delete</th>
       </tr>
       <c:forEach items="${productList}" var="product" >
          <tr>
             <td>${product.code}</td>
             <td>${product.name}</td>
             <td>${product.price}</td>
             <td>
                <a href="editProduct?code=${product.code}">Edit</a>
             </td>
             <td>
                <a href="deleteProduct?code=${product.code}">Delete</a>
             </td>
          </tr>
       </c:forEach>
    </table>

    <a href="createProduct" >Create Product</a>

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