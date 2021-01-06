<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>
<html>
<head>
	<title>Customer Saved Successfully</title>
</head>
<body>
<h3>
	Person Saved Successfully.
</h3>
<strong>Customer Name:${person.firstname}</strong><br>
<strong>Customer Email:${person.lastname}</strong><br>
<strong>Customer Age:${person.phoneNumber}</strong><br>


</body>
</html>