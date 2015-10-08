<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE HTML>
<html>
 
<head> 
 
<%@ include file="/WEB-INF/views/header.jsp"%> 


 
</head>


 
<body>
 
	
     
    <link rel="stylesheet" href="<%=domain%>/resources/landing/bootstrap.css" />  
    <script src="<%=domain%>/resources/landing/bootstrap.js"></script>  
 	<link href="<%=domain%>/resources/landing/main.css" rel="stylesheet">  
 	
  
 
<div class=background>
 
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
                    <li><a href="#" class="scroller" data-section="#about"><font color="#d54872">Descripci�n</font></a></li>
                    <li><a href="#" class="scroller" data-section="#team"><font color="#d54872">Equipo</font></a></li>
                    <li><a href="#" class="scroller" data-section="#contact"><font color="#d54872">Contacto</font></a></li> 
                    <li><a href="<%=domain%>/privacidad"><font color="#d54872">Privacidad</font></a></li> 
                     <li><a href="<%=domain%>/documentacion"><font color="#d54872">Documentaci�n</font></a></li> 
                </ul>
	        </div>
        </div>
      </div>
    </div>  
    <!-- end Navbar -->
    
    
    <!-- #intro -->
	<div class="main-container" style="margin-top:-17px">
		<div class="container-fluid" id="intro">	
		<div class="container">	
			<div class="row span6 center">
				<h1 id="h1">Analiza el comportamiento de tus usuarios m�viles de una manera sencilla</h1>
				<p>Mapas de calor, clusterizaci�n, segmentaci�n en funci�n de variables personalizables, anal�ticas y mucho m�s.
				</p>
				<div class="row-fluid">
					<div class="span6">
						<a  href="<%=domain%>/private/dashboard" id="entrar" data-role="button" data-corners="false">Entra</a> 
					</div>	
					<div class="span6">
						<a  href="<%=domain%>/registro" id="registrar" data-theme="b" data-role="button" data-corners="false">Reg�strate</a> 
					</div>	
				</div> 
			</div>	
		</div>
	</div>
    <!-- ends Intro -->
    
    
     <!-- #about -->
	<div class="container-fluid" id="about">
			<div class="container light">
				<h1 id="h1">Descripci�n</h1>
			<ul class="thumbnails">
			  <li class="span4">
			    <div class="thumbnail">
			      <img alt="" src="<%=domain%>/resources/img/integration.png">
			      <h3>Integraci�n</h3>
			      <p>F�cilmente integrable en cualquier aplicaci�n m�vil: iPhone, Android o Phonegap</p>
			    </div>
			  </li>
			
			  <li class="span4">
			    <div class="thumbnail">
			      <img alt="" src="<%=domain%>/resources/img/data.png">
			      <h3>Obtenci�n de datos</h3>
			      <p>Automatizaci�n de la obtenci�n de los datos de localizaci�n del dispositivo m�vil</p>
			    </div>
			  </li>
			  
			  <li class="span4">
			    <div class="thumbnail">
			       <img alt="" src="<%=domain%>/resources/img/analisis.jpg">
			      <h3>An�lisis y visualizaci�n</h3>
			      <p>Mapas de calor, clusterizaci�n y gr�ficas anal�ticas que muestran el comportamiento de tus usuarios en movilidad</p>
			    </div>
			  </li>
			</ul>
		</div>
	</div>
     <!-- ends About -->
     
     
      <!-- #team -->    
<div class="container-fluid" id="team">
	<div class="container dark">
		<h1 id="h1">Conoce el equipo</h1>
			<ul class="thumbnails">
			  <li class="span3">
			    <div class="thumbnail">
			      <img alt="" src="<%=domain%>/resources/img/david.jpg">
			      <h3>David Mart�n</h3> 
			      <div class="social">
				      <a href="http://es.linkedin.com/pub/david-martin-del-canto/17/785/951/en"><img alt=""src="<%=domain%>/resources/img/linkedin.png"></a> 
				      <a href="mailto:davidmartin@tourgune.org"><img alt="" src="<%=domain%>/resources/img/email.png"></a>
			      </div>
			    </div>
			  </li>
			
			  <li class="span3">
			    <div class="thumbnail">
			      <img alt="" src="<%=domain%>/resources/img/maria.jpg">
			      <h3>Mar�a Peralta</h3> 
			      <div class="social">
				      <img alt="" src="<%=domain%>/resources/img/linkedin.png"> 
				      <img alt="" src="<%=domain%>/resources/img/email.png">
			      </div>
			    </div>
			  </li>
			  
			  <li class="span3">
			    <div class="thumbnail">
			      <img alt="" src="<%=domain%>/resources/img/ariane.jpg">
			      <h3>Ariane Rubio</h3> 
			      <div class="social">
				      <img alt="" src="<%=domain%>/resources/img/linkedin.png"> 
				      <img alt="" src="<%=domain%>/resources/img/email.png">
			      </div>
			    </div>
			  </li>
			
			  <li class="span3">
			    <div class="thumbnail">
			      <img alt="" src="<%=domain%>/resources/img/ionzu.jpg">
			      <h3>Ion Zugasti</h3> 
			      <div class="social">
				      <img alt="" src="<%=domain%>/resources/img/linkedin.png"/> 
				      <img alt="" src="<%=domain%>/resources/img/email.png"/>
			      </div>
			    </div>
			  </li>
			 </ul>
		</div>
	</div>
      <!-- End Team -->  
       	
	
      <!-- #contact -->   	
	<div class="container-fluid" id="contact">
	<div class="container dark">
		<h1 id="h1">Cont�ctanos</h1>	
	
	<div class="row-fluid">
				 
		 <div class="span8">			
			  <div id="map-canvas" style="height: 280px"></div>
		</div>
	 
		<div class="span4">	
				<h2>it3LAB</h2>
				
				<p>Laboratory for Innovation in Travel & Tourism Technologies</p>
	
				<address>
				   CICtourGUNE<br>
				 	Paseo Mikeletegi, 71, 3� planta<br>
				  	Donostia-San Sebasti�n, Gipuzkoa, Spain<br>
				  <abbr title="Phone">Tlf:</abbr>+[34] 943 010 885 
				</address>
				 
				<address>
				  Email<br>
				  <a href="mailto:#" style="color:white; font-weight:normal">it3lab@tourgune.org</a>
				</address>
				<p>
					<a href="http://it3labprojects.tourgune.org/it3labterms" target="_blank" style="color:white; font-weight:normal;" class="ui-link">T�rminos, condiciones de uso y privacidad</a>
				</p>		
		</div>	
		</div>	
	</div>
</div>   <!-- End Contact -->  
	</div>
	</div>
	


	
<script>
$(function () {
    $(window).scroll(function(){
    // global scroll to top button
        if ($(this).scrollTop() > 300) {
            $('.scrolltop').fadeIn();
        } else {
            $('.scrolltop').fadeOut();
        }        
    });
    
    // scroll nav
    $('.scroller').click(function(){
    	var section = $($(this).data("section"));
    	var top = section.offset().top-82;
        $("html, body").animate({ scrollTop: top }, 700);
        return false;
    }); 
            
});
 
 
function initialize() {
  var mapOptions = {
    zoom: 14,
    center: new google.maps.LatLng(43.295047, -1.986052),
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }; 
  
  var map = new google.maps.Map($("#map-canvas")[0], mapOptions);
  
  var marker = new google.maps.Marker({
    position: new google.maps.LatLng(43.295047,  -1.986052),
    map: map,
    title:"CICtourGUNE"
	});
}    
 
$(document).ready(function() { 
   setTimeout( initialize, 500);
});
 

</script>
</body>
	
 
</html>