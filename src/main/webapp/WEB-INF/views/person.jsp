<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Employee Save Page</title>
<style>
.error {
	color: #ff0000;
	font-style: italic;
	font-weight: bold;
}
</style>
</head>
<body>

	<springForm:form method="POST" modelAttribute="person" action="save.do">
		<table>
			<tr>
				<td>First name:</td>
				<td><springForm:input path="firstname" /></td>
				<td><springForm:errors path="firstname" cssClass="error" /></td>
			</tr>
			<tr>
				<td>Last name:</td>
				<td><springForm:input path="lastname" /></td>
				<td><springForm:errors path="lastname" cssClass="error" /></td>
			</tr>

			<tr>
                <td>Phone Number:</td>
                <td><springForm:input path="phoneNumber" /></td>
                <td><springForm:errors path="phoneNumber" cssClass="error" /></td>
            </tr>
			<tr>
				<td>Employee Role:</td>
				<td><springForm:select path="carsType">
						<springForm:option value="" label="Select Car" />
						<springForm:option value="volvo" label="Volvo" />
						<springForm:option value="fiat" label="Fiat" />
						<springForm:option value="audi" label="Audi" />
					</springForm:select></td>
				<td><springForm:errors path="carsType" cssClass="error" /></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" value="SavePerson"></td>
			</tr>
		</table>

	</springForm:form>

</body>
</html>