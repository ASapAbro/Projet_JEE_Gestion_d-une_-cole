<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center> 
	
	<h3> Gestion des entreprises </h3>
	
	<%
		Entreprise uneEts = null; 
		if (request.getParameter("action") != null && request.getParameter("identreprise") != null)
		{
			String action = request.getParameter("action"); 
			int identreprise = Integer.parseInt(request.getParameter("identreprise"));
			switch(action){
			case "sup"  : Controleur.deleteEntreprise (identreprise);break; 
			case "edit" : uneEts = Controleur.selectWhereEntreprise (identreprise); break;
			}
		}
	%>
	
	<%@ include file="vue/vue_insert_entreprise.jsp" %>
	
	<%
		if (request.getParameter("Valider") != null){
			String designation = request.getParameter("designation"); 
			String adresse = request.getParameter("adresse"); 
			String secteurAct = request.getParameter("secteurAct"); 
			
			//instancier la classe Entreprise 
			Entreprise uneEntreprise = new Entreprise (designation, adresse, secteurAct);
			
			//insertion dans la BDD via le controleur 
			Controleur.insertEntreprise (uneEntreprise); 
		}
	
		if (request.getParameter("Modifier") != null){
			int identreprise = Integer.parseInt(request.getParameter("identreprise"));
			String designation = request.getParameter("designation"); 
			String adresse = request.getParameter("adresse"); 
			String secteurAct = request.getParameter("secteurAct"); 
			
			//instancier la classe Entreprise 
			Entreprise uneEntreprise = new Entreprise (identreprise , designation, adresse, secteurAct);
			
			//update dans la BDD via le controleur 
			Controleur.updateEntreprise (uneEntreprise); 
			
			//recharge la page pour actualiser les infos modifiées 
			response.sendRedirect("index.jsp?page=3");
		}
	%>
	
	<% 
	ArrayList<Entreprise> lesEntreprises = null; 
	
		if (request.getParameter("Filtrer") != null){
			String filtre = request.getParameter("filtre"); 
			lesEntreprises = Controleur.selectLikeEntreprises (filtre); 
		}else {
			//recuperation des entreprises à partir du controleur 
			lesEntreprises = Controleur.selectAllEntreprises (); 
		}
	%>
	
	<%@ include file="vue/vue_select_entreprises.jsp" %>
	
	
	</center>
</body>
</html>





