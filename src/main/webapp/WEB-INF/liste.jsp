<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="exercice3.Etudiant" %>
<%! List<String> names; %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table>
		<tr>
			<th>Nom</th>
			<th>Prenom</th>
			<th>Note</th>
			<th>Montion</th>
		</tr>
		<c:forEach items="${etudiants}" var="e">
			<tr>
				<td><c:out value="${e.nom}"></c:out></td>
				<td><c:out value="${e.prenom}"></c:out></td>
				<td><c:out value="${e.note}"></c:out></td>
				<c:if test="${e.note >= 16}"><td style=" color : green ">Tres Bien</td></c:if>
				<c:if test="${e.note >= 14 and e.note < 16}"><td style=" color : blue ">Bien</td></c:if>
				<c:if test="${e.note >= 12 and e.note < 14}"><td style=" color : yellow ">Assez Bien</td></c:if>
				<c:if test="${e.note >= 10 and e.note < 12}"><td style=" color : orange ">Passable</td></c:if>
				<c:if test="${e.note < 10}"><td style=" color : red ">Ajournee</td></c:if>
			</tr>
		</c:forEach>
	</table>
</body>
</html>