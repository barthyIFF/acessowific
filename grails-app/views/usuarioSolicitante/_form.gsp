<%@ page import="goaccess.UsuarioSolicitante" %>


<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'cep', 'error')} required">	
	<label for="cep">
		<g:message code="usuarioSolicitante.cep.label" default="Informe o Cep do endereço" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${usuarioSolicitanteInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'logradouro', 'error')} required">	
	<label for="logradouro">
		<g:message code="usuarioSolicitante.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${usuarioSolicitanteInstance?.logradouro}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'bairro', 'error')} required">	
	<label for="bairro">
		<g:message code="usuarioSolicitante.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${usuarioSolicitanteInstance?.bairro}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'localidade', 'error')} required">	
	<label for="localidade">
		<g:message code="usuarioSolicitante.localidade.label" default="Localidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidade" required="" value="${usuarioSolicitanteInstance?.localidade}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'uf', 'error')} required">	
	<label for="uf">
		<g:message code="usuarioSolicitante.uf.label" default="UF" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uf" required="" value="${usuarioSolicitanteInstance?.uf}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'complemento', 'error')} required">	
	<label for="complemento">
		<g:message code="usuarioSolicitante.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${usuarioSolicitanteInstance?.complemento}"/>

</div>


<br><h1>Outros Dados do Usuário Solicitante</h1><br>
<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'nome', 'error')} required">
	
	<label for="nome">
		<g:message code="usuarioSolicitante.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioSolicitanteInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuarioSolicitante.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioSolicitanteInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioSolicitante.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioSolicitanteInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'setor', 'error')} required">
	<label for="setor">
		<g:message code="usuarioSolicitante.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setor" required="" value="${usuarioSolicitanteInstance?.setor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="usuarioSolicitante.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${usuarioSolicitanteInstance?.celular}"/>

</div>


<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'solicitacao', 'error')} ">
	<label for="solicitacao">
		<g:message code="usuarioSolicitante.solicitacao.label" default="Solicitacao" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioSolicitanteInstance?.solicitacao?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="solicitacao" action="create" params="['operadorCTI.id': operadorCTIInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:remoteLink>
</li>
</ul>


</div>

