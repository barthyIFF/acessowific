
<%@ page import="goaccess.UsuarioTemporario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioTemporario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>
			</ul>
		</div>
		<div id="list-usuarioTemporario" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code = "usuarioTemporario.nome.label" default= "Nome" /></th>
						
						<th><g:message code = "usuarioTemporario.cpf.label" default= "Cpf" /></th>
						
						<th><g:message code = "usuarioTemporario.email.label" default= "Email" /></th>
						
						<th><g:message code = "usuarioTemporario.setor.label" default= "Setor" /></th>
						
						<th><g:message code = "usuarioTemporario.celular.label" default= "Celular" /></th>
						
						<th><g:message code = "usuarioTemporario.tempoAcesso.label" default= "Tempo Acesso" /></th>
																														
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioTemporarioInstanceList}" status="i" var="usuarioTemporarioInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${usuarioTemporarioInstance.id}">${fieldValue(bean: usuarioTemporarioInstance, field: "nome")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "setor")}</td>
					
						<td>${fieldValue(bean: usuarioTemporarioInstance, field: "celular")}</td>
					
						<td><g:formatDate date="${usuarioTemporarioInstance.tempoAcesso}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioTemporarioInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
