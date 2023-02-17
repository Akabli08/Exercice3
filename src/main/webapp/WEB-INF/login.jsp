<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="post" action="<%= request.getContextPath()%>/login">
		<label>Nom: </label>
		<input type="text" name="name">
		<label>Mod de Passe: </label>
		<input type="text" name="password">
		<label>Nombre des etudiants: </label>
		<input type="text" name="nombre">
		<button type="submit">Connecter</button>
	</form>
	${ error }
</body>
</html>