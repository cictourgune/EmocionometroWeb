<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html> 
<html> 
	<head>  
		<%@ include file="/WEB-INF/views/header.jsp"%>
	</head> 

	<body> 
	        <link rel="stylesheet" href="<%=domain%>/resources/landing/bootstrap.css" />  
    		<script src="<%=domain%>/resources/landing/bootstrap.js"></script>  
 			<link href="<%=domain%>/resources/landing/main.css" rel="stylesheet">  
		
		<div id="documentacion-page" > 
			
	 		 <!-- Navbar -->
		   	<div class="navbar navbar-fixed-top">
		      <div class="navbar-inner">
		        <div class="container">
		    		<a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
			            <span class="icon-bar"></span>
		          	</a>
		          	<a id="nombreweb" class="brand scroller" href="#">apptrack</a>
				  	<div class="nav-collapse collapse">
		                <ul class="nav pull-right">
		                    <li><a href="<%=domain%>/index" class="scroller" data-section="#about"><font color="#d54872">Descripción</font></a></li>
		                    <li><a href="<%=domain%>/index" class="scroller" data-section="#team"><font color="#d54872">Equipo</font></a></li>
		                    <li><a href="<%=domain%>/index" class="scroller" data-section="#contact"><font color="#d54872">Contacto</font></a></li> 
		                    <li><a href="<%=domain%>/privacidad"><font color="#d54872">Privacidad</font></a></li> 
		                    <li><a href="<%=domain%>/documentacion"><font color="#d54872">Documentacion</font></a></li> 
		                </ul>
			        </div>
		        </div>
		      </div>
		    </div>  
		    <!-- end Navbar -->
	 	
	 	
			<div class="container"  style="margin-top:80px">
				
				<h1>AppTrack v1.3</h1>
				<br>
				
				<p>Mejoras respecto a la versión anterior:<br>
				- Entre capturas de puntos pasarán mínimo 120 segundos (en android)<br>
				- Se almacenará la plataforma con la que está accediendo al sistema cada usuario (android/iOS/javascript)</p>
				
				<h2>Android</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones android de modo nativo, pulse <a href="https://www.dropbox.com/s/vq2ltjqc50poxc3/apptrack-android-sdk-1.3.zip">AQUI</a>. Dentro encontrará la documentación junto a un proyecto de ejemplo</p>

				<h2>Android + PhoneGap</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones android utilizando PhoneGap, pulse <a href="https://www.dropbox.com/s/ea1dpiltr2ril1a/apptrack-androidPhonegap-sdk-1.3.zip">AQUI</a>. Dentro encontrará la documentación junto a un proyecto de ejemplo</p>

				<h2>JavaScript</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones bajo la plataforma JavaScript, pulse <a href="https://www.dropbox.com/s/j2jsf1xrrm7wh3i/apptrack-javascript-sdk-1.3.zip">AQUI</a>. Dentro encontrará la documentación junto a un proyecto de ejemplo</p>
				
				<h2>iOS (frecuencia de localización alta)</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones bajo la plataforma iOS obteniendo la localización frecuentemente basandose en la distancia recorrida, pulse <a href="https://www.dropbox.com/s/y2c3hr402xlyll2/apptrack-iOS-sdk%28%2Bfrec%29-1.3.zip">AQUI</a>. Dentro encontrará la documentación</p>
				
				<h2>iOS + PhoneGap (frecuencia de localización alta)</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones iOS utilizando PhoneGap obteniendo la localización cada vez que el dispositivo se conecta a una nueva antena, pulse <a href="https://www.dropbox.com/s/am8s1u8tr59jiv1/apptrack-iOSPhonegap-sdk%28%2Bfrec%29-1.3.zip">AQUI</a>. Dentro encontrará la documentación</p>
				
				<h2>iOS (frecuencia de localización baja)</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones bajo la plataforma iOS obteniendo la localización frecuentemente basandose en la distancia recorrida, pulse <a href="https://www.dropbox.com/s/yngg5nkayus8rm9/apptrack-iOS-sdk%28-frec%29-1.3.zip">AQUI</a>. Dentro encontrará la documentación</p>
				
				<h2>iOS + PhoneGap (frecuencia de localización baja)</h2>
				<p>Para descargar la librería apptrack para el desarrollo de aplicaciones iOS utilizando PhoneGap obteniendo la localización cada vez que el dispositivo se conecta a una nueva antena, pulse <a href="https://www.dropbox.com/s/pcpwduvzpuklh04/apptrack-iOSPhonegap-sdk%28-frec%29-1.3.zip">AQUI</a>. Dentro encontrará la documentación</p>
			</div>
			<br>
			<div data-role="footer" data-position="fixed">
				<div align="center" style="background-color:black"> 
					<div>
						<a href="http://it3lab.tourgune.org" target="_blank" data-role="none" ><img src="<%=domain%>/resources/images/it3lab_RGB_transparente_ajustada.png" width="124" height="35" style="margin-top:12px;"></a>
						<a href="http://www.tourgune.org" target="_blank" data-role="none" ><img src="<%=domain%>/resources/images/cictourgune_rgb_peque.png" width="199" height="35" style="padding:6px;"></a>
					</div> 
					<br>
				</div>
     		</div>
		</div>		 
		
	</body>	
</html>
