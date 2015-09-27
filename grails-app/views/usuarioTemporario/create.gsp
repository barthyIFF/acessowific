<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main2">
		
		<%--Script para pegar o endereco via REST --%>
		<!-- Adicionando JQuery -->
    	<script src="//code.jquery.com/jquery-2.1.4.min.js"></script>

	    <!-- Adicionando Javascript -->
	    <script type="text/javascript" >
	
	        $(document).ready(function() {
	
	            function limpa_formulário_cep() {
	                // Limpa valores do formulário de cep.
	                $("#logradouro").val("");
	                $("#complemento").val("");
	                $("#bairro").val("");
	                $("#localidade").val("");
	                $("#uf").val("");
	                $("#ibge").val("");
	            }
	            
	            //Quando o campo cep perde o foco.
	            $("#cep").blur(function() {
	
	                //Nova variável "cep" somente com dígitos.
	                var cep = $(this).val().replace(/\D/g, '');
	
	                //Verifica se campo cep possui valor informado.
	                if (cep != "") {
	
	                    //Expressão regular para validar o CEP.
	                    var validacep = /^[0-9]{8}$/;
	
	                    //Valida o formato do CEP.
	                    if(validacep.test(cep)) {
	
	                        //Preenche os campos com "..." enquanto consulta webservice.
	                        $("#logradouro").val("...")
	                        $("#complemento").val("...")
	                        $("#bairro").val("...")
	                        $("#localidade").val("...")
	                        $("#uf").val("...")
	                        $("#ibge").val("...")
	
	                        //Consulta o webservice viacep.com.br/
	                        $.getJSON("//viacep.com.br/ws/"+ cep +"/json/?callback=?", function(dados) {
	
	                            if (!("erro" in dados)) {
	                                //Atualiza os campos com os valores da consulta.
	                                $("#logradouro").val(dados.logradouro);
	                                $("#complemento").val(dados.complemento);
	                                $("#bairro").val(dados.bairro);
	                                $("#localidade").val(dados.localidade);
	                                $("#uf").val(dados.uf);
	                                $("#ibge").val(dados.ibge);
	                            } //end if.
	                            else {
	                                //CEP pesquisado não foi encontrado.
	                                limpa_formulário_cep();
	                                alert("CEP não encontrado.");
	                            }
	                        });
	                    } //end if.
	                    else {
	                        //cep é inválido.
	                        limpa_formulário_cep();
	                        alert("Formato de CEP inválido.");
	                    }
	                } //end if.
	                else {
	                    //cep sem valor, limpa formulário.
	                    limpa_formulário_cep();
	                }
	            });
	        });
	
	    </script>
		
		<g:set var="entityName" value="${message(code: 'usuarioTemporario.label', default: 'UsuarioTemporario')}" />
		<title><g:message code="default.create.label" args="[entityName]" /></title>
	</head>
	<body>		
		<div class="nav" role="navigation">
			<ul>				
				<li><g:remoteLink class="list" action="index" update="page-body"><g:message code="default.list.label" args="[entityName]" /></g:remoteLink></li>
			</ul>
		</div>
		<div id="create-usuarioTemporario" class="content scaffold-create" role="main">
		<br><h1>Endereço do Usuário Temporário</h1><br>			
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${usuarioTemporarioInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${usuarioTemporarioInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form url="[resource:usuarioTemporarioInstance, action:'save']" >
				<fieldset class="form">
					<g:render template="form"/>
				</fieldset>
				<fieldset class="buttons">
					<g:submitToRemote name="create" class="save" url="[action: 'save']" update="page-body" value="${message(code: 'default.button.create.label', default: 'Create')}" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
