<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Travel Lover</title>
<link rel="icon" type="image/x-icon" href="resources/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/styles.css" rel="stylesheet" />
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="index.jsp">Travel Lover</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ms-auto py-4 py-lg-0">
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="index.jsp">전체</a></li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="about.jsp">지역별</a></li>
					<li class="nav-item"><a class="nav-link px-lg-3 py-3 py-lg-4"
						href="contact.jsp">즐겨찾기</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Page Header-->
	<header class="masthead"
		style="background-image: url('resources/assets/img/3.JPG')">
		<div class="container position-relative px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="post-heading">
						<h1>진주남강유등축제</h1>
						<h2 class="subheading">천년의 강, 남강에 평화를 담다</h2>
						<span class="meta"> 경남 진주시 2023. 10. 8. ~ 2023. 10. 22. </span>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- Post Content-->
	<article class="mb-4">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<a href="#!"><img class="img-fluid"
						src="resources/assets/img/3.JPG" alt="..." /></a> <span
						class="caption text-muted">진주남강유등축제</span>
					<h2 class="section-heading">상세 정보</h2>
					<p>“진주대첩”은 1592년 진주성을 침공한 2만 왜군을 충무공 김시민 장군이 3,800여 명 병력으로 물리친 전쟁이다. </p>
					<p>풍등(風燈)을 하늘에 올려 횃불과 함께 남강에 띄워 남강을 건너는 왜군을 저지하는 군사 전술을 사용했다. </p>
					<p>진주 남강의 유등은 전쟁 당시 가족 간 안부를 전하는 통신수단으로도 쓰였다. 진주 남강 유등축제는 이때부터 내려온 전통을 이어 시작되었다.</p>
					<h2 class="section-heading">축제 후기</h2>
					<div class="my-5">
						<!-- * * * * * * * * * * * * * * *-->
						<!-- * * SB Forms Contact Form * *-->
						<!-- * * * * * * * * * * * * * * *-->
						<!-- This form is pre-integrated with SB Forms.-->
						<!-- To make this form functional, sign up at-->
						<!-- https://startbootstrap.com/solution/contact-forms-->
						<!-- to get an API token!-->
						<form id="contactForm" data-sb-form-api-token="API_TOKEN">
							<div class="form-floating">
								<input class="form-control" id="name" type="text"
									placeholder="Enter your name..." data-sb-validations="required" />
								<label for="name">Name</label>
								<div class="invalid-feedback" data-sb-feedback="name:required">A
									name is required.</div>
							</div>
							<div class="form-floating">
								<input class="form-control" id="email" type="email"
									placeholder="Enter your email..."
									data-sb-validations="required,email" /> <label for="email">Email
									address</label>
								<div class="invalid-feedback" data-sb-feedback="email:required">An
									email is required.</div>
								<div class="invalid-feedback" data-sb-feedback="email:email">Email
									is not valid.</div>
							</div>

							<div class="form-floating">
								<textarea class="form-control" id="message"
									placeholder="Enter your message here..." style="height: 12rem"
									data-sb-validations="required"></textarea>
								<label for="message">Message</label>
								<div class="invalid-feedback"
									data-sb-feedback="message:required">A message is
									required.</div>
							</div>
							<br />
							<!-- Submit success message-->
							<!---->
							<!-- This is what your users will see when the form-->
							<!-- has successfully submitted-->
							<div class="d-none" id="submitSuccessMessage">
								<div class="text-center mb-3">
									<div class="fw-bolder">Form submission successful!</div>
									To activate this form, sign up at <br /> <a
										href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
								</div>
							</div>
							<!-- Submit error message-->
							<!---->
							<!-- This is what your users will see when there is-->
							<!-- an error submitting the form-->
							<div class="d-none" id="submitErrorMessage">
								<div class="text-center text-danger mb-3">Error sending
									message!</div>
							</div>
							<!-- Submit Button-->
							<button class="btn btn-primary text-uppercase"
								id="submitButton" type="submit">등록</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</article>
	<!-- Footer-->
	<footer class="border-top">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<ul class="list-inline text-center">
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-twitter fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
						<li class="list-inline-item"><a href="#!"> <span
								class="fa-stack fa-lg"> <i
									class="fas fa-circle fa-stack-2x"></i> <i
									class="fab fa-github fa-stack-1x fa-inverse"></i>
							</span>
						</a></li>
					</ul>
					<div class="small text-center text-muted fst-italic">Copyright
						&copy; Your Website 2023</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
