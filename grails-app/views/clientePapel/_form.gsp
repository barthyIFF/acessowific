<%@ page import="goaccess.ClientePapel" %>



<div class="fieldcontain ${hasErrors(bean: clientePapelInstance, field: 'papel', 'error')} required">
	<label for="papel">
		<g:message code="clientePapel.papel.label" default="Papel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="papel" name="papel.id" from="${goaccess.Papel.list()}" optionKey="id" required="" value="${clientePapelInstance?.papel?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: clientePapelInstance, field: 'cliente', 'error')} required">
	<label for="cliente">
		<g:message code="clientePapel.cliente.label" default="Cliente" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="cliente" name="cliente.id" from="${goaccess.Cliente.list()}" optionKey="id" required="" value="${clientePapelInstance?.cliente?.id}" class="many-to-one"/>

</div>

