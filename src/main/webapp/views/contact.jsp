<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Contact_Page</title>
<link rel="stylesheet" href="./CSS/contact.css">
</head>
<body>
	<div>
		<h1>Contact Form</h1>
		<hr>

		<form id="form1" name="form1" method="post" action="contactProcess">

			<table>
				<thead></thead>
				<tbody>
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

		<button form="form1" id="btn" name="btn">Submit</button>
		<br>
		<br> <a href="displayAll" id="view">View All Contact Details</a>
	</div>
</body>
</html>