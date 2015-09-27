<%@ page import="goaccess.UsuarioSolicitante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-usuarioSolicitante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="index" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="edit-usuarioSolicitante" class="content scaffold-edit" role="main">
			<br><h1>Endereço do Usuário Solicitante</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioSolicitanteInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioSolicitanteInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:usuarioSolicitanteInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${usuarioSolicitanteInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitToRemote class="save" update="page-body" url="[controller:'usuarioSolicitante', action:'update', id:usuarioSolicitanteInstance.id]" value="${message(code: 'default.button.update.label', default: 'Update')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
