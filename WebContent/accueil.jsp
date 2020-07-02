<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon" href="assets/img/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144"
	href="assets/img/ico/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="assets/img/ico/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="assets/img/ico/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon"
	href="assets/img/ico/apple-touch-icon-57x57.png">

<title>G'art de manger</title>

<!-- Bootstrap Core CSS -->
<link href="assets/css/bootstrap.min.css" rel="stylesheet">
<link href="assets/css/animate.css" rel="stylesheet">
<link href="assets/css/plugins.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="assets/css/style.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="assets/css/pe-icons.css" rel="stylesheet">

</head>

<body id="page-top" class="index">

	<div class="master-wrapper">

		<div class="preloader">
			<div class="preloader-img">
				<span class="loading-animation animate-flicker"><img
					src="assets/img/loading.GIF" alt="loading" /></span>
			</div>
		</div>

		<%@include file="/WEB-INF/nav/navbar.jsp"%>

		<div id="search-wrapper">
			<button type="button" class="close">bouton</button>
			<div class="vertical-center text-center">
				<form>
					<input type="search" value="" placeholder="Enter Search Term" />
					<button type="submit" class="btn btn-primary btn-white">Search</button>
				</form>
			</div>
		</div>

		<!-- Header -->
		<header id="headerwrap" class="backstretched fullheight no-overlay">
			<div class="container vertical-center">
				<div class="intro-text vertical-center text-left smoothie">
					<div class="intro-heading wow fadeIn heading-font"
						data-wow-delay="0.2s"> G'art De Manger</div>
					<a href="#welcome"
						class="btn btn-primary btn-white mt30 page-scroll"
						data-wow-delay="0.6s">Find Out More</a>
				</div>
			</div>
		</header>

		

			<footer class="white-wrapper">
				<div class="container">
					<div class="row">
						<div class="col-md-6 text-left">
							<ul class="list-inline social-links wow">
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-behance"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>

						
					</div>
				</div>
			</footer>
		</div>

	

	<div class="flexpanel">
		<div class="viewport-wrap">
			<div class="viewport">
				<div class="widget mb50">
					<h4 class="widget-title">Latest Articles</h4>
					<div>
						<div class="media">
							<div class="pull-left">
								<img class="widget-img" src="assets/img/widget/widget1.jpg"
									alt="">
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="#">Panic In
										London</a></span> <small class="muted">Posted 14 April 2015</small>
							</div>
						</div>
						<div class="media">
							<div class="pull-left">
								<img class="widget-img" src="assets/img/widget/widget2.jpg"
									alt="">
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="#">New iPhone
										News</a></span> <small class="muted">Posted 14 April 2015</small>
							</div>
						</div>
						<div class="media">
							<div class="pull-left">
								<img class="widget-img" src="assets/img/widget/widget3.jpg"
									alt="">
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="#">Our Year In
										Review</a></span> <small class="muted">Posted 14 April 2015</small>
							</div>
						</div>
						<div class="media">
							<div class="pull-left">
								<img class="widget-img" src="assets/img/widget/widget4.jpg"
									alt="">
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="#">jQuery
										Tutorial</a></span> <small class="muted">Posted 14 April 2015</small>
							</div>
						</div>
						<div class="media">
							<div class="pull-left">
								<img class="widget-img" src="assets/img/widget/widget5.jpg"
									alt="">
							</div>
							<div class="media-body">
								<span class="media-heading"><a href="#">Sheen
										Interview</a></span> <small class="muted">Posted 14 April 2015</small>
							</div>
						</div>
					</div>
				</div>
				<div class="widget mb50">
					<h4 class="widget-title">
						<strong>Latest</strong> Articles
					</h4>
					<div class="tagcloud">
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Local</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Business</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Media</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Photogtraphy</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Aid</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Fashion</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">News</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Cars</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">Global
							Affairs</a> <a href="#" class="tag-link btn btn-theme btn-xs"
							title="3 topics">Music</a> <a href="#"
							class="tag-link btn btn-theme btn-xs" title="3 topics">Downloads</a>
						<a href="#" class="tag-link btn btn-theme btn-xs" title="3 topics">MP3</a>
					</div>
				</div>
				<div class="widget about-us-widget mb50">
					<h4 class="widget-title">About Kompleet</h4>
					<p>Professionally monetize team building materials for 24/7
						results. Holisticly transition corporate platforms vis-a-vis
						cutting-edge experiences. Dynamically strategize ubiquitous
						applications for premier initiatives. Interactively seize resource
						sucking niche markets.</p>
				</div>
			</div>
		</div>
	</div>

	<script src="assets/js/jquery.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/plugins.js"></script>
	<script 
		src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="assets/js/init.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<script >
    $(document).ready(function() {
        'use strict';
        jQuery('#headerwrap').backstretch([
            "assets/img/bg/business1.jpg",
            "assets/img/bg/business2.jpg",
            "assets/img/bg/business3.jpg"
        ], {
            duration: 8000,
            fade: 500
        });
    });
    </script>

</body>

</html>
