<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3> Connexion au site Alternance </h3>
	<form method="post">
		<table>
			
			<tr> 
				<td> Email </td>
				<td> <input type ="text" name ="email" ></td>
			</tr>
			<tr> 
				<td> MDP </td>
				<td> <input type ="password" name ="mdp" > </td>
			</tr>
			<tr> 
				<td> <input type="reset" name="Annuler" value ="Annuler"> </td>
				<td> <input type="submit" name="Connexion" value ="Connexion"> </td>
			</tr>
		</table>
	</form>
</body>
</html>