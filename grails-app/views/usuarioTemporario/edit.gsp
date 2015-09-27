<%@ page import="goaccess.UsuarioTemporario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#edit-usuarioTemporario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="index" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="edit-usuarioTemporario" class="content scaffold-edit" role="main">
			<br><h1>Endereço do Usuario Temporário</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioTemporarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioTemporarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:usuarioTemporarioInstance, action:'update']" method="PUT" >
				<g:hiddenField name="version" value="${usuarioTemporarioInstance?.version}" />
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitToRemote class="save" update="page-body" url="[controller:'usuarioTemporario', action:'update', id:usuarioTemporarioInstance.id]" value="${message(code: 'default.button.update.label', default: 'Update')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
