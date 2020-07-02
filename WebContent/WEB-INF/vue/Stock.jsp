<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="metier.produit.Produits"%>
<%@ page import="metier.produit.Produit"%>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/assets/img/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-57x57.png">

<title>G'art de manger</title>

<!-- Bootstrap Core CSS -->
<link href="<%=request.getContextPath()%>/assets/css/bootstrap.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/animate.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/assets/css/plugins.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="<%=request.getContextPath()%>/assets/css/style.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=request.getContextPath()%>/assets/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/assets/css/pe-icons.css"
	rel="stylesheet">

</head>

<body id="page-top" class="index">

	<div class="master-wrapper">

		<div class="preloader">
			<div class="preloader-img">
				<span class="loading-animation animate-flicker"><img
					src="<%=request.getContextPath()%>/assets/img/loading.GIF"
					alt="loading" /></span>
			</div>
		</div>

		<!--         inclure nav -->
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
		<header id="headerwrap" class="backstretched fullheight">
			<div class="container vertical-center">
				<div class="intro-text vertical-center text-left smoothie">
					<div class="intro-heading wow fadeIn heading-font"
						data-wow-delay="0.2s">G'art de manger</div>
				</div>
			</div>
		</header>



	</div>

	<div>
		<form method="post" action="#">
			<table>
				<thead class="row">
					<tr>
						<th class="col-lg-1 col-sm-12">image du lieu</th>
						<th class="col-lg-1 col-sm-12">nom du Produit</th>
						<th class="col-lg-1 col-sm-12">description du produit</th>
						<th class="col-lg-1 col-sm-12">date d'achat</th>
						<th class="col-lg-2 col-sm-12">date de peremption</th>
						<th class="col-lg-2 col-sm-12">quantite</th>
						<th class="col-lg-1 col-sm-12">poids</th>
						<th class="col-lg-1 col-sm-12">etat</th>
						<th class="col-lg-1 col-sm-12">lieu</th>
						<th class="col-lg-1 col-sm-12">bouton</th>

					</tr>
				</thead>
				<tbody class="row">
					<!-- affichage du produit 	 -->
					<jsp:useBean id="produits" class="metier.produit.Produits"
						scope="request" />
					<%
						
						for (Produit produit : produits) {
					%>
					<tr>
						<td class="col-lg-1 col-sm-12"><img
							src="<%=request.getContextPath()%>/assets/img/lieu/<%=produit.getLieuProduit().getImage_lieu()%>"
							alt="Frigo"></td>
						<td class="col-lg-1 col-sm-12"><%=produit.getNomProduit()%></td>
						<td class="col-lg-1 col-sm-12"><%=produit.getDescriptionProduit()%></td>
						<td class="col-lg-2 col-sm-12"><%=produit.getDateAchat()%></td>
						<td class="col-lg-2 col-sm-12"><%=produit.getDatePeremption()%></td>
						<td class="col-lg-1 col-sm-12"><%=produit.getQuantite()%></td>
						<td class="col-lg-1 col-sm-12"><%=produit.getPoids()%></td>
						<td class="col-lg-1 col-sm-12"><%=produit.getEtat().getLib_etat()%></td>
						<td class="col-lg-1 col-sm-12"><%=produit.getLieuProduit().getLib_lieu()%></td>
						<td class="col-lg-1 col-sm-12"><input type="radio"
							name="supp_prod" value="<%=produit.getIdProduit()%>"></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<button class="btn btn-primary" id="suppr_theme"
				formAction="<%=request.getContextPath()%>/produit/suppression">
				Supprimer
			</button>
		</form>
	</div>


	<footer class="white-wrapper">
		<div class="container">
			<div class="row">
				<div class="col-md-6 text-left match-height">
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

	<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
	<script src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="<%=request.getContextPath()%>/assets/js/init.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	<script>
		$(document).ready(
				function() {
					'use strict';
					jQuery('#headerwrap').backstretch(
							[ "assets/img/shop/hero1.jpeg",
									"assets/img/shop/hero2.jpg",
									"assets/img/shop/hero3.jpeg" ], {
								duration : 8000,
								fade : 500
							});
				});
	</script>

</body>

</html>
