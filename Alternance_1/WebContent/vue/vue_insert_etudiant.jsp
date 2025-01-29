<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> Ajout d'un étudiant </h3>
	<form method="post">
		<table>
			<tr> 
				<td> Nom </td>
				<td> <input type ="text" name ="nom" > </td>
			</tr>
			<tr> 
				<td> Prénom </td>
				<td> <input type ="text" name ="prenom" ></td>
			</tr>
			<tr> 
				<td> Email </td>
				<td> <input type ="text" name ="email" > </td>
			</tr>
			<tr> 
				<td> Promotion </td>
				<td> <input type ="text" name ="promotion" > </td>
			</tr>
			<tr> 
				<td> Entreprise </td>
				<td> <select name="identreprise" >
					<option value ="x"> xxx </option>
					</select>
				</td>
			</tr>
			<tr> 
				<td> <input type="reset" name="Annuler" value ="Annuler"> </td>
				<td> <input type="submit" name="Valider" value ="Valider"> </td>
			</tr>
		</table>
	</form>
</body>
</html>


