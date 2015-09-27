
<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'solicitacao.label', default: 'Solicitacao')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-solicitacao" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="show-solicitacao" class="content scaffold-show" role="main"><br>

			
			<%--Aviso sobre nenhum equipamento na solicitacao--%>		
			<g:if test="${solicitacaoInstance?.equipamentos}">
				<h1>Essa solicitação já foi definida com éxito. Clique 
				<g:remoteLink controller="equipamento" action="create" params="['solicitacao.id': solicitacaoInstance?.id]" update="page-body"> aqui </g:remoteLink>
				para adicionar mais equipamentos a essa solicitação.</h1> 
			</g:if>
			<g:else>			
				<h1><font color = "ff0000">ATENÇÃO: Não existem equipamentos associados a essa solicitacao!<br>
				Clique 
				<g:remoteLink controller="equipamento" action="create" params="['solicitacao.id': solicitacaoInstance?.id]" update="page-body"> aqui </g:remoteLink>
				 para adicionar pelo menos um equipamento.</font></h1>
			</g:else>

			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list solicitacao">
			
				<g:if test="${solicitacaoInstance?.numProtocolo}">
				<li class="fieldcontain">
					<span id="numProtocolo-label" class="property-label"><g:message code="solicitacao.numProtocolo.label" default="Num Protocolo" /></span>
					
						<span class="property-value" aria-labelledby="numProtocolo-label"><g:fieldValue bean="${solicitacaoInstance}" field="numProtocolo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="solicitacao.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${solicitacaoInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.data}">
				<li class="fieldcontain">
					<span id="data-label" class="property-label"><g:message code="solicitacao.data.label" default="Data" /></span>
					
						<span class="property-value" aria-labelledby="data-label"><g:formatDate date="${solicitacaoInstance?.data}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.autorizador}">
				<li class="fieldcontain">
					<span id="autorizador-label" class="property-label"><g:message code="solicitacao.autorizador.label" default="Autorizador" /></span>
					
						<span class="property-value" aria-labelledby="autorizador-label"><g:link controller="autorizadorProf" action="show" id="${solicitacaoInstance?.autorizador?.id}">${solicitacaoInstance?.autorizador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>

				<g:if test="${solicitacaoInstance?.operador}">
				<li class="fieldcontain">
					<span id="operador-label" class="property-label"><g:message code="solicitacao.operador.label" default="Operador" /></span>
					
						<span class="property-value" aria-labelledby="operador-label"><g:link controller="operadorCTI" action="show" id="${solicitacaoInstance?.operador?.id}">${solicitacaoInstance?.operador?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${solicitacaoInstance?.usuario}">
				<li class="fieldcontain">
					<span id="usuario-label" class="property-label"><g:message code="solicitacao.usuario.label" default="Usuario" /></span>
					
						<span class="property-value" aria-labelledby="usuario-label"><g:link controller="usuarioSolicitante" action="show" id="${solicitacaoInstance?.usuario?.id}">${solicitacaoInstance?.usuario?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
				
				<g:if test="${solicitacaoInstance?.equipamentos}">
				<li class="fieldcontain">
					<span id="equipamentos-label" class="property-label"><g:message code="solicitacao.equipamentos.label" default="Equipamentos" /></span>
					
						<g:each in="${solicitacaoInstance.equipamentos}" var="e">
						<span class="property-value" aria-labelledby="equipamentos-label"><g:link controller="equipamento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>				
			
			</ol>
			<g:form url="[resource:solicitacaoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
   			         <g:submitToRemote class="delete" update="page-body" url="[controller:'solicitacao', action:'delete', id:solicitacaoInstance.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
