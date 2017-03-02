<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Demo SP</title>
</head>
<body>
	<%
		String username = "";
		if (session.getValue("openid.ax.value.fullname") != null) {
			username = session.getValue("openid.ax.value.fullname").toString();
		} else {
			username = request.getAttribute("username").toString();
		}
	%>
	<h1>
		Welcome
		<%=username%>!
	</h1>
	<br></br>
	<h3>Response Parameters</h3>
	<%
		Enumeration en = session.getAttributeNames();

		while (en.hasMoreElements()) {
			String parameterName = (String) en.nextElement();
			out.println(parameterName + "		:	" + session.getValue(parameterName).toString() + "<br />");
			session.removeAttribute(parameterName);
		}
	%>
</body>
</html>