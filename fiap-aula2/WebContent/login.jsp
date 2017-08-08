<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="aluno" class="br.com.fiap.mb.Login" scope="page">
	<jsp:setProperty name="usuario" property="user" param="user"/>
	<jsp:setProperty name="usuario" property="pass" param="pass"/>
</jsp:useBean>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usuario logado</title>
</head>
<body>
	Olá ${usuario.user} !
</body>
</html>