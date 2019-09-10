<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>사용자 맞춤형 식품 공유 플랫폼, 베베맘마</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="./reallogin.css" rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">

<link rel="stylesheet" href="../css/open-iconic-bootstrap.min.css">
<link rel="stylesheet" href="../css/animate.css">

<link rel="stylesheet" href="../css/owl.carousel.min.css">
<link rel="stylesheet" href="../css/owl.theme.default.min.css">
<link rel="stylesheet" href="../css/magnific-popup.css">

<link rel="stylesheet" href="../css/aos.css">

<link rel="stylesheet" href="../css/ionicons.min.css">

<link rel="stylesheet" href="../css/bootstrap-datepicker.css">
<link rel="stylesheet" href="../css/jquery.timepicker.css">


<link rel="stylesheet" href="../css/flaticon.css">
<link rel="stylesheet" href="../css/icomoon.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body class="goto-here">
	<div class="py-1 bg-primary">
		<div class="container">
			<div
				class="row no-gutters d-flex align-items-start align-items-center px-md-0">
				<div class="col-lg-12 d-block">
					<div class="row d-flex">
						<div class="col-md pr-4 d-flex topper align-items-center">
							<div
								class="icon mr-2 d-flex justify-content-center align-items-center">
								<span class="icon-paper-plane"></span>
							</div>
							<%
								if ((String) session.getAttribute("id") == null) {
							%>
							<span class="text">로그인 되어있지 않음</span>
							<%
								} else {
							%>
							<span class="text"><%=(String) session.getAttribute("id")%>님
								안녕하세요.</span>
							<%
								}
							%>
						</div>
						<div
							class="col-md-5 pr-4 d-flex topper align-items-center text-lg-right">
							<span class="text">당신의 아이를 위한 식품정보 제공 &amp; 추천</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<nav
		class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
		id="ftco-navbar">
		<div class="container">
			<a class="navbar-brand" href="index.html">베베맘마</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#ftco-nav" aria-controls="ftco-nav"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="oi oi-menu"></span> Menu
			</button>

			<%
				if ((String) session.getAttribute("id") == null) {
			%>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">소개</a></li>
					<li class="nav-item"><button href="./login.jsp"
							class="nav-link">로그인</button></li>

				</ul>
			</div>
			<%
				} else {
			%>
			<div class="collapse navbar-collapse" id="ftco-nav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a href="index.html"
						class="nav-link">Home</a></li>
					<li class="nav-item"><a href="about.html" class="nav-link">소개</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" id="dropdown04"
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">우리아이
							이유식</a>
						<div class="dropdown-menu" aria-labelledby="dropdown04">
							<a class="dropdown-item" href="shop.html">1</a> <a
								class="dropdown-item" href="wishlist.html">2</a> <a
								class="dropdown-item" href="product-single.html">3</a> <a
								class="dropdown-item" href="cart.html">4</a> <a
								class="dropdown-item" href="checkout.html">5</a>
						</div></li>

					<li class="nav-item"><a href="blog.html" class="nav-link">베베맘마
							톡톡</a></li>
					<li class="nav-item"><a href="contact.html" class="nav-link">마이페이지</a></li>
					<li class="nav-item"><button href="./login.jsp"
							class="nav-link">로그아웃</button></li>

				</ul>
			</div>
			<%
				}
			%>


		</div>
	</nav>
	<!-- END nav -->


	<form method="post" id="LoginForm" action="login_action.jsp">
		<h3>로그인</h3>
		<div>
			<input id="login" type="text" id="loginId" name="loginId"
				placeholder="username"> <br> <input id="login"
				type="password" id="loginPw" name="loginPw" placeholder="password">
		</div>
		<button id="login" type="submit">LOGIN</button>
		<div id="signup">
			<p>
				Not registered?<a href="./signup.jsp">Create an account</a>
			</p>
		</div>
	</form>




	<footer class="ftco-footer ftco-section">
		<div class="container">

			<div class="row">
				<div class="col-md-12 text-center">

					<p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						Copyright &copy;
						<script>
							document.write(new Date().getFullYear());
						</script>
						All rights reserved | This template is made with <i
							class="icon-heart color-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					</p>
				</div>
			</div>
		</div>
	</footer>



	<!-- loader -->
	<div id="ftco-loader" class="show fullscreen">
		<svg class="circular" width="48px" height="48px">
		<circle class="path-bg" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke="#eeeeee" />
		<circle class="path" cx="24" cy="24" r="22" fill="none"
				stroke-width="4" stroke-miterlimit="10" stroke="#F96D00" /></svg>
	</div>


	<script src="../js/jquery.min.js"></script>
	<script src="../js/jquery-migrate-3.0.1.min.js"></script>
	<script src="../js/popper.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
	<script src="../js/jquery.easing.1.3.js"></script>
	<script src="../js/jquery.waypoints.min.js"></script>
	<script src="../js/jquery.stellar.min.js"></script>
	<script src="../js/owl.carousel.min.js"></script>
	<script src="../js/jquery.magnific-popup.min.js"></script>
	<script src="../js/aos.js"></script>
	<script src="../js/jquery.animateNumber.min.js"></script>
	<script src="../js/bootstrap-datepicker.js"></script>
	<script src="../js/scrollax.min.js"></script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
	<script src="../js/google-map.js"></script>
	<script src="../js/main.js"></script>

</body>
</html>