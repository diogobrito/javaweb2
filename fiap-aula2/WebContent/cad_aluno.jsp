<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:useBean id="aluno" class="br.com.fiap.mb.AlunoBean" scope="page">
	<jsp:setProperty name="aluno" property="nome" param="nome"/>
	<jsp:setProperty name="aluno" property="email" param="email"/>
	<jsp:setProperty name="aluno" property="telefone" param="telefone"/>
</jsp:useBean>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro Aluno</title>
</head>
<body>
	Olá <jsp:getProperty name="aluno" property="nome"/>
</body>
</html>