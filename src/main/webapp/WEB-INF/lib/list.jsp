<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	${Netud }
	${name}
	<c:forEach items="${etudiants}" var="etudiant">
		<%=  %>
		<c:out value="${etudiant.getNom()}"></c:out>
		<c:out value="${etudiant.getPrenom}"></c:out>
		<c:out value="${etudiant.getNote}"></c:out>
	</c:forEach>
</body>
</html>