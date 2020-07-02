<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="metier.lieu.Lieus" %>
    <%@ page import="metier.lieu.Lieu" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>G'art De Manger</title>
</head>
<body>
<form method="post" action="<%=request.getContextPath()%>/produit/creerProd">
	
	<label>id du produit : </label>
		<input type="number" min="1" name="idProd">
		
	<label>nom du produit : </label>
		<input type="text" name="nomProd">
	
	<label>description produit : </label>
		<textarea name="descriptionProd"> </textarea>
	
	<label>date d'achat : </label>
		<input type="date" name="dateAchat">
	
	<label>date de peremption : </label>
		<input type="date" name="datePeremption">
	
	<label>quantite : </label>
		<input type="number" name="quantite">
	
	<label>poids en kilogramme : </label>
		<input type="number" name="poids">
	
	<label>lieu de stockage : </label>
	
		<select name="lieu">
			<jsp:useBean id="StockLieus" class="metier.lieu.Lieus" scope="request"/>
				<%
					for (Lieu lieu: StockLieus){
				%>
			<option value="<%=lieu.getId_lieu()%>">
				<%=lieu.getLib_lieu() %>
			</option>		
				<%
						}
				%>
		</select>
		
		<input type="submit" value="enregistrer">
</form>
</body>
</html>