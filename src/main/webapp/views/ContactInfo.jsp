<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UpdateContactInformation</title>
</head>
<body>
	<script type="text/javascript">
		setTimeout(
				function() {
					alert('Contact Saved into Database Successfully');
					// Redirect to the desired URL after the alert
					window.location.href = '${pageContext.request.contextPath}/displayAll';
				}, 10);
	</script>
</body>
</html>