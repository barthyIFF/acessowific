
<%@ page import="goaccess.Equipamento" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'equipamento.label', default: 'Equipamento')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-equipamento" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><g:remoteLink class="create" controller="equipamento" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]"/></g:remoteLink></li>
			</ul>
		</div>
		<div id="list-equipamento" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code = "equipamento.ip.label" default= "Ip" /></th>
						
						<th><g:message code = "equipamento.mac.label" default= "Mac" /></th>
										
						<th><g:message code="equipamento.solicitacao.label" default="Solicitacao" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${equipamentoInstanceList}" status="i" var="equipamentoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${equipamentoInstance.id}">${fieldValue(bean: equipamentoInstance, field: "ip")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: equipamentoInstance, field: "mac")}</td>
					
						<td>${fieldValue(bean: equipamentoInstance, field: "solicitacao")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${equipamentoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
