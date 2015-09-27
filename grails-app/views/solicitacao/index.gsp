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
		
			<div class="nav" role="navigation">
				<ul>				
					<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
				</ul>
			</div>
		
		<div id="list-solicitacao" class="content scaffold-list" role="main">
			<br><h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>

						<th><g:message code = "solicitacao.numProtocolo.label" default= "Num Protocolo" /></th>
						
						<th><g:message code = "solicitacao.status.label" default= "Status" /></th>
						
						<th><g:message code = "solicitacao.usuario.label" default= "Usuario" /></th>
						
						<th><g:message code = "solicitacao.data.label" default= "Data" /></th>
																				
						<th><g:message code="solicitacao.autorizador.label" default="Autorizador" /></th>
					
						<th><g:message code="solicitacao.operador.label" default="Operador" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${solicitacaoInstanceList}" status="i" var="solicitacaoInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:remoteLink class="show" action="show" update="page-body" id="${solicitacaoInstance.id}">${fieldValue(bean: solicitacaoInstance, field: "numProtocolo")}</g:remoteLink></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "status")}</td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "usuario")}</td>
					
						<td><g:formatDate date="${solicitacaoInstance.data}" /></td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "autorizador")}</td>
					
						<td>${fieldValue(bean: solicitacaoInstance, field: "operador")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${solicitacaoInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>

