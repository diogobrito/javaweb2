<jsp:useBean id="usuario" class="br.com.fiap.mb.UsuarioSessaoBean" scope="session"/>

<header>
	<h6>Primeiro acesso: ${usuario.primeiroAcesso}</h6> <br />
	<h6>Ultimo acesso: ${usuario.primeiroAcesso}</h6>
</header>