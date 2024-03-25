<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.chandan.entity.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>displayContact</title>
<link rel="stylesheet" href="./CSS/viewContact.css">
</head>
<body>

	<div id="outPopUp">
		<h2> <a href="displayAll">All Contacts </a> </h2>
		<h5> <a href="Context-Path">Add New Contact </a> </h5>

		<table>
			<thead>
				<tr>
					<th>ID</th>
					<th>NAME</th>
					<th>EMAIL</th>
					<th>PHONE</th>
					<th colspan="2">Action</th>
				</tr>
			</thead>
			<c:forEach var="contact" items="${viewData}">
				<tr>
					<td><c:out value="${contact.id}"></c:out></td>
					<td><c:out value="${contact.name}"></c:out></td>
					<td><c:out value="${contact.email}"></c:out></td>
					<td><c:out value="${contact.phone}"></c:out></td>

					<td><a  href="${pageContext.request.contextPath}/userEdit?id=${contact.id}">edit</a></td>
					<td><a  href="${pageContext.request.contextPath}/userDelete?id=${contact.id}">delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>