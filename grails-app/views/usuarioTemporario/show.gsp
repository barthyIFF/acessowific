
<%@ page import="goaccess.UsuarioTemporario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		<g:set var="entityName" value="${message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-usuarioTemporario" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-usuarioTemporario" class="content scaffold-show" role="main">			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list usuarioTemporario">
			<br><h1>Endereço do Usuário Temporário</h1><br>
			
				<g:if test="${usuarioTemporarioInstance?.cep}">
				<li class="fieldcontain">
					<span id="cep-label" class="property-label"><g:message code="usuarioTemporario.cep.label" default="Cep" /></span>
					
						<span class="property-value" aria-labelledby="cep-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="cep"/></span>
					
				</li>
				</g:if>				
				
				<g:if test="${usuarioTemporarioInstance?.logradouro}">
				<li class="fieldcontain">
					<span id="logradouro-label" class="property-label"><g:message code="usuarioTemporario.logradouro.label" default="Logradouro" /></span>
					
						<span class="property-value" aria-labelledby="logradouro-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="logradouro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.bairro}">
				<li class="fieldcontain">
					<span id="bairro-label" class="property-label"><g:message code="usuarioTemporario.bairro.label" default="Bairro" /></span>
					
						<span class="property-value" aria-labelledby="bairro-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="bairro"/></span>
					
				</li>
				</g:if>		

			
				<g:if test="${usuarioTemporarioInstance?.complemento}">
				<li class="fieldcontain">
					<span id="complemento-label" class="property-label"><g:message code="usuarioTemporario.complemento.label" default="Complemento" /></span>
					
						<span class="property-value" aria-labelledby="complemento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="complemento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.localidade}">
				<li class="fieldcontain">
					<span id="localidade-label" class="property-label"><g:message code="usuarioTemporario.localidade.label" default="Localidade" /></span>
					
						<span class="property-value" aria-labelledby="localidade-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="localidade"/></span>
					
				</li>
				</g:if>		
				
				<g:if test="${usuarioTemporarioInstance?.uf}">
				<li class="fieldcontain">
					<span id="uf-label" class="property-label"><g:message code="usuarioTemporario.uf.label" default="Uf" /></span>
					
						<span class="property-value" aria-labelledby="uf-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="uf"/></span>
					
				</li>
				</g:if>
			
				<br><h1>Outros dados do Usuário Temporário</h1><br>
				<g:if test="${usuarioTemporarioInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="usuarioTemporario.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.cpf}">
				<li class="fieldcontain">
					<span id="cpf-label" class="property-label"><g:message code="usuarioTemporario.cpf.label" default="Cpf" /></span>
					
						<span class="property-value" aria-labelledby="cpf-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="cpf"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="usuarioTemporario.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.setor}">
				<li class="fieldcontain">
					<span id="setor-label" class="property-label"><g:message code="usuarioTemporario.setor.label" default="Setor" /></span>
					
						<span class="property-value" aria-labelledby="setor-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="setor"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.celular}">
				<li class="fieldcontain">
					<span id="celular-label" class="property-label"><g:message code="usuarioTemporario.celular.label" default="Celular" /></span>
					
						<span class="property-value" aria-labelledby="celular-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="celular"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.tempoAcesso}">
				<li class="fieldcontain">
					<span id="tempoAcesso-label" class="property-label"><g:message code="usuarioTemporario.tempoAcesso.label" default="Tempo Acesso" /></span>
					
						<span class="property-value" aria-labelledby="tempoAcesso-label"><g:formatDate date="${usuarioTemporarioInstance?.tempoAcesso}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.evento}">
				<li class="fieldcontain">
					<span id="evento-label" class="property-label"><g:message code="usuarioTemporario.evento.label" default="Evento" /></span>
					
						<span class="property-value" aria-labelledby="evento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="evento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.setorEvento}">
				<li class="fieldcontain">
					<span id="setorEvento-label" class="property-label"><g:message code="usuarioTemporario.setorEvento.label" default="Setor Evento" /></span>
					
						<span class="property-value" aria-labelledby="setorEvento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="setorEvento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${usuarioTemporarioInstance?.numEvento}">
				<li class="fieldcontain">
					<span id="numEvento-label" class="property-label"><g:message code="usuarioTemporario.numEvento.label" default="Num Evento" /></span>
					
						<span class="property-value" aria-labelledby="numEvento-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="numEvento"/></span>
					
				</li>
				</g:if>
	
			
				<g:if test="${usuarioTemporarioInstance?.solicitacao}">
				<li class="fieldcontain">
					<span id="solicitacao-label" class="property-label"><g:message code="usuarioTemporario.solicitacao.label" default="Solicitacao" /></span>
						<span class="property-value" aria-labelledby="solicitacoes-label"><g:fieldValue bean="${usuarioTemporarioInstance}" field="solicitacao"/></span>					
						<%--Depois de criadas as solicitacoes não devem ser editadas, apenas apagadas
						<g:each in="${usuarioTemporarioInstance.solicitacao}" var="s">
						<span class="property-value" aria-labelledby="solicitacao-label"><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></span>
						</g:each>--%>
					
				</li>
				</g:if>	
		
			</ol>
			<g:form url="[resource:usuarioTemporarioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
				    <g:remoteLink class="edit" action="edit" resource="${usuarioTemporarioInstance}" update="page-body"><g:message code="default.button.edit.label" default="Edit" /></g:remoteLink>				
   			         <g:submitToRemote class="delete" update="page-body" url="[controller:'usuarioTemporario', action:'delete', id:usuarioTemporarioInstance.id]" value="${message(code: 'default.button.delete.label', default: 'Delete')}" ></g:submitToRemote>
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
