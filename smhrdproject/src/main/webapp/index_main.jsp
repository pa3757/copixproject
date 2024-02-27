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

<header id="header1" style="height: 80px;">
	<nav id="nav1">
		<ul>
		<c:if test="${empty result.mb_Email }"  >
			<li><a href="index_main.jsp" class="btn-3d cyan">Home</a></li>
			<li><a href="index_login.jsp" class="btn-3d cyan">Login</a></li>
			<li><a href="index_signup.jsp" class="btn-3d cyan">Sign up</a>
			</c:if>
		</ul>
		<ul style="padding-top: 30px; margin-top: 35px;">	
		<c:if test="${not empty result.mb_Email }">
			<li><a href="logOut" class="btn-3d cyan" style="margin-top: 10px;">logout</a></li>
			<form action="selectresult" method="get">
			<li><input type="submit" class="btn-3d cyan" value="Mypage" style="font-size: 20px; height:45px; margin-top:5px; background-color: #616060; outline:none;" >
			</form>
		</c:if>
		</ul>
	</nav>
</header>
	<input type="url">
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
				<p></p>
					안녕하세요. 거북목 진단을 통해 개인에게 필요한 자세 및 운동정보를 제공해주는 서비스입니다.
					<br>
					<h3>거북목 테스트를 시작하시겠습니까?</h3>
					<a href="index_testText.jsp" class="button scrolly" style="background-color: white;">Let's go</a>
				</p>
			</div>
		</section>
		
		<article class="section-banner">
			<!-- Main banner -->
			<div id="carousel">
				<div class="slides">
					<div class="slide">
						<img src="images/배너3.jpg" alt="Slide 1">
					</div>
					<div class="slide">
						<img src="images/배너1.jpg" alt="Slide 2">
					</div>
					<div class="slide">
						<img src="images/배너2.jpg" alt="Slide 3">
					</div>
				</div>
			</div>
		</article>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="#intro" class="active">코픽스그램</a></li>
					<li><a href="#first">운동정보</a></li>
				</ul>
			</nav>

			<!-- Main -->
			<div id="main">

				<!-- Introduction -->
				<section id="intro" class="main">
					<div class="spotlight">
						<div class="content">
							<header class="major">
								<h2>Coach Fix Gram</h2>
							</header>
							<!-- 게시물업로드 -->
							<form action="upLoad" id="post-form">
								<input type="file" name="postFile" id="file-upload" accept="image/*">
								<br><br>
								<input type="text" name="postContent" id="caption" placeholder="게시물 내용을 입력하세요">
								<input type="hidden" name="emailtoken" value="${result.mb_Email }">
								<br>
								<c:if test="${not empty result.mb_Email }">
								<button type="submit">Upload</button>
								</c:if>
								<c:if test="${empty result.mb_Email }">
								<button type="button" onclick="location.href='index_login.jsp'">로그인후작성가능합니다</button>
								</c:if>
								<!-- <ul class="actions">
								<li><a class="button">Upload</a></li>
							</ul> -->
							</form>
							<header class="major">
								<h2>List Of Post</h2>
							</header>
							<ul id="post-list">
								<!-- 여기에 업로드된 게시물이 추가됩니다 -->
								<c:forEach var="item" items="${postList}">
								<img src="./images/${item.post_File}" width="300px" height="400px">
								<p>${item.post_Content }</p>
								<form action="" method="post">
								<textarea name="comment" rows="4px" cols="1px"></textarea>
								<button type="submit">댓글 작성</button>
								</form>
								</c:forEach>
							</ul>
						</div>
					</div>
				</section>

				<!-- First Section -->
				<section id="first" class="main special">
					<header class="major">
						<h2>운동정보</h2>
					</header>
					<ul class="features">
						<div class="row">
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://youtube.com/shorts/lNjv9xZrxJc?si=yfmxNezHmS5xcBuk" class="image"><img src="./images/김계란스트레칭.jpg" width="250px" height="400px"></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://www.youtube.com/shorts/aDbqk7JbpEs" class="image"><img src="./images/거북목스트레칭.jpg" width="250px" height="400px"></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://www.youtube.com/shorts/LIRRMdkk3IQ" class="image"><img src="./images/거북목교정운동.jpg" width="250px" height="400px"></a>
								</div>
							</li>
						</div>
						<div class="row">
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://www.youtube.com/shorts/_fiJeqBtgzg" class="image"><img src="./images/거북목교정운동2.jpg" width="250px" height="400px"></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://youtu.be/kgCj8UUEWjU?si=diPpw83-lb4aaceN" class="image"><img src="./images/10분거북목.jpg"width="250px" height="400px"></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://youtu.be/3aTPapvWpKs?si=xSLod5uSC4T8IweG" class="image"><img src="./images/12주교정루틴.jpg" width="250px" height="400px"></a>
								</div>
							</li>
						</div>
						<div class="row">
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://youtu.be/5kjKYj7Dyh0?si=OANGst_Wh44LCWJh" class="image"><img src="./images/10분상체교정.jpg" width="250px" height="400px"></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://youtu.be/fFTCnquxJbA?si=WfH_0hz_OfitP88V" class="image"><img src="./images/8분상체교정.jpg" width="250px" height="400px"></a>
								</div>
							</li>
							<li>
								<div class="col-4 col-6-medium col-12-small">
									<a href="https://youtu.be/ILbiDeN5GK0?si=MvpciKh-syXvzXwc" class="image"><img src="./images/거북목교정.jpg" width="250px" height="400px"></a>
								</div>
							</li>
						</div>
					</ul>


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