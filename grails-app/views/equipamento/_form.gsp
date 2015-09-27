<%@ page import="goaccess.Equipamento" %>



<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'ip', 'error')} required">
	<label for="ip">
		<g:message code="equipamento.ip.label" default="Ip" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ip" required="" value="${equipamentoInstance?.ip}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'mac', 'error')} required">
	<label for="mac">
		<g:message code="equipamento.mac.label" default="Mac" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mac" required="" value="${equipamentoInstance?.mac}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: equipamentoInstance, field: 'solicitacao', 'error')} required">
	<label for="solicitacao">
		<g:message code="equipamento.solicitacao.label" default="Solicitacao" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="solicitacao" name="solicitacao.id" from="${goaccess.Solicitacao.list()}" optionKey="id" required="" value="${equipamentoInstance?.solicitacao?.id}" class="many-to-one"/>

</div>

