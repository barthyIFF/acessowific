<%@ page import="goaccess.OperadorCTI" %>



<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="operadorCTI.username.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${operadorCTIInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="operadorCTI.password.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${operadorCTIInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="operadorCTI.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${operadorCTIInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="operadorCTI.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${operadorCTIInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="operadorCTI.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${operadorCTIInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'celular', 'error')} required">
	<label for="celular">
		<g:message code="operadorCTI.celular.label" default="Celular" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celular" required="" value="${operadorCTIInstance?.celular}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="operadorCTI.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${operadorCTIInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="operadorCTI.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${operadorCTIInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="operadorCTI.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${operadorCTIInstance?.enabled}" />

</div>

<%--Setando o papel automaticamente. Todo operador tem o papel = ROLE_ADMIN --%>
<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'papel', 'error')} ">	
	<%--<g:select type="hidden" id="papel" name="papel.id" from="${goaccess.Papel.list()}" optionKey="id" required="" value="${operadorCTIInstance?.papel?.id}" class="many-to-one"  /> --%>
	<g:hiddenField name="papel.id" value="1"/>
	
	

</div>


<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="operadorCTI.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${operadorCTIInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: operadorCTIInstance, field: 'solicitacoes', 'error')} ">
	<label for="solicitacoes">
		<g:message code="operadorCTI.solicitacoes.label" default="Solicitacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${operadorCTIInstance?.solicitacoes?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="solicitacao" action="create" params="['operadorCTI.id': operadorCTIInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:remoteLink>
</li>
</ul>


</div>

