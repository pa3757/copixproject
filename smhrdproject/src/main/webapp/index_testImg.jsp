<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<c:set var="path" value="${pageContext.request.contextPath }" />
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
			<li><a href="index_main.jsp" class="btn-3d cyan">Home</a></li>
				<c:if test="${not empty result.mb_Email }">
			<li><a href="logOut" class="btn-3d cyan">Logout</a></li>
				</c:if>
			<!-- <li><a href="#" class="btn-3d cyan">Sign up</a> -->
		</ul>
	</nav>
</header>

<head>
<title>Stellar by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
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
				<p>
					안녕하세요. 거북목 진단을 통해 개인에게 필요한 자세 및 운동정보를 제공해주는 서비스입니다. <br>
				<h3>테스트 종류를 선택해주세요</h3>
				</p>

			</div>
		</section>


		<!--테스트 버튼 생성  -->
		<section id="intro1">
			<div class="inner">
				<ul class="actions">
					<li><a href="index_testText.jsp" class="button scrolly">설문지
							테스트</a></li>
					<li><a href="#two" class="button scrolly">이미지 테스트</a></li>
				</ul>
			</div>
		</section>



		<!-- Nav -->
		<nav id="nav2">
			<ul>
				<li><a class="icon solid fa-user-md fa-2x"></a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">

			<!-- 이미지 테스트 페이지 -->

			<!-- 이미지 테스트 시작페이지 -->
			<section id="two" class="main special">
				<main class="spotlight2">
					<header class="major">
						<h2 class="turtle test">Let's Start</h2>
						<br>
					</header>
					<section class="result-container">
						<main class="result-text2">


							<ul>
								<li>촬영 예시</li>
								<li><img src="./images/예시.jpg" width="400px" height="500px" /></li>
							</ul>


						</main>
						<main class="result-text2">


							<ul>
								<li><strong style="color: red;">사진 업로드 유의사항</strong></li>
								<li>1. 편한자세로 촬영해주세요</li>
								<li>2. 상반신이 드러나게 촬영해주세요</li>
								<li>3. 목이 드러나게끔 촬영해주세요</li>
								<li>4. 두 손을 아래로 편하게 내려주세요</li>
								<li>5. 오른쪽을 보고 촬영해주세요</li>
							</ul>
						</main>
					</section>
					<br>
					<ul style="list-style: none; padding: 0; margin: 0;">
					    <li style="display: inline-block;">
					        <a href="http://127.0.0.1:5555/" class="button scrolly">테스트 시작</a>
					    </li>
					    <li style="display: inline-block;">
					        <form action="selectR" method="get">
					            <button type="submit" style="display: inline-block;">테스트 결과보기</button>
					        </form>
					    </li>
					</ul>
				</main>
			</section>


			<!-- 이미지 테스트 진행 페이지 -->
			<section id="survey" class="main special">
				<main class="spotlight2">
					<header class="major">
						<h2>Test Result</h2>
					</header>
					<section class="result-container">
						<main class="result-text2">
							<ul>
						<br><br>
								<li>업로드 이미지</li>
								<li><img src="./images/${selectR.turtle_N }" width="400px" height="500px" /></li>
							</ul>
						</main>
						<main class="result-text2">
						<ul>
						<br><br>
							<li><a>당신의 거북목 상태는 </a></li>
							<li>목의 각도 : ${selectR.angle }</li>
							<li>상태 : ${selectR.score } 입니다.</li>
							<li><a>측정기준 : 각도</a></li>
							<li>12 이상 : very bad</li>
							<li>10이상 12미만 : bad</li>
							<li>7이상 10미만 : normal</li>
							<li>5이상 7미만 : good</li>
							<li>3이상 5미만 : very good</li>
						</ul>
						</main>
					</section>
					<br>
					<br>
					<ul style="list-style: none; padding: 0; margin: 0;">
					<c:if test="${empty result.mb_Email }">
					<li style="display: inline-block;">
					        <a href="index_login.jsp" class="button scrolly">저장</a>
					    </li>
					</c:if>
					<c:if test="${not empty result.mb_Email }">
					    <li style="display: inline-block;">
					     	<form action="selectresult" method="get">
						<input  id="mypagebtn" type="submit" value="저장">
							</form>
							</li>
					</c:if>
						<li style="display: inline-block;">
					        <a href="index_testImg.jsp" class="button scrolly">다시하기</a>
					    </li>
					</ul>
					</main>
			</section>

			<!-- 이미지 테스트 결과페이지 -->
<!-- 
			<section id="myresult" class="main special">
				<main class="spotlight2">
					<header class="major">
						<h2>Test Result</h2>
					</header>
					<section class="result-container">
						<main class="chart-container">
							<header class="pie-chart pie-chart1">
								<span class="center">80%</span>
							</header>
						</main>
						<main class="result-text">
							<li><a>당신의 거북목 상태는 </a>
								<h2>80%</h2> <a>진단이 되었습니다.</a></li>
						</main>
					</section>
					<br>
					<br>
					<li>
					<a href="index_testImg.jsp" class="button scrolly">다시하기</a>
					</li>
					 <img src="" alt="">

				</main>
			</section>
		</div>
 -->

		<section id="excute" class="main special">
			<article id="test-excute" class="panel"></article>
		</section>


		<!-- Footer -->
		<footer id="footer">
			<section>
				<h2>팀원 정보</h2>
				<p>
					김강운(팀장) <br> 장한상(부팀장) <br> 김도원(팀원) <br> 김민성(팀원) <br>
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
					<dd>
						<a href="#">gnm0629@naver.com</a>
					</dd>
				</dl>
				<ul class="icons">
					<li><a href="#" class="icon brands fa-twitter alt"><span
							class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands fa-facebook-f alt"><span
							class="label">Facebook</span></a></li>
					<li><a href="#" class="icon brands fa-instagram alt"><span
							class="label">Instagram</span></a></li>
					<li><a href="#" class="icon brands fa-github alt"><span
							class="label">GitHub</span></a></li>
					<li><a href="#" class="icon brands fa-dribbble alt"><span
							class="label">Dribbble</span></a></li>
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