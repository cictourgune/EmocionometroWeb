<!DOCTYPE html> 
<html> 
	<head> 
		<%@ include file="/WEB-INF/views/header.jsp"%>		
	</head> 

	<body>  
 		<div id="registro-page" data-role="dialog">  
			<div data-role="header" data-theme="d">
				<h1><span data-bind="text: titulo_registro"></span></h1> 
			</div>
			 
			<div data-role="content">
				<form id="registro-form" method="post" data-ajax="false">
					<label for="registro-usuario">Nombre de usuario</label> 
					<input type="text" name="name" id="registro-usuario" placeholder="min. 5 caracteres"/> 
					<label for="registro-password">Contraseña</label> 
					<input type="password" name="password" id="registro-password" placeholder="min. 7 caracteres"/>
					<label for="registro-repite-password">Repita contraseña</label> 
					<input type="password" name="repite-password" id="registro-repite-password"/> 
				    <label for="email">Correo electrónico</label>
		            <input type="email" name="email" id="email" value="" placeholder="Recibirá un correo de confirmación en esta dirección"/>
		            
					<fieldset class="ui-grid-a">
						<div class="ui-block-a">
							<!-- button id="registro-submit" type="submit" data-transition="none" data-icon="check" data-iconpos="right"><span data-bind="text: aceptar_registro"></span></button--> 
							<a href="#" id="registro-submit" data-role="button" data-transition="none" data-icon="check" data-iconpos="right">Aceptar</a> 
						</div>
						<div class="ui-block-b">
							<a href="#" id="registro-cancel-submit" data-role="button" data-transition="none" data-icon="delete" data-iconpos="right">Cancelar</a> 
							<!-- button id="registro-cancel-submit" data-transition="none" data-icon="delete" data-iconpos="right">tt<span data-bind="text: cancelar_registro"></span></button-->
						</div>
		   			</fieldset>
				</form>	
			</div>	
			
			<div id='registro-error' data-role="content" style="text-align: center;">  
			</div> 	 
		</div>		
 	
 	
 	
	</body>	
</html>