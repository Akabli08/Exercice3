<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="<%=request.getContextPath()%>/formulaire" method="post">
		<c:forEach var="i" begin="1" end="${nombre}" step="1">
			<h3>Formulaire pour l'etudiant numero: <c:out value="${i}"></c:out> </h3> 
			<label>Nom: </label>
			<input type="text" name="name${i}">
			<label>Prenom: </label>
			<input type="text" name="prenom${i}">
			<label>Note: </label>
			<input type="text" name="note${i}">
		</c:forEach>
		<input type="text" name="nombre" value="${nombre}" hidden="true">
		<br><br><br>
		<button type="submit">enregistrer tous</button>
	</form>
</body>
</html>