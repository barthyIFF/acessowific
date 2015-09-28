<!DOCTYPE html>
<html>
<head>
	
	<title>Sistema de Solicitação de Acesso Wifi</title>
	<meta name="layout" content="main3">
	
<script type="text/javascript">
	$(document).ready(function(){
	$(".msg").tooltip({
	placement : 'right'
});
</script>

</head>
<body>

<%
//Declarando a variavel
def data = new Date()
%>
Data e hora atual = <%= data %><br>
<br>
Pretendo atualizar essa app de forma pessoal para que eu não perca mais o contato
 com o java atraves do Grails. Claudio - 27/09/2015.<br>
 <br>
 Ultima atualização: 28/09/2015
 Ultima quantidade de dias sem mexer: 1
 


<div id="site">
	<div class="content packtlib" id="conteudo">

			<div class="row">
				<div class="col-md-4"></div>
				<div class="menu1 col-md-4">
				 <ul class="nav menu2">
					<h3><center>Escolha o Seu perfil</center></h3>
						<li><a class="link-normal msg" datatoggle="tooltip" 
						title="Profisionais de informática" 
						href="operadorCTI">
						<span class="glyphicon glyphicon-wrench"></span>
						Operador </a></li>
						<li><a class="link-normal msg" datatoggle="tooltip" 
						title="Professores Coordenadores e Palestrantes"
						href="autorizadorProf/index">
						<span class="glyphicon glyphicon-send"></span>
						Autorizador</a></li>
					
				<!-- ATUALIZAÇÃO ACORDEON -->
				<li><div class="panel-group" id="accordion">
					<div class="panel">
						<div class="panel-heading">
							<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
							href="#packtpubcollapse1" datatoggle="tooltip" 
							title="Alunos, Visitantes e Convidados">
							<span class="glyphicon glyphicon-user"></span>
							Usuário</a>
							</h4>
						</div>
						<div id="packtpubcollapse1" class="panel-collapse collapse">
							<div class="panel-body">
								<g:formRemote name="solicitacao" url="[controller:'solicitacao', action:'consultaStatus']" update="page-body">
				   				<label>Protocolo: </label>
				   				<g:textField name="protocolo" class="form-control" placeholder="Digite o Protocolo"/><br/>
				    			<span class="glyphicon glyphicon-search"></span>
				    			<g:actionSubmit class="btn btn-success" value="Consultar" action="consultaStatus"/>
				    		
								</g:formRemote>	
							</div>
							<div id="page-body">
							</div>
						</div>
						</div><!-- packtpucollapse1 -->
					</div><!-- panel -->
				</div><!-- panel-group -->
				</li>
				</ul>
									<!-- FIM ACORDEON -->
				<!-- TESTANDO O ALERTA -->
		
				    </div><!-- row -->
		<div id="rodape">
			<div id="copyright">
			Copyright &copy; MPROF2014
			</div>
			<div class="row">
			<div class="space col-md-2">
				<strong> Cláudio Luiz </strong><br>
				cl@cin.ufpe.br
			</div>
			<div class="space col-md-2">
				<strong> Denis Reis </strong><br>
				dpcr@cin.ufpe.br 
			</div>
			<div class="space col-md-2">
				<strong>Francisco Janiel </strong><br>
				fjo@cin.ufpe.br
			</div>
			<div class="space col-md-2">
				<strong> Jacks Renan </strong><br>
				jrnf@cin.ufpe.br 
			</div>
			<div class="space col-md-2">
				<strong>Shalton Viana</strong><br>
				svs2@cin.ufpe.br 
			</div>
		</div> <!-- rodape -->
</div> <!-- site -->
</body>
</html>