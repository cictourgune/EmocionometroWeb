
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", -1);
%>
<!DOCTYPE html>
<html>
<head>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/header.jsp"%>
</head>

<body>

	<div id="vista-page" data-role="page" data-dom-cache="true">
		<link rel="stylesheet"
			href="<%=domain%>/resources/css/bootstrap.min.css" />
		<!-- Necesario para layout bootsrap -->
	<%-- 	<div data-role="header">
			<div class="ui-bar ui-grid-a" style="padding-left: 110px;">
				<div class="ui-block-a" style="width: 25%;">
					<div>
						<h3 style="margin-top: 10px; padding-left: 10px; font-size: 30px;">
							apptrack</h3>
					</div>
				</div>
				<div class="ui-block-b" style="width: 65%;">
					<div style="float: right; margin-top: 5px;"
						data-role="controlgroup" data-type="horizontal">
						<a id="salir" data-theme="b"
							href="<%=domain%>/j_spring_security_logout" data-role="button">Salir</a>
					</div>
				</div>
			</div>
		</div> --%>
		
		<div data-role="header">
			<div class="row-fluid">
				<div class="span5" style="margin-left:21px;">
					<div style="margin-top:15px;">
						<a href="<%=domain%>"><font size="6" color="white"
							style="margin-right:15px;">apptrack</font> </a> <a
							href="<%=domain%>/documentacion"><font
							size="3" color="white">Documentación</font> </a>
					</div>
				 
							
				</div>
				<div class="span4 offset2">
					<div align="right" style="margin-top : 6px; "
						data-role="controlgroup" data-type="horizontal"> 
						<a id="salir" data-role="button"
							data-theme="b" href="<%=domain%>/j_spring_security_logout"
							data-role="button">Salir</a>
					</div>
				</div> 
			</div>
		</div>

		<div data-role="content"
			style="margin-left: 10px; margin-right: 10px;margin-bottom:50px">
			
			
			<div data-role="popup" id="popupFijado">
				<p>Mapa almacenado en memoria
				<p>
			</div>
			<div data-role="popup" id="popupFijadoEliminar">
				<p>Mapa eliminado de memoria
				<p>
			</div>
			
			
			
			<div class="row-fluid">
				<div class="span8" style="margin-top: 6px;">
					<ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="a" > 
							<li data-role="list-divider">
								${aplicacion.nombreaplicacion}
									<input type="hidden" id="zoomAplicacion"
									data-val="${aplicacion.zoom}"> <input type="hidden"
									id="latitudAplicacion" data-val="${aplicacion.latitud}">
									<input type="hidden" id="longitudAplicacion"
									data-val="${aplicacion.longitud}"> <input type="hidden"
									id="idAplicacion" data-val="${aplicacion.idaplicacion}">
							</li>
						
						
					
						
							<li> 
								<div class="ui-body ui-body-d">
										<div class="row-fluid">		
											<div class="span3" data-role="controlgroup" data-type="horizontal" align="left"> 
								 			 	 <a href="#" data-role="button" action="informe" data-mini="true"
													data-icon="grid"> Informes</a>   
													<a href="#" action="store_location_visor" data-role="button" data-mini="true">Fijar</a> 
								 			</div> 								 
											<div class="span3" data-role="controlgroup" data-type="horizontal" align="center">
												<!-- <a href="#" action="store_location" data-role="button" data-mini="true">Recordar posición mapa</a>  -->
								 			</div>
								 			
								 			 
								 			<div class="span6" data-role="controlgroup" data-type="horizontal" align="left"> 
								 			 	<a id="id_fijar" href="#" action="fijar" data-role="button" data-mini="true">Fijar para comparar</a> 
												<a id="id_comparar" href="#" action="comparar" data-role="button" data-mini="true">Comparar</a> 
												<a id="id_eliminarfijado" href="#" action="delete_fijado" data-role="button" data-mini="true">Eliminar fijado</a> 
								 			</div> 
								 		
								 		</div> 
								</div>  
								<div data-role="navbar">
									<ul>
										<li><a action="heatmap" id="id_heatmap" href="#" style="height:35px">Heat
												Map</a></li>
										<li><a action="cluster" id="id_cluster" href="#" style="height:35px">Clusters</a>
										</li>
									</ul>
								</div>
								<div id="panel">
								      <input id="target" type="text" placeholder="Ciudad, calle,..." data-mini="true">
								</div>
								<div id="map_canvas" style="height: 600px"></div>  
					</ul>  
				
				
				
				
				
					<%-- <div data-role="header">
						<h1 id="nombreAplicacion"
							data-val="${aplicacion.nombreaplicacion}">${aplicacion.nombreaplicacion}</h1>
						<input type="hidden" id="zoomAplicacion"
							data-val="${aplicacion.zoom}"> <input type="hidden"
							id="latitudAplicacion" data-val="${aplicacion.latitud}">
						<input type="hidden" id="longitudAplicacion"
							data-val="${aplicacion.longitud}"> <input type="hidden"
							id="idAplicacion" data-val="${aplicacion.idaplicacion}">

					</div>
					<div class="ui-body ui-body-d">
						<div class="row-fluid">
								<div class="span10" data-role="fieldcontain">
									<label for="ir_mapa" style='padding-top: 5px;'><b>Buscar localización:</b>
									</label> <input type='text' name="ir_mapa" id="ir_mapa"
										
										placeholder="Donostiako Parke Teknologikoa - Mikeletegi Pasealekua, 71 -"> </input>
								</div>
								<div class="span2">
									<a href='#' data-role='button' data-icon='search'	action='localiza_mapa'>Localizar</a>
								</div>
						
						</div>
						
						<div data-role="navbar">
							<ul>
								<li><a action="heatmap" id="id_heatmap" href="#">Heat
										Map</a></li>
								<li><a action="cluster" id="id_cluster" href="#">Clusters</a>
								</li>
							</ul>
						</div>
						<div id="map_canvas" style="height: 600px"></div>
						
						<div data-role="controlgroup" data-type="horizontal"
							style="text-align:center;">
							<a id="id_fijar" href="#" action="fijar" data-role="button">Fijar para comparar</a> 
							<a id="id_eliminarfijado" href="#" action="delete_fijado" data-role="button">Eliminar fijado</a>
							<a id="id_comparar" href="#" action="comparar" data-role="button">Comparar</a> 
						</div>
						
					</div> --%> 
					
					
				</div>

				<div class="span4" data-role="collapsible-set">
				
						<ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="a" > 
							<li data-role="list-divider">
								Fecha y hora
							</li>
							<li>
							    <div> 
									<div data-role="fieldcontain">
										<label for="fecha_desde" style='padding-top: 5px;'><b>Desde:</b>
										</label> <input type='date' name="fecha_desde" id="fecha_desde"
											data-role='datebox' data-tipo='3'
											placeholder="Ejemplo: 2013-02-27"> </input>
									</div> 
									<div data-role="fieldcontain">
										<label for="fecha_desde" style='padding-top: 5px;'><b>Hasta:</b>
										</label> <input type='date' name="fecha_hasta" id="fecha_hasta"
											data-role='datebox' data-tipo='3'
											placeholder="Ejemplo: 2013-02-27"> </input>
									</div> 
									<div class="row-fluid" style='margin-top:35px'>
										<div class="span3" style='margin-top:15px'>
										<font size="3" ><b>Horas:</b></font> 
										</div>
										<div class="span9" align="center" > 
											<div name="hour_slider" id="hour_slider" style='padding-top: 8px;'> </div>
										</div> 
									</div> 
								</div>
							</li>
						</ul>
						
						<ul data-role="listview" data-inset="true" data-theme="d" data-divider-theme="a" > 
							<li data-role="list-divider">
								Filtrado de variables
							</li>
							<li>
								<div id="idlistvariables" data-role="collapsible-set">
									<c:forEach items="${listaVariables}" var="variables">
	
										<div data-role='collapsible'
											id="collapsible_${variables.idvariable}"
											data-content-theme='c'>
	
											<h3 id="h_${variables.idvariable}"
												data-varname='${variables.nombrevariable}' data-active='0'>
												<span style='color: grey;'>${variables.nombrevariable}</span>
											</h3>
											<div>
												<c:if test="${variables.idtipo == 1}">
													<div style='height: 50px; padding-top: 40px; width: 100%;'>
														<div id="${variables.idvariable}" class="resize"
															data-tipo='1' data-max="${variables.max}"
															data-min="${variables.min}"></div>
													</div>
												</c:if>
	
												<c:if test="${variables.idtipo == 2}">
	
													<c:if test="${variables.multiopcion==true}">
														<select name="${variables.nombrevariable}"
															id="${variables.idvariable}" class='select_type'
															data-native-menu='false' data-mini='true' data-tipo='2'
															multiple='multiple' style='width: 100%;'>
													</c:if>
	
													<c:if test="${variables.multiopcion==false}">
														<select name="${variables.nombrevariable}"
															id="${variables.idvariable}" class='select_type'
															data-native-menu='false' data-mini='true' data-tipo='2'
															style='width: 100%;'>
													</c:if>
	
													<c:forEach items="${variables.opciones}" var="opciones">
														<option value="${opciones.nombreopcion}">
															${opciones.nombreopcion}</option>
	
													</c:forEach>
													</select>
	
	
												</c:if>
	
												<c:if test="${variables.idtipo == 3}">
													<input type='date' name="${variables.nombrevariable}"
														id="${variables.idvariable}" data-role='datebox'
														min="${variables.fechadesde}" max="${variables.fechahasta}"
														data-tipo='3' style='width: 100%;'></input>
												</c:if>
	
												<c:if test="${variables.idtipo == 4}">
													<div style='height: 50px; padding-top: 40px; width: 100%;'>
														<div id="${variables.idvariable}" class="resize"
															data-tipo='4' data-max="${variables.max}"
															data-min="${variables.min}"></div>
													</div>
												</c:if>
	
												<select name='flip-1' id='flip${variables.idvariable}'
													class='flip' data-role='slider' style='width: 30%;'>
													<option value='off'>Off</option>
													<option value='on'>On</option>
												</select>
	
											</div>
										</div>
									</c:forEach>
									<div>
										<a href='#' data-role='button' data-icon='search' data-theme="b"
											action='consultar'>BUSCAR</a>
									</div>
		
									<div id='filtro-error' data-role="content"
										style="text-align: center;"></div>
								</div>
								 
							</li> 
						</ul> 
					
					
					
<%-- 					<div class="ui-body ui-body-d">
						<div>
							<div>
								<div data-role="header" style="margin-top:10px;">
									<h1>Rango de fechas</h1>
								</div>
								<div data-role="fieldcontain">
									<label for="fecha_desde" style='padding-top: 5px;'><b>Desde:</b>
									</label> <input type='date' name="fecha_desde" id="fecha_desde"
										data-role='datebox' data-tipo='3'
										placeholder="Ejemplo: 2013-02-27"> </input>
								</div>

								<div data-role="fieldcontain">
									<label for="fecha_desde" style='padding-top: 5px;'><b>Hasta:</b>
									</label> <input type='date' name="fecha_hasta" id="fecha_hasta"
										data-role='datebox' data-tipo='3'
										placeholder="Ejemplo: 2013-02-27"> </input>
								</div>
								
								<div class="row-fluid" style='margin-top:35px'>
									<div class="span4" style='margin-top:15px'>
									<font size="3" ><b>Rango de horas:</b></font> 
									</div>
									<div class="span8" >
									
									<div name="hour_slider" id="hour_slider" style='padding-top: 8px;'> </div>
									</div>

								</div>
							</div>



						</div>
						<div>
							<div data-role="header" style="margin-top:10px;">
								<h1>Filtrado de variables</h1>
							</div>
							<div id="idlistvariables" data-role="collapsible-set">
								<c:forEach items="${listaVariables}" var="variables">

									<div data-role='collapsible'
										id="collapsible_${variables.idvariable}"
										data-content-theme='c'>

										<h3 id="h_${variables.idvariable}"
											data-varname='${variables.nombrevariable}' data-active='0'>
											<span style='color: grey;'>${variables.nombrevariable}</span>
										</h3>
										<div>
											<c:if test="${variables.idtipo == 1}">
												<div style='height: 50px; padding-top: 40px; width: 100%;'>
													<div id="${variables.idvariable}" class="resize"
														data-tipo='1' data-max="${variables.max}"
														data-min="${variables.min}"></div>
												</div>
											</c:if>

											<c:if test="${variables.idtipo == 2}">

												<c:if test="${variables.multiopcion==true}">
													<select name="${variables.nombrevariable}"
														id="${variables.idvariable}" class='select_type'
														data-native-menu='false' data-mini='true' data-tipo='2'
														multiple='multiple' style='width: 100%;'>
												</c:if>

												<c:if test="${variables.multiopcion==false}">
													<select name="${variables.nombrevariable}"
														id="${variables.idvariable}" class='select_type'
														data-native-menu='false' data-mini='true' data-tipo='2'
														style='width: 100%;'>
												</c:if>

												<c:forEach items="${variables.opciones}" var="opciones">
													<option value="${opciones.nombreopcion}">
														${opciones.nombreopcion}</option>

												</c:forEach>
												</select>


											</c:if>

											<c:if test="${variables.idtipo == 3}">
												<input type='date' name="${variables.nombrevariable}"
													id="${variables.idvariable}" data-role='datebox'
													min="${variables.fechadesde}" max="${variables.fechahasta}"
													data-tipo='3' style='width: 100%;'></input>
											</c:if>

											<c:if test="${variables.idtipo == 4}">
												<div style='height: 50px; padding-top: 40px; width: 100%;'>
													<div id="${variables.idvariable}" class="resize"
														data-tipo='4' data-max="${variables.max}"
														data-min="${variables.min}"></div>
												</div>
											</c:if>
											<!--											</div>-->


											<!--											<div class='ui-block-b' style='width: 21%; padding-left: 2%;'>-->
											<select name='flip-1' id='flip${variables.idvariable}'
												class='flip' data-role='slider' style='width: 30%;'>
												<option value='off'>Off</option>
												<option value='on'>On</option>
											</select>
											<!--											</div>-->
										</div>
									</div>
								</c:forEach>



							</div>
							<div>


								<a href='#' data-role='button' data-icon='search'
									action='consultar'>BUSCAR</a>
							</div>
							<div id='filtro-error' data-role="content"
								style="text-align: center;"></div>
						</div>

					</div> --%>
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