<!DOCTYPE html> 
<html> 
	<head>   
		<%@include file="/WEB-INF/views/header.jsp"%>		
	</head> 

	<body>  
		<div id="login-page" data-role="page">  
			<div data-role="content" > 
				<div align="center" style="min-width:300px; margin-left: 30%; margin-right: 30%;">
					
					<form id="login-form" class="ui-body ui-body-c ui-corner-all" method="post" data-ajax="false" action="<%=domain%>/j_spring_security_check"> 
					  <h3>Introduzca usuario y contraseña</h3>
			          <label for="j_username" class="ui-hidden-accessible">Usuario:</label>
			          <input type="text" name="j_username" id="j_username" value="" placeholder="username" data-theme="c" />
	 
			          <label for="j_password" class="ui-hidden-accessible">Contraseña:</label>
			          <input type="password" name="j_password" id="j_password" value="" placeholder="password" data-theme="c" />
	 				  <label class="forCheckbox" for='_spring_security_remember_me'>
                        Recuérdame
                        <input type='checkbox' checked="checked" name='_spring_security_remember_me'/>
                      </label>
			    	  <p style="text-align: center; margin-left: 8px;"><a href="#" id="forgot-password">He olvidado mi contraseña</a></p>
			    	  
			    	  
			    	  <fieldset class="ui-grid-a">
						<div class="ui-block-a">
							<!-- button id="registro-submit" type="submit" data-transition="none" data-icon="check" data-iconpos="right"><span data-bind="text: aceptar_registro"></span></button--> 
							<button id="submit" data-theme="b">Aceptar</button>  
						</div>
						<div class="ui-block-b">
					
							 <a href="#" id="login-cancel-submit" data-role="button" data-theme="b">Cancelar</a> 
							<!-- button id="registro-cancel-submit" data-transition="none" data-icon="delete" data-iconpos="right">tt<span data-bind="text: cancelar_registro"></span></button-->
						</div>
		   			</fieldset>
			    	  
			    	  
			    	  <div id="errorlogin">
					  </div>
					  
					</form>  
				</div>
			</div> 
		</div> 
	</body>	
</html>