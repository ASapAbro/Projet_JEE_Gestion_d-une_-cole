<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>entreprise</title>
</head>
<body>
	<h3> Ajout d'une entreprise </h3>
	<form method="post">
		<table>
			<tr> 
				<td> Désignation </td>
				<td> <input type ="text" name ="designation" 
		value ="<%= (uneEts !=null) ? uneEts.getDesignation() : "" %>"> </td>
			</tr>
			<tr> 
				<td> Adresse postale </td>
				<td> <input type ="text" name ="adresse" 
		value ="<%= (uneEts !=null) ? uneEts.getAdresse() : "" %>" ></td>
			</tr>
			<tr> 
				<td> Secteur d'activité </td>
				<td> <input type ="text" name ="secteurAct" 
		value ="<%= (uneEts !=null) ? uneEts.getSecteurAct() : "" %>"> </td>
			</tr>
			<tr> 
				<td> <input type="reset" name="Annuler" value ="Annuler"> </td>
				<td> <input type="submit" 
				<%= (uneEts != null)? " name='Modifier' value ='Modifier' " : 
				" name='Valider' value ='Valider' "  %>
					> </td>
			</tr>
		</table>
	</form>
</body>
</html>

