<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<title>Minha primeira JSP</title>
</head>
<body>
	<jsp:include page="cabecalho.jsp" />
	<h1>Minha primeira JSP</h1>
	<p>Coisa fina!</p>
	<p>Nota <%= 5+5 %> !!!</p>
	<table border="1">
	<tr>
		<td>Número</td>
		<td>Fatorial</td>
	</tr>
	
	<%
		int fat = 1;
		int i = 1;
		for(i = 1; i <= 10; i++){
			fat *= i;
			out.println("<tr><td>" + i + "</td><td>" + fat + "</td></tr>");
		}
		
	%>
	</table>
</body>
</html>