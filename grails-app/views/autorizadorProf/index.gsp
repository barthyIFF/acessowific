<%@ page import="goaccess.Solicitacao" %>
<!DOCTYPE html>
<html>
<head>

<title>Sistema de Solicitação de Acesso Wifi</title>
<meta name="viewport" content="width=device-width, initialscale=1.0">
<!-- Bootstrap -->
<!-- <link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
<link href="css/bootstrap.css" rel="stylesheet" media="screen">
<link href="css/styel.css" rel="stylesheet" media="screen"> -->

		 <asset:stylesheet src="application3.css"/> 
		 <asset:javascript src="application.js"/> 
<style>
#menu{
	padding:10px;
	backgroun:green;
}
#menu h1{
	text-color:black;
}
.col-md-3 {

}
.col-md-9 {
}
#page-body{
	padding:10px;
	margin:dotted blue;
}
#grailslogo{
	background-color: #000000;
	padding:10px;	
	margin:0;
	/*background-image: url(../images/img02.png);*/
}
#pagina{
	marge:dotted black;
}
#cabecalho{
	marge:dotted red;
}
#status-login{
	backgroud:#eee;
	padding:20px;
	text-align: right;
	/*border: 1px solid black; */
	margin:0;
	background-image: url(../images/banner-gray.png);
}
#conteudo{
	marge:dotted black;
}
#rodape{
	background: #000;
	color: gray;
	clear: both;
	text-align:center;
	padding:10px;
}
/*NAVEGAÇÃO */
.nav {
	background-color:  white; /* #efefef; */
	padding: 0.5em 0.75em;
	   -moz-box-shadow: 0 0 3px 1px #aaaaaa;
	-webkit-box-shadow: 0 0 3px 1px #aaaaaa;
	        box-shadow: 0 0 3px 1px #aaaaaa;
	zoom: 1;
}

.nav ul {
	overflow: hidden;
	padding-left: 0;
	zoom: 1;
}

.nav li {
 	/*display: block; 
	float: left;
	list-style-type: none;
	margin-right: 0.5em;
	padding: 0; */
}
.btn-group-vertical li{
	display: block; 
	float: left;
	list-style-type: none;
	margin-right: 5px;
	padding: 0;	
}
.nav a {
	color: #666666;
	display: block;
	padding: 0.25em 0.7em;
	text-decoration: none;
    -moz-border-radius: 0.3em;
	-webkit-border-radius: 0.3em;
    border-radius: 0.3em; 
}

.nav a:active, .nav a:visited {
	color: #666666;
}

.nav a:focus, .nav a:hover {
	background-color: #999999; 
	color: black; /*#ffffff;*/
}

.no-borderradius .nav a:focus, .no-borderradius .nav a:hover {
	background-color: transparent;
	color: #444444;
	text-decoration: underline;
}

.nav a.home, .nav a.list, .nav a.create {
	background-position: 0.7em center;
	background-repeat: no-repeat;
	text-indent: 25px;
}

.nav a.home {
	background-image: url(../images/skin/house.png);
}
.nav a.list {
	background-image: url(../images/skin/database_table.png);
}

.nav a.create {
	background-image: url(../images/skin/database_add.png);
 }

</style>
	
</head>
<body class="page">
<div id="pagina">
	<div id=cabecalho>
		<div id="grailsLogo" role="banner">
		<a href="${createLink(uri: '/')}"><asset:image src="awifi_logo.png" alt="Grails"/></a></div>
	</div>
	<div id="status-login">
	</div>
	<div id="conteudo">
	<div class="row">
		<div class="col-md-3">
			<div id="menu" >
				<h1>Menu</h1>
				<ul class="nav">		
					<li><g:remoteLink controller="Solicitacao" action="indexAutorizador" update="page-body">
					<asset:image src="glyphicons-115-list.png" width="15" height="15" alt="botao solicitaco" />
					Solicitações</g:remoteLink></li>
					<li><a href="../j_spring_security_logout">
					<asset:image src="glyphicons-388-log-out.png" width="15" height="15" alt="botao logout" />
					Fazer logout</a></li>	
				</ul>
		</div>
		</div>
	<div class="col-md-9">
	<div id="page-body" >
		<%--Texto para o autorizador --%>
		<h1>Seja bem Vindo, ${sec.username()}!</h1>
		<br>	
		<%--Verifica as solicitacoes pendentes --%>
		<g:if test="${solicitacoesPorAutorizadorEstatus?.size() == 0}">
	    	<p>Atualmente não existem solicitações aguardando a sua autorização.</p>
		</g:if>
		<g:else>
			<p><font color="red">Existem ${solicitacoesPorAutorizadorEstatus?.size()} solicitações aguardando a sua autorização.<br>
			 Para autoriza-la(s) ou reprova-la(s) clique <g:remoteLink controller="Solicitacao" action="indexAutorizador" update="page-body">aqui</g:remoteLink> 
			 ou use o menu ao lado.</p></font>
		</g:else>			
	
		<div id="controller-list" role="navigation"></div>
		</div>
		</div>
	</div><!-- row -->
	</div><!-- conteudo -->	
	<div id="rodape">
	</div>
	
</div><!-- pagina -->
</body>
</html>