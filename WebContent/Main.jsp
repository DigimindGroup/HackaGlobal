<!DOCTYPE html>
<%@page import="ir.hackaglobal.Model.Event"%>
<%@page
	import="com.sun.corba.se.impl.encoding.CodeSetConversion.CTBConverter"%>
<%@page import="ir.hackaglobal.Model.City"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>هاکا گلوبال</title>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="css/grayscale.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="font-awesome/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link
	href="http://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css">
<link href="http://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">

	<!-- Navigation -->
	<nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-main-collapse">
					<i class="fa fa-bars"></i>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top"> <i
					class="fa fa-play-circle"></i> <span class="light">Hacka</span>
					Global
				</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div
				class="collapse navbar-collapse navbar-right navbar-main-collapse">
				<ul class="nav navbar-nav">
					<!-- Hidden li included to remove active class from about link when scrolled up past about section -->
					<li class="hidden"><a href="#page-top"></a></li>
					<li><a class="page-scroll" href="Panel/login.html">ورود</a></li>
					<li><a class="page-scroll" href="Panel/login.html">ثبت نام</a></li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Intro Banner -->
	<header class="intro">
		<div class="intro-body">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 class="brand-heading">هاکا گلوبال</h1>
						<p class="intro-text">بزرگترین گردهمایی برنامه نویسان در ایران</p>
						<a href="#about" class="btn btn-circle page-scroll"> <i
							class="fa fa-angle-double-down animated"></i>
						</a>
					</div>
				</div>
			</div>
		</div>
	</header>

	<!-- About Section -->
	<section id="about" class="container content-section text-center">
		<div class="row ">
			<div class="col-lg-8 col-lg-offset-2">
				<h2 class="about-sec">هاکا گلوبال چیست؟</h2>
				<p class="about-p">یک نبرد بین المللی برنامه نویسی جهت هم افزایی و شبکه سازی در
					بین جامعه برنامه نویسان در کل دنیاست، که تاکنون در چندین شهر دنیا
					برگزار شده است. تعداد هاکاسیتی ها در حال افزایش است و در آینده‌ی
					نردیک نیز افرادی از هر هاکاسیتی در یک هاکاتون جهانی به نام
					هاکاگلوبال شرکت میکنند که در یک شهر توریستی برگزار میشود.</p>
				<h2 class="about-sec">هدف برگزاری _هاکا سیتی_ چیست؟</h2>
				<p class="about-p">جامعۀ برنامه نویسان در دنیا خیلی فعال هستند و با اشتراک گذاری
					دانش میان یکدیگر باعث رشد و پیشرفت جامعۀ برنامه نویسی می شوند. در
					ایران کمی اوضاع فرق می کند و برنامه نویسان معمولاً زیاد از فعالیت
					های یکدیگر اطلاعی ندارند و در اتاق خودشان مشغول کدنویسی هستند. این
					رویداد باعث می شود که اولاً با همکاران خودشان بیشتر آشنا شوند و
					شبکه سازی در میان آنان به صورت حضوری و مجازی انجام شود، دوم اینکه
					شرکت هایی که به دنبال نیروهای متخصص می گردند، با حمایت مالی از
					رویداد می توانند برنامه نویسان خوب و خبره را در این رویدادها
					شناسایی و جذب نمایند.</p>
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="content-section ">
		<div class="city-section">
			<div class="row">

				<div class="col-lg-8 col-lg-offset-2">

					<!-- <div class="col-md-4 col-md-push-4">
						<div class="alert alert-danger">B</div>
						<img class="img-responsive img-circle"
							src="https://farm1.staticflickr.com/1/2759520_6dea8b9007.jpg"
							alt="Greece-1173 - Temple of Athena by Dennis Jarvis, on Flickr">
					</div>

					<div class="col-md-4 col-md-pull-4 ">
						<div class="alert alert-info">A</div>
						<img class="img-responsive img-circle"
							src="https://farm2.staticflickr.com/1109/809710325_4289dc484e.jpg"
							alt="Greece-1173 - Temple of Athena by Dennis Jarvis, on Flickr">
					</div>

					<div class="col-md-4">
						<div class="alert alert-success">C</div>
						<img class="img-responsive img-circle"
							src="https://farm3.staticflickr.com/2353/2216602404_679d01cd4b.jpg"
							alt="Greece-1173 - Temple of Athena by Dennis Jarvis, on Flickr">
					</div> -->

					<div id="now-section">
						<h2 class="text-center" style="color: #000">شهر ها</h2>
						<ul class="home-date-now-hackacities-container">

							<%
								List<City> citis = (List<City>) request.getAttribute("cityList");

								for (int i = 0; i < citis.size(); i++) {
							%>

							<a href="hacka<%=citis.get(i).getName()%>.do">
								<li><span class="col-md-4"> <%=citis.get(i).getName()%></span>
									<span class="col-md-4">Lorem</span> <span class="col-md-4">Lorem</span>
							</li>
							</a>

							<%
								}
							%>
						</ul>
					</div>

				</div>


			</div>
		</div>
		</div>
	</section>

	<!-- Download Section -->
	<section id="download" class="content-section text-center">
		<div class="download-section">
			<div class="container">
				<div class="col-lg-8 col-lg-offset-2">
					<h2>رویدادهای پیش رو</h2>
					<div class="row">
						<!-- <div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal1" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img src="img/portfolio/cabin.png" class="img-responsive"
								alt="">
							</a>
						</div>
						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal2" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img src="img/portfolio/cake.png" class="img-responsive" alt="">
							</a>
						</div> -->
<!-- 						<div class="col-sm-4 portfolio-item"> -->
<!-- 							<a href="#portfolioModal3" class="portfolio-link" -->
<!-- 								data-toggle="modal"> -->
<!-- 								<div class="caption"> -->
<!-- 									<div class="caption-content"> -->
<!-- 										<i class="fa fa-search-plus fa-3x"></i> -->
<!-- 									</div> -->
<!-- 								</div> <img src="img/portfolio/circus.png" class="img-responsive" -->
<!-- 								alt=""> -->
<!-- 							</a> -->
<!-- 						</div> -->
<%
								List<Event> events = (List<Event>) request.getAttribute("eventList");

								for (int i = 0; i < events.size(); i++) {
							%>
			
							<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal3" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img src="<%=events.get(i).getBannerUrl()%>" class="img-responsive"
								alt="">
							</a>
						</div>
						

							<%
								}
							%>
					</div>
					
							
							
							
					<a href="http://startbootstrap.com/template-overviews/grayscale/"
						class="btn btn-default btn-lg">همه رویدادها</a>
				</div>
			</div>
		</div>
	</section>

	<!-- Map Section -->
	<!--<div id="map"></div>-->

	<!-- Footer -->
	<footer>
		<div class="container text-center footer">
			<div class="text-center center-block">
				<br /> <a href="https://www.facebook.com/bootsnipp"><img src="http://icons.iconarchive.com/icons/danleech/simple/512/facebook-icon.png" width="30"></a>
				 <a href="https://twitter.com/bootsnipp"><img src="https://cdn2.iconfinder.com/data/icons/metro-ui-icon-set/512/Twitter_alt_4.png" width="30"></a> <a
					href="https://plus.google.com/+Bootsnipp-page"><img src="http://vectorlogos.org/files/images/google-google-plus-icon-red.png" width="30"></a>
					 <ahref="mailto:bootsnipp@gmail.com"><img src="http://a4.mzstatic.com/us/r30/Purple1/v4/da/96/ab/da96ab96-8699-495d-4af6-d8215662d449/icon320x320.png" width="30"></a>
			</div>
			<p>Copyright &copy; Hacka Global 2015</p>

		</div>
	</footer>

	<!-- jQuery -->
	<script src="js/jquery.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>

	<!-- Plugin JavaScript -->
	<script src="js/jquery.easing.min.js"></script>

	<!-- Google Maps API Key - Use your own API key to enable the map feature. More information on the Google Maps API can be found at https://developers.google.com/maps/ -->
	<script type="text/javascript"
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCRngKslUGJTlibkQ3FkfTxj3Xss1UlZDA&sensor=false"></script>

	<!-- Custom Theme JavaScript -->
	<script src="js/grayscale.js"></script>
</body>
</html>
