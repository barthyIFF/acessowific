
<%@ page import="goaccess.UsuarioSolicitante" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioSolicitante.label', default: 'UsuarioSolicitante')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioSolicitante" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:remoteLink class="list" action="index" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>				
				<li><g:remoteLink class="create" action="create" update="page-body"><g:message code="default.new.label" args="[entityName]" /></g:remoteLink></li>				
			</ul>
		</div>
		<div id="show-usuarioSolicitante" class="content scaffold-show" role="main">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioSolicitante">
			<br><h1>Endereço do Usuário Solicitante</h1><br>
				<g:if test="${usuarioSolicitanteInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="usuarioSolicitante.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="cep"/></span>
				</li>
				</g:if>

				<g:if test="${usuarioSolicitanteInstance?.logradouro}">
				<li class="fieldcontain">
					<span id="logradouro-label" class="property-label"><g:message code="usuarioSolicitante.logradouro.label" default="Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="logradouro-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="logradouro"/></span>
				</li>
				</g:if>

				<g:if test="${usuarioSolicitanteInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="usuarioSolicitante.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="bairro"/></span>
				</li>
				</g:if>

				<g:if test="${usuarioSolicitanteInstance?.localidade}">
				<li class="fieldcontain">
					<span id="localidade-label" class="property-label"><g:message code="usuarioSolicitante.localidade.label" default="Localidade" /></span>
					
						<span class="property-value" aria-labelledby="localidade-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="localidade"/></span>
				</li>
				</g:if>

				<g:if test="${usuarioSolicitanteInstance?.uf}">
				<li class="fieldcontain">
					<span id="uf-label" class="property-label"><g:message code="usuarioSolicitante.uf.label" default="UF" /></span>
					
						<span class="property-value" aria-labelledby="uf-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="uf"/></span>
				</li>
				</g:if>
				
				<g:if test="${usuarioSolicitanteInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="usuarioSolicitante.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="complemento"/></span>
				</li>
				</g:if>

			<br><h1>Outros dados do Usuário Solicitante</h1>
			<br><g:if test="${usuarioSolicitanteInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="usuarioSolicitante.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="usuarioSolicitante.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioSolicitante.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.setor}">
				<li class="fieldcontain">
					<span id="setor-label" class="property-label"><g:message code="usuarioSolicitante.setor.label" default="Setor" /></span>
					
						<span class="property-value" aria-labelledby="setor-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="setor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioSolicitanteInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="usuarioSolicitante.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
			
				<g:if test="${usuarioSolicitanteInstance?.solicitacao}">
				<li class="fieldcontain">
					<span id="solicitacao-label" class="property-label"><g:message code="usuarioSolicitante.solicitacao.label" default="Solicitacao" /></span>
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:fieldValue bean="${usuarioSolicitanteInstance}" field="solicitacao"/></span>
						<%--Depois de criadas as solicitacoes não devem ser editadas, apenas apagadas
						<g:each in="${usuarioSolicitanteInstance.solicitacao}" var="s">
						<span class="property-value" aria-labelledby="solicitacao-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>--%>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:usuarioSolicitanteInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
				    <g:remoteLink class="edit" action="edit" resource="${usuarioSolicitanteInstance}" update="page-body"><g:message code="default.button.edit.label" default="Edit" /></g:remoteLink>				
                     <g:submitToRemote class="delete" update="page-body" url="[controller:'usuarioSolicitante', action:'delete', id:usuarioSolicitanteInstance.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
