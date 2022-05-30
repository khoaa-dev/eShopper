<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
		rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
	
	<link rel="stylesheet" href="../public/fontawesome-free-6.1.1-web/css/all.min.css">
	<link rel="stylesheet" href="../public/fontawesome-free-6.1.1-web/js/all.min.js"> -->

	<!-- <@include file="components/css-js.jsp" /> -->
	<!-- <jsp:include page="../components/lib-css.jsp"></jsp:include> -->
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
							<a href="${pageContext.request.contextPath}/login" class="nav-item nav-link">Login</a>
							<a href="" class="nav-item nav-link">Register</a>
						</div>
					</div>
				</nav>
				
			</div>
		</div>
	</div>
	<!-- Navbar End -->


	<div class="container">
		<div class="row">
			<div class="col-4"></div>
			<div class="col-4 d-flex justify-content-center">
				<form method="POST" class="w-100" action="${pageContext.request.contextPath}/login"> 
				  <!-- Email input -->
				  <div class="form-outline mb-4">
					<label class="form-label" for="form2Example1">Username</label>
					<input type="text" id="form2Example1" class="form-control" 
						name="userName" value= "${user.userName}">
				  </div>
				
				  <!-- Password input -->
				  <div class="form-outline mb-4">
					<label class="form-label" for="form2Example2">Password</label>
					<input type="text" id="form2Example2" class="form-control" 
						 name="password" value= "${user.password}"  />
				  </div>
				
				  <!-- 2 column grid layout for inline styling -->
				  <div class="row mb-4">
					<div class="col d-flex justify-content-center">
					  <!-- Checkbox -->
					  <div class="form-check">
						<input class="form-check-input" type="checkbox" value="" id="form2Example31" checked 
							name="rememberMe" value= "Y" />
						<label class="form-check-label" for="form2Example31"> Remember me </label>
					  </div>
					</div>
				
					<div class="col">
					  <!-- Simple link -->
					  <a href="#!">Forgot password?</a>
					</div>
				  </div>
				
				  <!-- Submit button -->
				  <div class="row mb-4 w-100">
					  <div class="col d-flex justify-content-center">
						<button type="submit" class="btn btn-primary btn-block mb-4" value="Submit">Sign in</button>
					  </div>
				  </div>
				
				  <!-- Register buttons -->
				  <div class="text-center">
					<p>Not a member? <a href="#!">Register</a></p>
				  </div>
				</form>
			</div>
			<div class="col-4"></div>
		</div>
	</div>
    
	<jsp:include page="./includes/footer.jsp"></jsp:include>
    
</body>
</html>