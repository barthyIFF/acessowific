<!DOCTYPE html>
<html>
<head>
<title>Sistema de Solicitação de Acesso Wifi</title>
<meta name="layout" content="main4">
</head>
<body class="page">
	<div class="conteudo">
			<div class="row">
				<div class="col-md-3"> 
					<ul class="nav nav-pills nav-stacked">
						<li><g:remoteLink class="link-normal" controller="Solicitacao" action="indexOperador" update="page-body">
						<span class="glyphicon glyphicon-tasks"></span>&nbsp;Encerrar Solicitacoes</g:remoteLink></li>
						
						<li><g:remoteLink class="link-normal" controller="Solicitacao" action="index" update="page-body">
						<span class="glyphicon glyphicon-list-alt"></span>&nbsp;Lista de solicitacoes</g:remoteLink></li>
						
						<li><g:remoteLink class="link-normal" controller="OperadorCTI" action="indexAntigo" update="page-body">
						<span class="glyphicon glyphicon-wrench"></span>&nbsp;Operadores</g:remoteLink></li>
						
						<li><g:remoteLink class="link-normal" controller="UsuarioSolicitante" action="index" update="page-body">
						<span class="glyphicon glyphicon-user"></span>&nbsp;Usuários</g:remoteLink></li>
						
						<li><g:remoteLink class="link-normal" controller="UsuarioTemporario" action="index" update="page-body">
						<span class="glyphicon glyphicon-time"></span>Usuários temporários</g:remoteLink></li>
						
						<li><g:remoteLink class="link-normal" controller="Equipamento" action="index" update="page-body">
						<span class="glyphicon glyphicon-phone"></span>&nbsp;Equipamentos</g:remoteLink></li>
						
						<li><g:remoteLink class="link-normal" controller="autorizadorProf" action="indexAntigo" update="page-body">
						<span class="glyphicon glyphicon-send"></span>&nbsp;Autorizadores</g:remoteLink></li>
						
						<li><a class="link-normal" href="j_spring_security_logout">
						<span class="glyphicon glyphicon-log-out"></span>&nbsp;Fazer logout</a></li>
					</ul>
				</div>
				<div class="col-md-9" id="page-body">
					<h1>Seja bem Vindo, ${sec.username()}!</h1>
					<p>
					<br>
					<br>
						<%--Verifica as solicitacoes pendentes --%>
						<g:if test="${solicitacoesPorOperadorEStatus?.size() == 0}">
    						<p>Atualmente não existem solicitações pendentes em seu nome.</p>
						</g:if>
						<g:else>
							<font color="red">Existe(m) ${solicitacoesPorOperadorEStatus?.size()} solicitações pendentes em seu nome.<br>
							Você pode efetuar o cadastro dos equipamentos dessas solicitações na rede e em seguida encerra-las.<br>
		 					Opcionalmente, caso haja algum problema técnico que impeça o cadastro, você também pode reprovar a solicitação.<br>
		 					Para encerrar ou reprovar a(s) solicitação(ões) clique <g:remoteLink controller="Solicitacao" action="indexOperador" update="page-body">aqui</g:remoteLink> 
		 					ou use o menu ao lado.</font>
						</g:else>	
					</p>
				</div>
			</div>
	</div>
		<footer class="site-footer">
		</footer>	
</body>
</html>
