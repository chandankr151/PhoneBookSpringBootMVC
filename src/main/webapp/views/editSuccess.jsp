<%@page import="java.util.Optional"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.chandan.entity.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./CSS/editSuccess.css">
</head>
<body>

	<div>
		<h1>Update Contact Form</h1>
		<hr>

		<form id="form1" name="form1" method="post" action="updateContact">

			<table>
				<thead></thead>
				<tbody>

					<tr>
						<td><label>Enter Id: </label></td>
						<td><input type="text" name="id" id="id1" required></td>
					</tr>
					<tr>
						<td><label>Name: </label></td>
						<td><input type="text" name="name" id="nm" required>
						</td>
					</tr>
					<tr>
						<td><label>Email: </label></td>
						<td><input type="text" name="email" id="em" required></td>
					</tr>
					<tr>
						<td><label>Phone: </label></td>
						<td><input type="text" name="phone" id="ph" required>
						</td>
					</tr>
				</tbody>
				<tfoot>
				</tfoot>
			</table>
		</form>
		<button form="form1" id="btn" name="btn">Update</button>
		<br> <br>
	</div>

	<script type="text/javascript">
	
	<%Optional<Contact> contact = (Optional) request.getAttribute("searchedData");

Long id = contact.get().getId();
String name = contact.get().getName();
String email = contact.get().getEmail();
String phone = contact.get().getPhone();%>
	/* // Get the content of the scriptlet tag */
	var id		= "<%=id%>";
	var name 	= "<%=name%>";
	var email 	= "<%=email%>";
	var phone 	= "<%=phone%>";

		/* Set the value of the input field with the scriptlet data */
		document.getElementById("id1").value = id;
		document.getElementById("nm").value = name;
		document.getElementById("em").value = email;
		document.getElementById("ph").value = phone;

		console.log("Value Set into form fields Successfully!!! Thank you!!!");
	</script>
</body>
</html>