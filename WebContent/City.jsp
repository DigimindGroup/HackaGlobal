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
					<li><a class="page-scroll" href="Panel/login.html">ثبت نام</a>
					</li>

					<!--<li> <a class="page-scroll" href="#contact">Contact</a> </li>-->
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	<!-- Intro Header -->
	<header class="intro">
		<div class="intro-body">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-md-offset-2">
						<h1 class="brand-heading">Hacka ${city.getName()}</h1>
						<p class="intro-text"></p>
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
		<div class="row">
			<div class="col-lg-8 col-lg-offset-2">
				<h2 class="about-sec">About Hacka ${city.getName()}</h2>

				<p class="about-p">${city.getDescription()}</p>
			</div>
		</div>
	</section>

	<!-- Contact Section -->
	<section id="contact" class="content-section ">
		<div class="download-section">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2">
					<h2 class="text-center">رویداد پیش رو</h2>
					<p class="text-rtl">${city.getEvents().get(0).getDescription()}</p>
					<div id="map"></div>

					<div class="text-center">
						<h2 class="col-xs-12">حامیان مالی</h2>
					</div>

					<div class="row">
						<%
							City city = (City) request.getAttribute("city");

							for (int i = 0; i < city.getEvents().get(0).getSponsors().size(); i++) {
						%>

						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal3" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img
								src="<%=city.getEvents().get(0).getSponsors().get(i)
						.getLogoUrl()%>"
								class="img-responsive" alt="" width="120">
							</a>
						</div>


						<%
							}
						%>
					</div>
				</div>

				<div class="text-center">
					<a href="http://startbootstrap.com/template-overviews/grayscale/"
						class="btn btn-default btn-lg text-center">ثبت نام رویداد</a>
				</div>


			</div>
		</div>
		</div>
	</section>

	<!-- Download Section -->
	<section id="download" class="content-section text-center">
		<div class="event-section">
			<div class="container">
				<div class="col-lg-8 col-lg-offset-2">
					<h2>رویدادهای پیش رو</h2>
					<div class="row">
						<%
							City city2 = (City) request.getAttribute("city");

							for (int i = 0; i < city2.getEvents().size(); i++) {
						%>

						<div class="col-sm-4 portfolio-item">
							<a href="#portfolioModal3" class="portfolio-link"
								data-toggle="modal">
								<div class="caption">
									<div class="caption-content">
										<i class="fa fa-search-plus fa-3x"></i>
									</div>
								</div> <img src="<%=city2.getEvents().get(i).getBannerUrl()%>"
								class="img-responsive" alt="">
							</a>
						</div>


						<%
							}
						%>
					</div>
				</div>
				<a href="http://startbootstrap.com/template-overviews/grayscale/"
					class="btn btn-default btn-lg">همه رویدادها</a>
			</div>
		</div>
		</div>
	</section>
	<section id="download"
		class="content-section text-center city-section">
		<div class="[ container text-center ]">
			<div class="[ row ]">
				<div class="[ col-xs-12 ]">
					<h2>برگزارکنندگان</h2>
				</div>
			</div>
		</div>
		<div class="[ container text-center ]">
			<div class="[ row ]">
				<div
					class="[ col-xs-12 col-sm-8 col-sm-offset-2 col-md-6 col-md-offset-3 ]"
					role="tabpanel">

					<div class="[ col-xs-4 col-sm-12 ]">
						<ul class="[ nav nav-justified ]" id="nav-tabs" role="tablist">
							<%
								City city3 = (City) request.getAttribute("city");
								for (int i = 0; i < city3.getOrganizers().size(); i++) {
							%>
							<!-- Nav tabs -->
							<li role="presentation" class="<% if(i==0){ %> active <% } %>"><a href="#<%=city3.getOrganizers().get(i).getFirstName()%>"
								aria-controls="dustin" role="tab" data-toggle="tab"> <img
									class="img-circle"
									src="<%=city3.getOrganizers().get(i).getProfilePic()%>" /> <span
									class="quote"><i class="fa fa-quote-left"></i></span>
							</a></li>


							<%
								}
							%>
						</ul>
					</div>


					<div class="[ col-xs-8 col-sm-12 ]">
						<!-- Tab panes -->
						<div class="tab-content" id="tabs-collapse">
							<%
								City city4 = (City) request.getAttribute("city");

								for (int i = 0; i < city4.getOrganizers().size(); i++) {
							%>
							<div role="tabpanel" class="tab-pane fade in <% if(i==0){ %> active <% } %>"
								id="<%=city4.getOrganizers().get(i).getFirstName()%>">
								<div class="tab-inner">
									<p class="lead"></p>
									<hr>
									<p>
										<strong class="text-uppercase"><%=city4.getOrganizers().get(i).getFirstName()%></strong>
									</p>
									<p>
										<em class="text-capitalize"> <%=city4.getOrganizers().get(i).getPost()%></em>
									</p>
								</div>
							</div>

							<%
								}
							%>

						</div>
					</div>




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
				<br /> <a href="https://www.facebook.com/bootsnipp"><img
					src="http://icons.iconarchive.com/icons/danleech/simple/512/facebook-icon.png"
					width="30"></a> <a href="https://twitter.com/bootsnipp"><img
					src="https://cdn2.iconfinder.com/data/icons/metro-ui-icon-set/512/Twitter_alt_4.png"
					width="30"></a> <a href="https://plus.google.com/+Bootsnipp-page"><img
					src="http://vectorlogos.org/files/images/google-google-plus-icon-red.png"
					width="30"></a>
				<ahref="mailto:bootsnipp@gmail.com"> <img
					src="http://a4.mzstatic.com/us/r30/Purple1/v4/da/96/ab/da96ab96-8699-495d-4af6-d8215662d449/icon320x320.png"
					width="30"> </a>
			</div>
			<p>Copyright &copy; Hacka Global 2015</p>

		</div>
		Copyright &copy; Hacka Global 2015
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
