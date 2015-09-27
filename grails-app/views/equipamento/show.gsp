
<%@ page import="goaccess.Equipamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'equipamento.label', default: 'Equipamento')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-equipamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="index" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="show-equipamento" class="content scaffold-show" role="main">
			<br><h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list equipamento">
			
				<g:if test="${equipamentoInstance?.ip}">
				<li class="fieldcontain">
					<span id="ip-label" class="property-label"><g:message code="equipamento.ip.label" default="Ip" /></span>
					
						<span class="property-value" aria-labelledby="ip-label"><g:fieldValue bean="${equipamentoInstance}" field="ip"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipamentoInstance?.mac}">
				<li class="fieldcontain">
					<span id="mac-label" class="property-label"><g:message code="equipamento.mac.label" default="Mac" /></span>
					
						<span class="property-value" aria-labelledby="mac-label"><g:fieldValue bean="${equipamentoInstance}" field="mac"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${equipamentoInstance?.solicitacao}">
				<li class="fieldcontain">
					<span id="solicitacao-label" class="property-label"><g:message code="equipamento.solicitacao.label" default="Solicitacao" /></span>
					<span class="property-value" aria-labelledby="solicitacoes-label"><g:fieldValue bean="${equipamentoInstance}" field="solicitacao"/></span>
					<%--Depois de criadas as solicitacoes não devem ser editadas, apenas apagadas
						<span class="property-value" aria-labelledby="solicitacao-label"><g:link controller="solicitacao" action="show" id="${equipamentoInstance?.solicitacao?.id}">${equipamentoInstance?.solicitacao?.encodeAsHTML()}</g:link></span>
						--%>
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:equipamentoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
				    <g:remoteLink class="edit" action="edit" resource="${equipamentoInstance}" update="page-body"><g:message code="default.button.edit.label" default="Edit" /></g:remoteLink>
   			         <g:submitToRemote class="delete" update="page-body" url="[controller:'equipamento', action:'delete', id:equipamentoInstance.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" ></g:submitToRemote>
					
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
