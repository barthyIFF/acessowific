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
			<h1> Sr. ${sec.username()}, segue abaixo a lista com o histórico das solicitações em seu nome organizadas pelo status.</h1><br>
			<%--Username logado = ${sec.loggedInUserInfo(field:'username')}<br>
			${sec.username()}<br>--%>
			<br>
			<br>
			
			<%--Somente aguardando aprovacao --%>
			<p><b><u>Solicitações AGUARDANDO APROVAÇÃO:</u></b></p> 
			<br>			
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'AGUARDANDO APROVACAO de '+sol.autorizador}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario} -
	    			<g:remoteLink class="aprovaSol" action="aprovaSol" update="page-body" id="${sol.id}">APROVAR</g:remoteLink> 
    				<g:remoteLink class="reprovaSol" action="reprovaSol" update="page-body" id="${sol.id}">REPROVAR</g:remoteLink>
				</g:if>				
			</g:each>			
			<br>

			
			
			<%--Aprovadas --%>
			<p><b><u>Solicitações APROVADAS:</u></b></p>
			<br>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'Solicitacao APROVADA. Aguardando cadastro pelo operador: '+sol.operador}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario}
				</g:if>
			</g:each>
			<br>
			<br>
			<%--Reprovadas --%>
			<p><b><u>Solicitações REPROVADAS:</u></b></p>
			<br>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<%--Claudio - 17/09/15: O Operador tb pode reprovar, e nesse caso o nome dele fica gravado para o Autorizador.
				Depois que o Autorizador aprovar o operador pode reprovar devido a um erro técnico como o numero incorreto do IP, por exemplo.--%>
				<g:if test="${sol.status == 'Solicitacao REPROVADA por: '+sol.autorizador || sol.status == 'Solicitacao REPROVADA por: '+sol.operador}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario} - ${sol.status} <p> <br>
				</g:if>
			</g:each>
			<br>
			<br>

			<%--Finalizadas: acesso garantido. --%>
			<p><b><u>Solicitações FINALIZADAS (acesso à rede garantido):</u></b></p>
			<br>
			<g:each in="${solicitacoesPorAutorizador}" var="sol" status="i">
				<g:if test="${sol.status == 'Solicitacao FINALIZADA. Acesso a rede garantido.'}">
    				<p>Protocolo: ${sol.numProtocolo}; Usuário: ${sol.usuario}
				</g:if>
			</g:each>
	</body>
</html>
