
<%@ page import="goaccess.OperadorCTI" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'operadorCTI.label', default: 'OperadorCTI')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-operadorCTI" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="list-operadorCTI" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code = "operadorCTI.username.label" default= "Login" /></th>
						
						<th><g:message code = "operadorCTI.nome.label" default= "Nome" /></th>
						
						<th><g:message code = "operadorCTI.cpf.label" default= "Cpf" /></th>
						
						<th><g:message code = "operadorCTI.email.label" default= "Email" /></th>
						
						<th><g:message code = "operadorCTI.celular.label" default= "Celular" /></th>
																										
					</tr>
				</thead>
				<tbody>
				<g:each in="${operadorCTIInstanceList}" status="i" var="operadorCTIInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${operadorCTIInstance.id}">${fieldValue(bean: operadorCTIInstance, field: "username")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "nome")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "cpf")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: operadorCTIInstance, field: "celular")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${operadorCTIInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
