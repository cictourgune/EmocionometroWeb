$(document).on("pageshow", "#information-page", function(event){ 
	$("#id_info_dev").val(localStorage.getItem("token"));
});
$(document).on("tap", "#id_info_cancel", function() {
	history.back();
	return false;
});