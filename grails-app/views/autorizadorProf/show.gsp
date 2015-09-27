
<%@ page import="goaccess.AutorizadorProf" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'autorizadorProf.label', default: 'AutorizadorProf')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-autorizadorProf" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="indexAntigo" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="show-autorizadorProf" class="content scaffold-show" role="main">
			<br><h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list autorizadorProf">
			
				<g:if test="${autorizadorProfInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="autorizadorProf.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${autorizadorProfInstance}" field="username"/></span>
					
				</li>
				</g:if>
				<%--
				<g:if test="${autorizadorProfInstance?.password}">
				<li class="fieldcontain">
					<span id="password-label" class="property-label"><g:message code="autorizadorProf.password.label" default="Password" /></span>
					
						<span class="property-value" aria-labelledby="password-label"><g:fieldValue bean="${autorizadorProfInstance}" field="password"/></span>
					
				</li>
				</g:if> --%>
			
				<g:if test="${autorizadorProfInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="autorizadorProf.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${autorizadorProfInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="autorizadorProf.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${autorizadorProfInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="autorizadorProf.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${autorizadorProfInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.setorResponsavel}">
				<li class="fieldcontain">
					<span id="setorResponsavel-label" class="property-label"><g:message code="autorizadorProf.setorResponsavel.label" default="Setor Responsavel" /></span>
					
						<span class="property-value" aria-labelledby="setorResponsavel-label"><g:fieldValue bean="${autorizadorProfInstance}" field="setorResponsavel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.numMemo}">
				<li class="fieldcontain">
					<span id="numMemo-label" class="property-label"><g:message code="autorizadorProf.numMemo.label" default="Num Memo" /></span>
					
						<span class="property-value" aria-labelledby="numMemo-label"><g:fieldValue bean="${autorizadorProfInstance}" field="numMemo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.celularNum}">
				<li class="fieldcontain">
					<span id="celularNum-label" class="property-label"><g:message code="autorizadorProf.celularNum.label" default="Celular Num" /></span>
					
						<span class="property-value" aria-labelledby="celularNum-label"><g:fieldValue bean="${autorizadorProfInstance}" field="celularNum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.accountExpired}">
				<li class="fieldcontain">
					<span id="accountExpired-label" class="property-label"><g:message code="autorizadorProf.accountExpired.label" default="Account Expired" /></span>
					
						<span class="property-value" aria-labelledby="accountExpired-label"><g:formatBoolean boolean="${autorizadorProfInstance?.accountExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.accountLocked}">
				<li class="fieldcontain">
					<span id="accountLocked-label" class="property-label"><g:message code="autorizadorProf.accountLocked.label" default="Account Locked" /></span>
					
						<span class="property-value" aria-labelledby="accountLocked-label"><g:formatBoolean boolean="${autorizadorProfInstance?.accountLocked}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.enabled}">
				<li class="fieldcontain">
					<span id="enabled-label" class="property-label"><g:message code="autorizadorProf.enabled.label" default="Enabled" /></span>
					
						<span class="property-value" aria-labelledby="enabled-label"><g:formatBoolean boolean="${autorizadorProfInstance?.enabled}" /></span>
					
				</li>
				</g:if>
				<%--
				<g:if test="${autorizadorProfInstance?.papel}">
				<li class="fieldcontain">
					<span id="papel-label" class="property-label"><g:message code="autorizadorProf.papel.label" default="Papel" /></span>
					
						<span class="property-value" aria-labelledby="papel-label"><g:link controller="papel" action="show" id="${autorizadorProfInstance?.papel?.id}">${autorizadorProfInstance?.papel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if> --%>
			
				<g:if test="${autorizadorProfInstance?.passwordExpired}">
				<li class="fieldcontain">
					<span id="passwordExpired-label" class="property-label"><g:message code="autorizadorProf.passwordExpired.label" default="Password Expired" /></span>
					
						<span class="property-value" aria-labelledby="passwordExpired-label"><g:formatBoolean boolean="${autorizadorProfInstance?.passwordExpired}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${autorizadorProfInstance?.solicitacoes}">
				<li class="fieldcontain">
					<span id="solicitacoes-label" class="property-label"><g:message code="autorizadorProf.solicitacoes.label" default="Solicitacoes" /></span>
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:fieldValue bean="${autorizadorProfInstance}" field="solicitacoes"/></span>
						<%--Depois de criadas as solicitacoes não devem ser editadas, apenas apagadas
						<g:each in="${autorizadorProfInstance.solicitacoes}" var="s">
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>--%>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:autorizadorProfInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
				    <g:remoteLink class="edit" action="edit" resource="${autorizadorProfInstance}" update="page-body"><g:message code="default.button.edit.label" default="Edit" /></g:remoteLink>				
   			        <g:submitToRemote class="delete" update="page-body" url="[controller:'autorizadorProf', action:'delete', id:autorizadorProfInstance.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
