<!DOCTYPE html>
<html>
<head>
<%@page pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp"%>
</head>

<body>

	<div id="index-page" data-role="page">
		<link rel="stylesheet"
			href="<%=domain%>/resources/css/bootstrap.min.css" />
		
		<div data-role="header">
			<div class="row-fluid">
				<div class="span5" style="margin-left:21px;">
					<div style="margin-top:15px;">
						<a href="<%=domain%>"><font size="6" color="white"
							style="margin-right:15px;">apptrack</font> </a> <a
							href="mailto:it3lab@tourgune.org"><font size="3"
							color="white">Contacto</font> </a> | <a href="<%=domain%>/privacidad"><font
							size="3" color="white">Privacidad</font> </a> | <a
							href="https://www.dropbox.com/s/zlrlale9bvx2e5g/apptrack-sdk.zip"><font
							size="3" color="white">Documentación</font> </a>
					</div>
				</div>
				<div class="span4 offset2">
					<div align="right" style="margin-top : 6px; "
						data-role="controlgroup" data-type="horizontal">
							<a href="#" id="entrar" data-role="button" data-theme="b">Acceder</a>
							<a href="<%=domain%>/registro" id="registrar" data-theme="b"
							data-role="button">Registro</a>
					</div>
				</div> 
			</div>
		</div> 
		
		
		<%-- <div data-role="header">
			<div class="row-fluid">
				<div class="span5 offset1">
					<div style="margin-top:15px;">
						<a href="<%=domain%>"><font size="6" color="white"
							style="margin-right:15px;">apptrack</font> </a> <a
							href="mailto:it3lab@tourgune.org"><font size="3"
							color="white">Contacto</font> </a> | <a href="<%=domain%>/privacidad"><font
							size="3" color="white">Privacidad</font> </a> | <a
							href="https://www.dropbox.com/s/zlrlale9bvx2e5g/apptrack-sdk.zip"><font
							size="3" color="white">Documentación</font> </a>
					</div>
				</div>
				<div class="span3 offset2">
					<div data-role="controlgroup" data-type="horizontal"
						style="float: right">
						<a href="#" id="entrar" data-role="button" data-theme="b">Acceder</a>
						<a href="<%=domain%>/registro" id="registrar" data-theme="b"
							data-role="button">Registro</a>
					</div>
				</div>
				<div class="span1"></div>
			</div>
		</div> --%>

		<div class="container">

			<div class="hero-unit">
				<div class="row-fluid">
					<div class="span6">
						<h2>Analiza la localización de tus usuarios móviles!</h2>
						<p>apptrack te permite obtener y analizar datos de
							localización de tus usuarios de aplicaciones móviles.</p>
						<p>Además, permite incluir parámetros de filtrado
							personalizados en función del perfil de tus usuarios para un
							análisis segmentado de su comportamiento en movilidad.</p>
						<a href="<%=domain%>/registro" data-role="button" data-theme="b"
							data-icon="arrow-r" data-iconpos="right">Regístrate gratis!</a>
						<div style="font-size:14px; padding-left:10px">
							<i>Optimized for </i> <img
								src="<%=domain%>/resources/images/chrome.png" alt="firefox"
								height="25" width="25"> <img
								src="<%=domain%>/resources/images/firefox.png" alt="firefox"
								height="25" width="25">
						</div>
					</div>
					<div class="span6" style="padding-top:50px;">
						<iframe width="560" height="315" src="http://www.youtube.com/embed/9CIosvALUhs" frameborder="0" allowfullscreen></iframe> 		
					</div>
				</div>

			</div>

			<!-- Example row of columns -->
			<div class="row-fluid">
				<div class="span4">
					<h2>Entorno web</h2>
					<p>apptrack dispone de un enorno web con el que puedes
						configurar tus aplicaciones para que utilicen la tecnología
						apptrack. Los datos pueden visualizarse mediante mapas de calor
						donde podrás analizar el comportamiento de tus usuarios en
						movilidad.</p>
				</div>
				<div class="span4">
					<h2>SDK Android</h2>
					<p>apptrack puede ser utilizado en cualquier aplicación
						desarrollada para la plataforma Android. Una librería para
						desarrolladores simplifica el envío a los servidores de apptrack
						de los datos referentes a tus usuarios para su posterior análisis.
					</p>
				</div>
				<div class="span4">
					<h2>SDK Android + PhoneGap</h2>
					<p>apptrack también dispone de un plugin para la plataforma
						PhoneGap sobre Android. De esta manera, podrás utilizar la
						librería desde tus ficheros javascript de manera sencilla.</p>
				</div>
			</div>
		</div>


		<div data-role="footer" data-tap-toggle="false" data-position="fixed">
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

	<script type="text/javascript">
		var uvOptions = {};
		(function() {
			var uv = document.createElement('script');
			uv.type = 'text/javascript';
			uv.async = true;
			uv.src = ('https:' == document.location.protocol ? 'https://'
					: 'http://')
					+ 'widget.uservoice.com/8DXjqQ6vzSgVV9xUl8gkKg.js';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(uv, s);
		})();
	</script>

</body>
</html>