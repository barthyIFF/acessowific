<!DOCTYPE html>
<html>
<head>
	<%--Sem estilo - <meta name="layout" content="main"/>--%>
	<title>Outras Tarefas Necessarias para a manutencao do Sistema</title>
	
<!-- Meu primeiro javascript. Claudio 28/09/2015 -->
<!--acho que nao vou precisar disso pq nao vou fazer consultas externas, certo? Apagar e testar.-->
<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>		
<script type="text/javascript">
	/*Minha intencao é fazer um cronometro regresscivo seguindo a fonte abaixo, 
	mas por enquanto farei outros testes como limpar campos do form.
	Fonte: http://www.rafaelzottesso.com.br/2013/05/contador-de-tempo-regressivo-cronometro-em-javascriptjquery*/
	var tempo = new Number();	    
	// Tempo em segundos	   
	tempo = 4000;
	function startCountdown(){
		// Se o tempo não for zerado
		if((tempo - 1) >= 0){
			// Pega a parte inteira dos minutos
			var min = parseInt(tempo/60);
			//Tentando fazer a hora
			var hora = parseInt(tempo/60);
			//Tentando pegar a hora
			var hora = parseInt(min/60);			
			// Calcula os segundos restantes
			var seg = tempo%60;
			// Formata o número menor que dez, ex: 08, 07, ...
			if(min < 10){
				min = "0"+min;
				//Pega 2 caracteres, a partir da posicao 0 da string. Fonte: http://www.w3schools.com/jsref/jsref_substr.asp
				//Ou seja, do resto da divicao do tempo por 60 eu so quero os 2 primeiros numeros
				min = min.substr(0, 2);
			}
			if(seg <=9){
				seg = "0"+seg;	    
   			}
			// Cria a variável para formatar no estilo hora/cronômetro
			//horaImprimivel = '00:' + min + ':' + seg;
			//tentando adicionar a hora
			horaImprimivel = hora + ':' + min + ':' + seg;
			//JQuery pra setar o valor. Aqui acho que vou ter que mudar, colocar o valor em um campos?
			//$("#sessao").html(horaImprimivel);
			// Define que a função será executada novamente em 1000ms = 1 segundo
			setTimeout('startCountdown()',1000);
			// diminui o tempo
			tempo--;
			$("#logradouro").val(horaImprimivel);
			
		}
		// Quando o contador chegar a zero faz esta ação
		//quando chegar em 0 faz logoff, vou mudar isso tb. Quando chegar em 0 mostra uma msg, salvba no banco?
		else {
			//window.open('../controllers/logout.php', '_self');
			//tentando colocar o valor no form
			$("#logradouro").val("10 segundos se passaram!!");
		}
	}
	// Chama a função ao carregar a pagina
	startCountdown();
</script>
	
</head>
<body>
<h1>Outras Tarefas Necessarias para a manutencao do Sistema</h1> 

			<g:form url="[resource:usuarioSolicitanteInstance, action:'save']" >
			
<div class="fieldcontain ${hasErrors(bean: usuarioSolicitanteInstance, field: 'logradouro', 'error')} required">	
	<label for="logradouro">
		<g:message code="usuarioSolicitante.logradouro.label" default="Logradouro" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="logradouro" required="" value="${usuarioSolicitanteInstance?.logradouro}" />
</div>
				<fieldset class="buttons">
					<g:submitToRemote name="create" class="save" url="[action: 'save']" update="page-body" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>


</body>
</html> 