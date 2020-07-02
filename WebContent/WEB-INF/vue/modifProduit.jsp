<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="metier.lieu.Lieus"%>
<%@ page import="metier.lieu.Lieu"%>
<%@ page import="metier.etat.Etats"%>
<%@ page import="metier.etat.Etat"%>
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
<link rel="shortcut icon" href="assets/img/ico/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-144x144.png">
<link rel="apple-touch-icon" sizes="114x114"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-114x114.png">
<link rel="apple-touch-icon" sizes="72x72"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon"
	href="<%=request.getContextPath()%>/assets/img/ico/apple-touch-icon-57x57.png">

<title>GDM</title>

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
					src="assets/img/loading.GIF" alt="loading" /></span>
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

		<section class="dark-wrapper opaqued parallax" data-parallax="scroll"
			data-image-src="assets/img/bg/bg2.jpg" data-speed="0.7">
			<div class="section-inner pad-top-200">
				<div class="container">
					<div class="row">
						<div class="col-lg-12 mt30 wow text-center">
							<h2 class="section-heading">G'art De Manger</h2>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="welcome">
		<h2>modification du produit :</h2>
			<div class="section-inner nopaddingbottom">

				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div id="message"></div>
							<form method="post" id="creaform"
								action="<%=request.getContextPath()%>/produit/donnéeModif">

								<label>id du produit : </label> 
								<select name="idProd">
									<jsp:useBean id="produits" class="metier.produit.Produits"
										scope="request" />
									<%
										for (Produit produit : produits) {
									%>
									<option value="<%=produit.getIdProduit()%>">
										<%=produit.getNomProduit()%>
									</option>
									<%
										}
									%>
								</select> 
								<label>nom du produit : </label> 
									<input type="text" class="form-control" name="nomProd"> *
								<label>description	produit : </label>
									<textarea class="form-control" name="descriptionProd"> </textarea>
								<label>date d'achat : </label> 
									<input type="date" class="form-control" name="dateAchat"> 
								<label>date	de peremption : </label> 
									<input type="date" class="form-control"	name="datePeremption"> 
								<label>quantite	: </label> 
									<input type="number" class="form-control" name="quantite">
								<label>poids en kilogramme : </label> 
									<input type="number" class="form-control" name="poids"> 
								<label>lieu	de stockage : </label> 
									<select name="lieu">
										<jsp:useBean id="StockLieus" class="metier.lieu.Lieus" scope="request" />
									<%
										for (Lieu lieu : StockLieus) {
									%>
									<option value="<%=lieu.getId_lieu()%>">
										<%=lieu.getLib_lieu()%>
									</option>
									<%
										}
									%>
								</select> <label>mettre se produit en favoris : </label> 
								<select	name="fav">
									<jsp:useBean id="etats" class="metier.etat.Etats"
										scope="request" />
									<%
										// request.setAttribute("etats",etat); 
										for (Etat etat : etats) {
									%>
									<option value="<%=etat.getId_etat()%>">
										<%=etat.getLib_etat()%>
									</option>
									<%
										}
									%>
								</select> <input class="btn btn-primary mt30  " type="submit"
									value="modifier" />
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>




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


	</div>



	<script src="<%=request.getContextPath()%>/assets/js/jquery.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/plugins.js"></script>
	<script	src="http://maps.google.com/maps/api/js?sensor=false"></script>
	<script src="<%=request.getContextPath()%>/assets/js/init.js"></script>

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</body>
</html>