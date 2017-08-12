<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="usuario" class="br.com.fiap.mb.UsuarioSessaoBean" scope="session">
	<jsp:setProperty name="usuario" property="primeiroAcesso" />
	<jsp:setProperty name="usuario" property="ultimoAcesso" />
</jsp:useBean>
<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Usuario logado</title>
</head>
<body>
	Primeiro acesso ${usuario.primeiroAcesso} ! <br />
	Ultimo acesso ${usuario.ultimoAcesso} !
</body>
</html>