<%@ page import="goaccess.AutorizadorProf" %>



<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="autorizadorProf.username.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${autorizadorProfInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="autorizadorProf.password.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${autorizadorProfInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="autorizadorProf.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${autorizadorProfInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'cpf', 'error')} required">
	<label for="cpf">
		<g:message code="autorizadorProf.cpf.label" default="Cpf" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="cpf" required="" value="${autorizadorProfInstance?.cpf}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="autorizadorProf.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${autorizadorProfInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'setorResponsavel', 'error')} required">
	<label for="setorResponsavel">
		<g:message code="autorizadorProf.setorResponsavel.label" default="Setor Responsavel" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="setorResponsavel" required="" value="${autorizadorProfInstance?.setorResponsavel}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'numMemo', 'error')} required">
	<label for="numMemo">
		<g:message code="autorizadorProf.numMemo.label" default="Num Memo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="numMemo" type="number" value="${autorizadorProfInstance.numMemo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'celularNum', 'error')} required">
	<label for="celularNum">
		<g:message code="autorizadorProf.celularNum.label" default="Celular Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="celularNum" required="" value="${autorizadorProfInstance?.celularNum}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="autorizadorProf.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${autorizadorProfInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="autorizadorProf.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${autorizadorProfInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="autorizadorProf.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${autorizadorProfInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'papel', 'error')} required">
	<%--<g:select id="papel" name="papel.id" from="${goaccess.Papel.list()}" optionKey="id" required="" value="${autorizadorProfInstance?.papel?.id}" class="many-to-one"/>--%> 
	<g:hiddenField name="papel.id" value="2"/>
</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="autorizadorProf.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${autorizadorProfInstance?.passwordExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: autorizadorProfInstance, field: 'solicitacoes', 'error')} ">
	<label for="solicitacoes">
		<g:message code="autorizadorProf.solicitacoes.label" default="Solicitacoes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${autorizadorProfInstance?.solicitacoes?}" var="s">
    <li><g:link controller="solicitacao" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="solicitacao" action="create" params="['operadorCTI.id': operadorCTIInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'solicitacao.label', default: 'Solicitacao')])}</g:remoteLink>
</li>
</ul>


</div>

