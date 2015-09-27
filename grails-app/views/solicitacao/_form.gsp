<%@ page import="goaccess.Solicitacao" %>


<%--Claudio - 14/09/15- Setando o numProtocolo pra 0. Foi feita uma funcao no controlador para criar o protocolo no padrao correto--%>
<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'numProtocolo', 'error')} required">
	<g:hiddenField name="numProtocolo" value="1111111"/>
</div>

<%--<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'numProtocolo', 'error')} required">
	<label for="numProtocolo">
		<g:message code="solicitacao.numProtocolo.label" default="Num Protocolo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="numProtocolo" required="" value="${solicitacaoInstance?.numProtocolo}"/>

</div> --%>


<%--Claudio - 16/09/15 - Setando o status automaticamente. No momento da criacao da solicitacao tem que ter status = "Aguardando aprovacao".
O controlador adicionara' o nome do operador --%>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'status', 'error')} required">	
	<g:hiddenField name="status" value="AGUARDANDO APROVACAO de "/>
</div>

 <%--
<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'status', 'error')} required">
	<label for="status"> 
		<g:message code="solicitacao.status.label" default="Status" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="status" required="" value="${solicitacaoInstance?.status}"/>	
</div>
 --%>
	

	


<%--Retirando o tipo para esperar decisao do grupo sobre a sua utilizacao --%>
<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'tipo', 'error')} required">
	<%--<label for="tipo">
		<g:message code="solicitacao.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="tipo" required="" value="${solicitacaoInstance?.tipo}"/>--%>
	<g:hiddenField name="tipo" value="Tipo1"/>
</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'data', 'error')} required">
	<label for="data">
		<g:message code="solicitacao.data.label" default="Data" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="data" precision="day"  value="${solicitacaoInstance?.data}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'autorizador', 'error')} required">
	<label for="autorizador">
		<g:message code="solicitacao.autorizador.label" default="Autorizador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="autorizador" name="autorizador.id" from="${goaccess.AutorizadorProf.list()}" optionKey="id" required="" value="${solicitacaoInstance?.autorizador?.id}" class="many-to-one"/>

</div>

<%-- 
<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'equipamentos', 'error')} ">
	<label for="equipamentos">
		<g:message code="solicitacao.equipamentos.label" default="Equipamentos" />
		
	</label>
	
	
 <ul class="one-to-many">
<g:each in="${solicitacaoInstance?.equipamentos?}" var="e">
    <li><g:link controller="equipamento" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:remoteLink controller="equipamento" action="create" params="['solicitacao.id': solicitacaoInstance?.id]" update="page-body">${message(code: 'default.add.label', args: [message(code: 'equipamento.label', default: 'Equipamento')])}</g:remoteLink>
</li>
</ul>


</div>--%>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'operador', 'error')} required">
	<label for="operador">
		<g:message code="solicitacao.operador.label" default="Operador" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="operador" name="operador.id" from="${goaccess.OperadorCTI.list()}" optionKey="id" required="" value="${solicitacaoInstance?.operador?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: solicitacaoInstance, field: 'usuario', 'error')} required">
	<label for="usuario">
		<g:message code="solicitacao.usuario.label" default="Usuario" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="usuario" name="usuario.id" from="${goaccess.UsuarioSolicitante.list()}" optionKey="id" required="" value="${solicitacaoInstance?.usuario?.id}" class="many-to-one"/>

</div>

