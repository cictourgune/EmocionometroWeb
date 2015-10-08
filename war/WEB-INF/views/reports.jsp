
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
%>
<!DOCTYPE html>
<html>
<head>

<%@include file="/WEB-INF/views/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>

<body>

	<div id="informe-page" data-role="page" data-dom-cache="true">
		<link rel="stylesheet"
			href="<%=domain%>/resources/css/bootstrap.min.css" />
		<!-- Necesario para layout bootsrap -->
 		<div data-role="header">
			<div class="row-fluid">
				<div class="span5" style="margin-left:21px;">
					<div style="margin-top:15px;">
						<a href="<%=domain%>"><font size="6" color="white"
							style="margin-right:15px;">apptrack</font> </a>  
							<a
							href="https://www.dropbox.com/s/zlrlale9bvx2e5g/apptrack-sdk.zip"><font
							size="3" color="white">Documentación</font> </a>
					</div>
				</div>
				<div class="span4 offset2">
					<div align="right" style="margin-top : 6px; "
						data-role="controlgroup" data-type="horizontal">
						<a id="pc" data-theme="b" href="<%=domain%>/private/dashboard"
								data-role="button" rel="external">Panel de Control</a> 
						<a id="info" data-role="button" data-theme="b" href="#"
							action="info">Token desarrollador</a> 
						<a id="salir" data-role="button"
							data-theme="b" href="<%=domain%>/j_spring_security_logout"
							data-role="button">Salir</a>
					</div>
				</div> 
			</div>
		</div> 
		
		
		
		
		<div data-role="content" style="margin-bottom:40px">

			<div class="row-fluid">
				<div class="span8" >
				
							
				
				
					<ul data-role="listview"  data-inset="true" data-divider-theme="a" data-theme="d"> 
						<li data-role="list-divider">${nombreAplicacion}</li>
						<li>
							<div class="ui-body ui-body-d">
								<div class="row-fluid">										 
									<div class="span12" data-role="controlgroup" data-type="horizontal" align="left">
										  <a href="#" id="mostrar_mapa" data-role="button"  data-mini="true"  
													data-icon="search"> Mapa</a> 
						 			</div> 
						 		</div> 
							</div>   
						
						</li>
						<li>
							<div id="informe" style="height: 600px"></div>
						</li>  
					</ul> 
				</div>

				<div class="span4">
				
					<ul data-role="listview"  data-inset="true" data-divider-theme="a" > 
						<li data-role="list-divider">Rango de fechas</li>
						<li>
							<div data-role="fieldcontain">
								<label for="fecha_desde_est" style='padding-top: 5px;'><b>Desde:</b>
								</label> <input type='date' name="fecha_desde_est" id="fecha_desde_est"
									data-role='datebox' data-tipo='3'
									placeholder="Ejemplo: 2013-02-27"> </input>
							</div>

							<div data-role="fieldcontain">
								<label for="fecha_hasta_est" style='padding-top: 5px;'><b>Hasta:</b>
								</label> <input type='date' name="fecha_hasta_est" id="fecha_hasta_est"
									data-role='datebox' data-tipo='3'
									placeholder="Ejemplo: 2013-02-27"> </input>
							</div>
						</li>  
					</ul> 
					<ul data-role="listview"  data-inset="true" data-divider-theme="a" > 
						<li data-role="list-divider">Variables</li>
						<li>
							 <fieldset data-role="controlgroup">
						      	<c:forEach items="${listaVariables}" var="variables">
							        <input type="radio" name="radio-choice" id="radio_${variables.idvariable}" value="${variables.idvariable}" checked="checked" class="radio" namevar="${variables.nombrevariable}" tipovar="${variables.idtipo}"/>
							        <label for="radio_${variables.idvariable}" id="radio_${variables.idvariable}"><b>${variables.nombrevariable}</b></label>
							    </c:forEach>
							    <input type="radio" name="radio-choice" id="radio_muestras" value="muestras" class="radio" namevar="muestras" tipovar="tipo_muestras" data-theme="a"/>
							    <label for="radio_muestras" id="radio_muestras"><b>Resumen muestras</b></label>
						      </fieldset> 
						      <div>
									<a href='#' data-role='button' data-icon='search'
									action='consultar-estadisticas' data-theme="b">BUSCAR</a>
							  </div>
							  <div id='filtro-estadisticas-error' data-role="content"
									style="text-align: center;"></div>
						</li>
					</ul>
				 
				</div>
				<!-- fin -->

			</div>
		</div>

		<div data-role="footer" data-tap-toggle="false"
			style="bottom:0;position: absolute; width: 100%;">
			<div align="center" style="background-color:black;margin-bottom:5px">
				<div>
					<a href="http://it3lab.tourgune.org" target="_blank"
						data-role="none"><img
						src="<%=domain%>/resources/images/it3lab_RGB_transparente_ajustada.png"
						width="124" height="35" style="margin-top:14px;"> </a> <a
						href="http://www.tourgune.org" target="_blank" data-role="none"><img
						src="<%=domain%>/resources/images/cictourgune_rgb_peque.png"
						width="199" height="35" style="padding:6px;"> </a>
				</div>
			</div>
		</div>



	</div>
</body>
</html>