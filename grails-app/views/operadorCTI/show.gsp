
<%@ page import="goaccess.OperadorCTI" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'operadorCTI.label', default: 'OperadorCTI')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-operadorCTI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="indexAntigo" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="show-operadorCTI" class="content scaffold-show" role="main">
			<br><h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list operadorCTI">
			
				<g:if test="${operadorCTIInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="operadorCTI.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${operadorCTIInstance}" field="username"/></span>
					
				</li>
				</g:if>
				<%--
				<g:if test="${operadorCTIInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="operadorCTI.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${operadorCTIInstance}" field="password"/></span>
					
				</li>
				</g:if>--%>
			
				<g:if test="${operadorCTIInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="operadorCTI.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${operadorCTIInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="operadorCTI.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${operadorCTIInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="operadorCTI.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${operadorCTIInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="operadorCTI.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${operadorCTIInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="operadorCTI.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${operadorCTIInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="operadorCTI.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${operadorCTIInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${operadorCTIInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="operadorCTI.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${operadorCTIInstance?.enabled}" /></span>
					
				</li>
				</g:if>
			
				<%--
				<g:if test="${operadorCTIInstance?.papel}">
				<li class="fieldcontain">
					<span id="papel-label" class="property-label"><g:message code="operadorCTI.papel.label" default="Papel" /></span>
					
						<span class="property-value" aria-labelledby="papel-label"><g:link controller="papel" action="show" id="${operadorCTIInstance?.papel?.id}">${operadorCTIInstance?.papel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>--%>
			
				<g:if test="${operadorCTIInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="operadorCTI.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${operadorCTIInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${operadorCTIInstance?.solicitacoes}">
				<li class="fieldcontain">
					<span id="solicitacoes-label" class="property-label"><g:message code="operadorCTI.solicitacoes.label" default="Solicitacoes" /></span>
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:fieldValue bean="${operadorCTIInstance}" field="solicitacoes"/></span>					
						<%--Depois de criadas as solicitacoes não devem ser editadas, apenas apagadas
						<g:each in="${operadorCTIInstance.solicitacoes}" var="s">
							<span class="property-value" aria-labelledby="solicitacoes-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each> --%>
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:operadorCTIInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
				    <g:remoteLink class="edit" action="edit" resource="${operadorCTIInstance}" update="page-body"><g:message code="default.button.edit.label" default="Edit" /></g:remoteLink>				
					<g:submitToRemote class="delete" update="page-body" url="[controller:'operadorCTI', action:'delete', id:operadorCTIInstance.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
