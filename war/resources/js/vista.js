//var where = "";
//var variablesMapa = new Array();
//var map;
//var markerClusterer;
//var markers;
//var puntosMapa;
//var heatmap;
//var tipo="cluster";
var cambiovista=0;

var puntosMapa_fijado ;
var markers_fijado ;

var map1;
var map2;
var mapOptions;
var zoomFinal;
var latitude;
var longitude;
var fijado;


//controlar que no vuelva de un select option con diálogo y se cierre
$(document).on('tap',"[title='Close']",function(event) {
	
	cambiovista=1; 
});


function initvista(){
	 
	 $('#id_comparar').addClass('ui-disabled');
	 $('#id_eliminarfijado').addClass('ui-disabled');
	 fijado=false;
	
	 $("#hour_slider").rangeSlider({defaultValues:{min: 0, max: 24}});
	 $("#hour_slider").rangeSlider({ bounds: {min: 0, max: 24}});
	 $("#hour_slider").rangeSlider({step: 1});
	
	
	
	localStorage.setItem('idAplicacion',$("#idAplicacion").attr("data-val"));
	
	//controlar que no vuelva de un select option
	$("select").change(function(){
		cambiovista=1; 
	});
	
	
	if(cambiovista!=1){//si cambiovista realizado en un select NO recargar nada 
	
		var latMapa;
		var lngMapa ;
		var zomMapa;
		
		
		$.ajax({type : "GET",
			url : domain()+ "/api/visores/visor",
			contentType : "application/json",
			success : function(data) 
			{
				latMapa=data.latitud;
				lngMapa=data.longitud;
				zomMapa= data.zoom;
				
			},
			error : null,
			async : false
		});
		
		
		
		zoomFinal='1';
		if (zomMapa!='0')
			zoomFinal=zomMapa;
		

		
		if (latMapa!=0)
		{
			
			latitude = latMapa;
			 longitude = lngMapa;

		}
		else
		{
			latitude = 40.446947;
			longitude = -6.855469;
			 
		}
		
		 mapOptions = {
			zoom : parseInt(zoomFinal),
			center : new google.maps.LatLng(latitude, longitude),
			mapTypeId : google.maps.MapTypeId.SATELLITE
		};
	
		//activamos el boton de cluster y desactivamos el del heatmap
		$("#id_heatmap").removeClass('ui-btn-active');
		$("#id_cluster").addClass('ui-btn-active');
		map = new google.maps.Map($("#map_canvas")[0], mapOptions);
		// cambiar aspecto a los controles que no est�n activos
		
		$('.flip').change(function(event) {
							var id = event.target.id;
							var aux = id.split("flip");
							var idClean = aux[1];
							var active = $("#h_" + idClean).data('active');
							var $btn_text = $('#h_' + idClean).find('.ui-btn-text');
							var varname = $("#h_" + idClean).data('varname');

							if (active == 1) {// desactivarlo
								$btn_child = $btn_text.find('.ui-collapsible-heading-status');
								// var texto =
								// "<strike>"+varname+"</strike>";
								var texto = "<span style='color: grey;'>"+ varname + "</span> ";

								$btn_text.html(texto).append($btn_child);
								$("#h_" + idClean).data('active','0');
							} else if (active == 0) {
								$btn_child = $btn_text.find('.ui-collapsible-heading-status');
								var texto = "<span style='color: black;'>"+ varname + "</span> ";
								$btn_text.html(texto).append($btn_child);
								$("#h_" + idClean).data('active','1');
							}

						});
		
			$(".resize").each(function(index) {

							var idRangeSlider = $(this).attr('id');
							var valorMax = $(this).attr('data-max');
							var valorMin = $(this).attr('data-min');
							//$("#" + idRangeSlider).rangeSlider();
							
							//si es de tipo decimal
							if ($(this).data('tipo') == 4) {
								var floatMin = parseFloat(valorMin);
								var floatMax = parseFloat(valorMax);
								$("#" + idRangeSlider).rangeSlider({  bounds: {min: floatMin, max: floatMax}	});
								$("#" + idRangeSlider).rangeSlider({step: false});
								$("#" + idRangeSlider).rangeSlider({formatter : function(val) {
														var value = Math.floor(val * 5) / 5;
														var decimal = value - Math.round(val);
														return decimal == 0 ? value.toString()+ ".0": value.toString();
													}
												});
					
									
							} 
							else 
							//si es de tipo numerico
							{
							
								var valorMinInt = parseInt(valorMin);
								var valorMaxInt = parseInt(valorMax);
								$("#" + idRangeSlider).rangeSlider({ bounds: {min: valorMinInt, max: valorMaxInt}});
								

							}
						});
		}
	 

	cambiovista=0;//resetear			
}



$(document).on("pageshow","#vista-page",function() { 
	
	setTimeout(initvista, 800); 

});





$(document).on('tap', '[action="fijar"]', function(event) {
	


	puntosMapa_fijado = puntosMapa;
	markers_fijado = markers;
	fijado = true;
	
	$('#popupFijado').popup('open');
	setTimeout(function(){$('#popupFijado').popup('close')},3000); 
	
	
	 //$('#id_comparar').removeClass('ui-disabled');
	 $('#id_eliminarfijado').removeClass('ui-disabled');
});


$(document).on('tap', '[action="delete_fijado"]', function(event) {
	


	puntosMapa_fijado = undefined;
	markers_fijado = undefined;
	fijado=false;
	
	
	$('#popupFijadoEliminar').popup('open');
	setTimeout(function(){$('#popupFijadoEliminar').popup('close')},3000); 
	
	 $('#id_comparar').addClass('ui-disabled');
	 $('#id_eliminarfijado').addClass('ui-disabled');

});

$(document).on('tap', '[action="comparar"]', function(event) {
	;
	$.mobile.changePage(domain()+ "/private/mapa/comprador", {reloadPage : false});
});



$(document).on('tap', '[action="store_location_visor"]', function(event) {
	
	var latitudeMap = map.getCenter().lat();
	var longitudeMap = map.getCenter().lng();
	var zoomMap = map.getZoom(); 
	
	$.ajax({type : "GET",
		url : domain()+ "/api/visores/updateloc?lat='"	+ latitudeMap	+ "'&lng='"	+ longitudeMap+"'&zoom="+zoomMap,
		contentType : "application/json",
		success : function(data) 
		{
			$('#popupBasic').popup('open');
			setTimeout(function(){$('#popupBasic').popup('close')},3000); 
		},
		error : null,
		async : true
	});

});






 
