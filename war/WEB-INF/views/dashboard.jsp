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

	<div id="dashboard-page" data-role="page">
		<link rel="stylesheet" href="<%=domain%>/resources/css/bootstrap.min.css" /> 
		
		<!-- Necesario para layout bootsrap --> 		
		<div data-role="header">
			<div class="row-fluid">
				<div class="span5" style="margin-left:21px;">
					<div style="margin-top:15px;">
						<a href="<%=domain%>"><font size="6" color="white"
							style="margin-right:15px;">apptrack</font> </a>  
							<a
							href="<%=domain%>/documentacion"><font
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
					<div class="span3">
						<!-- Listado de aplicaciones -->
						<ul id="aplicaciones_creadas" data-role="listview"
							class="aplicaciones_list" data-split-icon="gear" data-inset="true"
							data-divider-theme="a" data-scroll="true">
							<li data-role="list-divider">Aplicaciones</li>
							<li id="li_botones"> 
								<div data-role="controlgroup" data-type="horizontal"
									align="center">
									<!-- Aquí he metido un div en lugar de la table -->
									<a href="<%=domain%>/private/aplicacion/nueva"
										id="newApplication" data-role="button" data-icon="plus"
										data-iconpos="left" data-inline="true" data-mini="true">Crear
									</a>
									<a href="#"	id="eliminar_app" data-role="button" action="eliminar-app" data-mini="true"
									data-icon="delete" class="ui-disabled">Borrar</a>
									<a href="<%=domain%>/private/aplicacion/duplicar" id="duplicar" data-role="button" action="duplicar" data-mini="true"
									data-icon="gear" class="ui-disabled">Copiar </a> 
								</div>
							</li>
							<c:forEach items="${listaAplicaciones}" var="aplicaciones">
								<li id="li_${aplicaciones.idaplicacion}"><a
									id="${aplicaciones.idaplicacion}"
									value="${aplicaciones.nombreaplicacion}" action='edit' href="#">
										<h3 class="nombreApplicacion"
											data-val="${aplicaciones.nombreaplicacion}">${aplicaciones.nombreaplicacion}</h3>
										<!-- No hacen falta tablas -->
										<p>${aplicaciones.descripcion}</p> </a></li>
							</c:forEach>
						</ul>
					</div>
					<div class="span9" style="padding-top:1px">
							<div>
								<!-- Datos de aplicación -->
								<ul id="nombre_desc" data-role="listview" data-theme="d"
									class="nombre_desc_list" data-split-icon="gear"
									data-inset="true" data-divider-theme="a"> 
									
									<li data-role="list-divider" role="heading">Detalle de la
										aplicación</li>
									
									<li> 
	
										 	<div data-role="controlgroup" data-type="horizontal" align="center">
											 
										 	   <a href="#" id="mostrar_mapa_dashboard" data-role="button" action="mapaDashboard" data-mini="true"
													data-icon="search" class="ui-disabled"> Mapa</a> 
											   <a href="#" id="mostrar_informe" data-role="button" action="informeDashboard" data-mini="true"
													data-icon="grid" class="ui-disabled"> Informes</a>   
											<!--    <a href="#" data-role="button" data-mini="true" data-inline="true"  class="ui-disabled"><font color="#FEFEFE">-</font></a>  -->
											   <a href="#" id="newVisor" action="nuevo-visor"
																data-role="button" data-icon="plus" data-iconpos="left"
																data-inline="true" data-mini="true" class="ui-disabled">Crear visor</a>  
											   <!-- <a href="#" data-role="button" data-mini="true" data-inline="true"  class="ui-disabled"><font color="#FEFEFE">-</font></a>  -->
											   <a href="#" id="nuevavar" data-role="button" data-icon="plus"
																data-iconpos="left" data-mini="true" data-inline="true" class="ui-disabled">Crear variable:</a> 
											   <select name="tipo" id="tipovar" class="select_type"
											 			data-native-menu="false" data-mini="true">
														<option value="int">entero</option>
														<option value="mul_option">opción</option>
														<option value="date">fecha</option>
														<option value="decimal">decimal</option>
											   </select>  
											</div> 
									</li> 
										
									<li id="li_botones_nom_desc">	 
										<div>
											<label for="nombre_aplicacion">Nombre: </label> <input
												type="text" name="nombre_aplicacion"
												id="id_nombre_aplicacion" value="${nombreAplicacion}"
												readonly="readonly" /> </br>
										</div>
										<div>
											<label for="descripcion_aplicacion">Descripcion: </label>
											<textarea name="descripcion_aplicacion" rows="3"
												id="id_descripcion_aplicacion" style="height: 100px;"
												value="${descripcionAplicacion}" readonly="readonly"> </textarea>
										</div>
										<div>
											<label for="token_aplicacion">Token: </label> <input
												type="text" name="token_aplicacion" id="id_token_aplicacion"
												value="${tokenAplicacion}" readonly="readonly" />
										</div>
										
										<div>
												<!-- Visores de la aplicacion -->
												<ul id="visores_creados" data-role="listview"
													class="visores_list" data-inset="true" data-divider-theme="a">
													<li id="li_botones_visores" data-role="list-divider">Visores</li>													 
												</ul>
											</div> 
											
											<div>
												<!-- Variables de aplicación -->
												<ul id="variables_creadas" data-role="listview"
													class="variables_list" data-inset="true" data-divider-theme="a">
													<li id="li_botones_variables" data-role="list-divider">Variables</li>												
												</ul>
											</div>
									</li> 
								</ul>
							</div>
					</div>
				</div>
			<!-- </div> -->
		</div>	
		<div data-role="footer" data-tap-toggle="false"
			style="bottom:0;position: absolute; width: 100%;">
			<div align="center" style="background-color:black;margin-bottom:5px;">
				<div>
					<a href="http://it3lab.tourgune.org" target="_blank"
						data-role="none"><img
						src="<%=domain%>/resources/images/it3lab_RGB_transparente_ajustada.png"
						width="124" height="35" style="margin-top:14px;">
					</a> <a href="http://www.tourgune.org" target="_blank" data-role="none"><img
						src="<%=domain%>/resources/images/cictourgune_rgb_peque.png"
						width="199" height="35" style="padding:6px;">
					</a>
				</div>
			</div>
		</div>

	</div>

</body>
</html>