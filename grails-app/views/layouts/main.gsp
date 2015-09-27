<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<style type="text/css" media="screen">
			
			#menusuperior {
				background-color: #eee;
				 border-style: solid;
    			border-width: 1px;
				padding: 0.5em;
				width: 58.9em;
				height:2.3em;
				float: left;
				text-align:right;
				
				}
			
			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#menusuperior ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#menusuperior li {
				line-height: 2;
				font-size: 1.3em;
			}

			#menusuperior h1 {
				text-transform: uppercase;
				font-size: 0.7em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}
			@media screen and (max-width: 480px) {
				#menusuperior {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
				
				h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}
			}
.footer {
	background: #000;
	color: #000;
	clear: both;
	font-size: 0.8em;
	margin-top: 1.5em;
	padding: 1em;
	min-height: 1em;
}
						
		</style>
		<asset:stylesheet src="application.css"/>
		<asset:javascript src="application.js"/>
		<g:layoutHead/>
	</head>
	<body class="page">	
	<div id="grailsLogo" role="banner"><a class="home" href="${createLink(uri: '/')}"><asset:image src="awifi_logo.png" alt="Awifi"/></a>	
		
		</div>
		<%-- Retirando menu superior --%>

		<div id="menusuperior" role="complementary">
					<ul>
					<%--<li><a href="j_spring_security_logout">Logout</a></li> --%>
			</ul>
		</div>
	
		<g:layoutBody/>
		<div class="footer" role="contentinfo"></div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
	</body>
</html>
