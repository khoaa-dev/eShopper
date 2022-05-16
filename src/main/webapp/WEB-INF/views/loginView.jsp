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
	<!-- <jsp:include page="_header.jsp"></jsp:include>
    <jsp:include page="_menu.jsp"></jsp:include> -->

    <h3>Login Page</h3>
    <p style="color: red;">${errorString}</p>

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
    

    <!-- <jsp:include page="_footer.jsp"></jsp:include> -->
</body>
</html>