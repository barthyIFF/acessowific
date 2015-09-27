
<%@ page import="goaccess.UsuarioSolicitante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-usuarioSolicitante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>
			</ul>
		</div>
		<div id="list-usuarioSolicitante" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code = "usuarioSolicitante.nome.label" default= "Nome" /></th>
						
						<th><g:message code = "usuarioSolicitante.cpf.label" default= "Cpf" /></th>
						
						<th><g:message code = "usuarioSolicitante.email.label" default= "Email" /></th>
						
						<th><g:message code = "usuarioSolicitante.setor.label" default= "Setor" /></th>
						
						<th><g:message code = "usuarioSolicitante.celular.label" default= "Celular" /></th>
																								
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${usuarioSolicitanteInstanceList}" status="i" var="usuarioSolicitanteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${usuarioSolicitanteInstance.id}">${fieldValue(bean: usuarioSolicitanteInstance, field: "nome")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "setor")}</td>
					
						<td>${fieldValue(bean: usuarioSolicitanteInstance, field: "celular")}</td>
					
						
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${usuarioSolicitanteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
