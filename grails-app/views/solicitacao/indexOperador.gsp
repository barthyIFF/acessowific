<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitação')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-solicitacao" class="content scaffold-list" role="main">
		<br>
			<h1> Sr. ${sec.username()}, segue abaixo a lista com as solicitacoes já aprovadas. <br>
			 Faça o cadastro dos equipamentos na rede e em seguida encerre a solicitacao. <br>
			 Caso haja algum problema técnico que impeça o cadastro, você também tem a opção de reprovar a solicitação.</h1><br>
			<%--Username logado = ${sec.loggedInUserInfo(field:'username')}<br>
			${sec.username()}<br>--%>
			<br>
			<br>
			
			<%--Somente aguardando aprovacao --%>
			<p><b><u>Solicitações AGUARDANDO ENCERRAMENTO:</u></b></p> 
			<br>			
			<g:each in="${solicitacoesPorOperador}" var="sol" status="i">
				<g:if test="${sol.status == 'Solicitacao APROVADA. Aguardando cadastro pelo operador: '+sol.operador}">
    				<p>Protocolo: ${sol.numProtocolo}; Autorizador: ${sol.autorizador} -
	    			<g:remoteLink class="encerraSol" action="encerraSol" update="page-body" id="${sol.id}">ENCERRAR</g:remoteLink> 
    				<g:remoteLink class="op_reprovaSol" action="op_reprovaSol" update="page-body" id="${sol.id}">REPROVAR</g:remoteLink>
				</g:if>				
			</g:each>			
			<br>
	</body>
</html>
