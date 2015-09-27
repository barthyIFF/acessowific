<%@ page import="goaccess.UsuarioTemporario" %>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'cep', 'error')} required">
	<label for="cep">
		<g:message code="usuarioTemporario.cep.label" default="Informe o Cep do endereço" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cep" required="" value="${usuarioTemporarioInstance?.cep}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'logradouro', 'error')} required">
	<label for="logradouro">
		<g:message code="usuarioTemporario.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${usuarioTemporarioInstance?.logradouro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'bairro', 'error')} required">
	<label for="bairro">
		<g:message code="usuarioTemporario.bairro.label" default="Bairro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="bairro" required="" value="${usuarioTemporarioInstance?.bairro}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'complemento', 'error')} required">
	<label for="complemento">
		<g:message code="usuarioTemporario.complemento.label" default="Complemento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="complemento" required="" value="${usuarioTemporarioInstance?.complemento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'localidade', 'error')} required">
	<label for="localidade">
		<g:message code="usuarioTemporario.localidade.label" default="Localidade" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="localidade" required="" value="${usuarioTemporarioInstance?.localidade}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'uf', 'error')} required">
	<label for="uf">
		<g:message code="usuarioTemporario.uf.label" default="Uf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uf" required="" value="${usuarioTemporarioInstance?.uf}"/>

</div>

<br><h1>Outros Dados do Usuário Temporário</h1><br>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="usuarioTemporario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioTemporarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="usuarioTemporario.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${usuarioTemporarioInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuarioTemporario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${usuarioTemporarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'setor', 'error')} required">
	<label for="setor">
		<g:message code="usuarioTemporario.setor.label" default="Setor" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setor" required="" value="${usuarioTemporarioInstance?.setor}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="usuarioTemporario.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${usuarioTemporarioInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'tempoAcesso', 'error')} required">
	<label for="tempoAcesso">
		<g:message code="usuarioTemporario.tempoAcesso.label" default="Tempo Acesso" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="tempoAcesso" precision="day"  value="${usuarioTemporarioInstance?.tempoAcesso}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'evento', 'error')} required">
	<label for="evento">
		<g:message code="usuarioTemporario.evento.label" default="Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="evento" required="" value="${usuarioTemporarioInstance?.evento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'setorEvento', 'error')} required">
	<label for="setorEvento">
		<g:message code="usuarioTemporario.setorEvento.label" default="Setor Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setorEvento" required="" value="${usuarioTemporarioInstance?.setorEvento}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'numEvento', 'error')} required">
	<label for="numEvento">
		<g:message code="usuarioTemporario.numEvento.label" default="Num Evento" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numEvento" type="number" value="${usuarioTemporarioInstance.numEvento}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioTemporarioInstance, field: 'solicitacao', 'error')} ">
	<label for="solicitacao">
		<g:message code="usuarioTemporario.solicitacao.label" default="Solicitacao" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${usuarioTemporarioInstance?.solicitacao?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="solicitacao" action="create" params="['usuarioTemporario.id': usuarioTemporarioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:link>
</li>
</ul>


</div>



