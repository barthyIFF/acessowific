<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title><g:layoutTitle default="Acessowifi"/></title>

		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
		
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
		
		<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		 
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
		
		<!-- <link href="css/bootstrap.min.css" rel="stylesheet" media="screen"> -->
		<link href="css/styles.css" rel="stylesheet" media="screen">
		<link href="css/teste.css" rel="stylesheet"media="screen">
		<g:layoutHead/>
		
</head>
<body class="page">	
	<div id="cabecalho">
		<div id="grailsLogo">
			<a class="home" href="${createLink(uri: '/')}">
			<img src="images/awifi_logo.png" alt="Awifi"/>
			</a>
		</div>	
		<div id="status-login">	
		</div><!-- status-login -->
					
		<!-- ATUALIZAÇÃO ACORDEON -->
				<div class="panel-group" id="accordion">
					<div class="panel">
						<div class="panel-heading">
							<h4 class="panel-title">
							<a data-toggle="collapse" data-parent="#accordion"
							href="#packtpubcollapse2">
							SOBRE O SISTEMA</a>
							</h4>
						</div>
						<div id="packtpubcollapse2" class="panel-collapse collapse">
							<p>
							Sistema de solicitação de acesso a rede wireless do Instituto Federal. 
							Para usá-lo clique em um dos perfis ao lado.
							Caso você seja um usuário que solicitou acesso ao sistema e 
							está aguardando a liberação, clique no botão usuário e digite o número do seu protocolo 
							de atendimento para consultar o status de sua solicitação. 
							</p>
						</div><!-- packtpucollapse1 -->
					</div><!-- panel -->
				</div><!-- panel-group -->
								<!-- FIM ACORDEON -->
				<!-- TESTANDO O ALERTA -->
		
	</div> <!-- cabecalho -->
	<g:layoutBody/>
		<div class="footer">
		</div>

	</body>
</html>
