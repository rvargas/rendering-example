<!doctype html>
<html>
	<head>
		<meta name="layout" content="bootstrap"/>
	</head>

	<body>
		<div class="container">
			
			<div class="row">
				
				<div class="span12 text-center" >
					<h2>Carga de XHTML</h2>
					
					<g:if test="${flash.error}">
						<bootstrap:alert class="alert-error">
							${flash.error}
						</bootstrap:alert>
					</g:if>
					
					<g:form action="generate" controller="render">
						<div>
							<g:textArea name="body" style="width:100%;" rows="20"></g:textArea>
						</div>
						<div>
							<g:submitButton name="submit" value="Generar archivo a partir de XHTML" class="btn btn btn-primary"/>
							<a href="${createLink(controller:'render', action:'test') }" class="btn btn btn-primary">Generar archivo precargado</a>
						</div>
					</g:form>
				</div>
			</div>
		</div>
	</body>
</html>