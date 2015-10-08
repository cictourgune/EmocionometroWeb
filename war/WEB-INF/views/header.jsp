<%
String domain="/emocionometro";
String version="1.3";
%>
 
<title>apptrack</title> 

<meta http-equiv="Content-Type" content="text/html" charset="UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1"> 
 
<!-- <link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.css" />   -->
<link rel="stylesheet" href="<%=domain%>/resources/css/apptrack.css" />
<link rel="stylesheet" href="http://code.jquery.com/mobile/1.2.0/jquery.mobile.structure-1.2.0.min.css" />   

<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,300' rel='stylesheet' type='text/css'>
 

<%-- <link rel="stylesheet" href="<%=domain%>/resources/css/jquery.mobile-1.2.0.min.css" /> 
 --%>
<link rel="stylesheet" type="text/css" href="http://dev.jtsage.com/cdn/simpledialog/latest/jquery.mobile.simpledialog.min.css" />

<link rel="stylesheet" href="<%=domain%>/resources/css/classic.css" />

<script type="text/javascript" src="https://www.google.com/jsapi"></script>

<!-- <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> -->
<script src="<%=domain%>/resources/js/plugin/jquery-1.8.2.min.js?v=<%=version%>"></script>


<script src="<%=domain%>/resources/js/plugin/jquery-ui-1.9.2.custom.min.js?v=<%=version%>"></script>
<script src="<%=domain%>/resources/js/plugin/jQAllRangeSliders-min.js?v=<%=version%>"></script>
<script src="<%=domain%>/resources/js/plugin/jquery.mousewheel.min.js?v=<%=version%>"></script>

<script src="<%=domain%>/resources/js/defaults.js?v=<%=version%>"></script>

<!-- <script src="http://code.jquery.com/mobile/1.3.1/jquery.mobile-1.3.1.min.js"></script>  --> 
 <script src="<%=domain%>/resources/js/plugin/jquery.mobile-1.2.0.min.js"></script>  

<script src="<%=domain%>/resources/js/plugin/jquery.mobile.simpledialog2.js"></script>
<script src="<%=domain%>/resources/js/plugin/jquery.json-2.2.min.js?v=<%=version%>"></script> 
<script src="<%=domain%>/resources/js/plugin/json2.js?v=<%=version%>"></script> 
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&libraries=visualization,places"></script>

<link rel="stylesheet" href="<%=domain%>/resources/css/styles.css" />


<!-- PRODUCTION-->
<!-- <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCqc2iIoJMk8AuvMzHKpvZFyZ4jYUEbOik&sensor=true">
</script>      -->

<script type="text/javascript" src="http://dev.jtsage.com/cdn/simpledialog/latest/jquery.mobile.simpledialog.min.js"></script>
 
						  
<script charset="UTF-8" src="<%=domain%>/resources/js/index.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/user-registro.js?v=<%=version%>"></script> 
 
<script charset="UTF-8" src="<%=domain%>/resources/js/dashboard.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/logout.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/login.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/utils.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/registro-application.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/duplicar-application.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/registro-visor.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/mapa.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/integer.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/date.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/option.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/decimal.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/informacion.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/defaults.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/vista.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/comparador.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/reports.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/recover-password.js?v=<%=version%>"></script>
<script charset="UTF-8" src="<%=domain%>/resources/js/mapaAnalysis.js?v=<%=version%>"></script>

<script type="text/javascript">
	  google.load('visualization', '1.0', {'packages':['corechart']});
	  google.load('visualization', '1', {'packages':['annotatedtimeline']});
      var script = '<script type="text/javascript" src="/apptrack/resources/js/plugin/markerclusterer';
      if (document.location.search.indexOf('compiled') !== -1) {
        script += '_compiled';
      }
      script += '.js"><' + '/script>';
      document.write(script);
</script>

<style>
  .ui-page { background: white;}
</style>
 	