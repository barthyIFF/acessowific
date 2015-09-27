<%@ page import="goaccess.Cliente" %>



<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="cliente.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${clienteInstance?.username}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="cliente.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" required="" value="${clienteInstance?.password}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="cliente.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${clienteInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="cliente.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${clienteInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="cliente.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${clienteInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: clienteInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="cliente.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${clienteInstance?.passwordExpired}" />

</div>

