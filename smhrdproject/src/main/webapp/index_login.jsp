<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Stellar by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>

<header id="header1">
	<nav id="nav1">
		<ul>
			<li><a href="index_main.jsp" class="btn-3d cyan" >Home</a></li>
		</ul>
	</nav>
</header>

<head>
	<title>Stellar by HTML5 UP</title>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<link rel="stylesheet" href="assets/css/main.css" />
	<noscript>
		<link rel="stylesheet" href="assets/css/noscript.css" />
	</noscript>
</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">
		<!-- Main test start -->
		<section id="banner">
			<div class="content">
				<h2>Welcome to Coach Fix</h2>
				<br>
			</div>
		</section>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li><a></a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- 로그인 -->
			<section id="login" class="main">
				<header>
					<form action="signIn" method="post" id="login-form">
						<br>
						<h2 type="login">로그인</h2>
						<h6 type="login">or use your email for registration</h6>
						<input type="text" name="email" placeholder="Email"/>
						<input type="password" name="pw" placeholder="Password" />
						<div class="btn-container">
							<a href="#" type="login">Forgot your password?</a>
							<br><br>
							<!-- <button type="submit"class="btn4-3d">Login</button> -->
							<button type="submit" class="btn4-3d" style="font-size:25px">Login</button>
							<a href="index_signup.jsp" class="btn4-3d">Sign up</a>
						</div>
					</form>
				</header>
			</section>
			
		</div>


		</section>

		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>팀원 정보</h2>
				<p>
				김강운(팀장)
				<br>
				장한상(부팀장)
				<br>
				김도원(팀원)
				<br>
				김민성(팀원)
				<br>
				손준수(팀원)
				</p>
				<!-- <ul class="actions">
						<li><a href="generic.html" class="button">Learn More</a></li>
					</ul> -->
			</section>
			<section>
				<h2>코픽스</h2>
				<dl class="alt">
					<dt>Address</dt>
					<dd>광주광역시 남구 송암로 60 CGI센터 2층 4교육실</dd>
					<dt>Phone</dt>
					<dd>010 - 6290 - 6460</dd>
					<dt>Email</dt>
					<dd><a href="#">gnm0629@naver.com</a></dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span class="label">Twitter</span></a>
					</li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span class="label">Facebook</span></a>
					</li>
					<li><a href="#" class="icon brands fa-instagram alt"><span class="label">Instagram</span></a>
					</li>
					<li><a href="#" class="icon brands fa-github alt"><span class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span class="label">Dribbble</span></a>
					</li>
				</ul>
			</section>
		</footer>


	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.scrollex.min.js"></script>
	<script src="assets/js/jquery.scrolly.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>

</html>