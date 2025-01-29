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
	
	<h3> Gestion des étudiants  </h3>
	
	<%@ include file="vue/vue_insert_etudiant.jsp" %>
	<%
		if (request.getParameter("Valider") != null){
			String nom = request.getParameter("nom"); 
			String prenom = request.getParameter("prenom"); 
			String email = request.getParameter("email"); 
			String promotion = request.getParameter("promotion"); 
			int identreprise = Integer.parseInt(request.getParameter("identreprise")); 
			//instancier la classe Entreprise 
			Etudiant unEtudiant = new Etudiant (nom, prenom, email, promotion, identreprise);
			
			//insertion dans la BDD via le controleur 
			Controleur.insertEtudiant (unEtudiant); 
		}
	%>
	
	<% 
		//recuperation des entreprises à partir du controleur 
		ArrayList<Etudiant> lesEtudiants = Controleur.selectAllEtudiants (); 
	%>
	
	<%@ include file="vue/vue_select_etudiants.jsp" %>
	
	</center>
</body>
</html>