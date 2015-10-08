<!DOCTYPE html>
<html>
<head>
<%@include file="/WEB-INF/views/header.jsp"%>
</head>

<body>
	<div id="comparar-page" data-role="dialog" data-fullscreen="true">
		<div data-role="header" data-theme="d">
			<h1>Comparar consultas</h1>
		</div>
		<div data-role="content">

			<div class="row-fluid">
				<div class="span6">


					<ul data-role="listview" data-inset="true" data-theme="c"
						data-dividertheme="a">
						<li data-role="list-divider" style="text-align: center"><h1>Mapa fijado</h1></li>
						<li><div id="map_canvas1"
									style="height: 500px; width:100%"></div> 
						</li>

					</ul>



				</div>

				<div class="span6">
					<ul data-role="listview" data-inset="true" data-theme="c"
						data-dividertheme="a">
						<li data-role="list-divider" style="text-align: center"><h1>Mapa actual</h1></li>
						<li><div id="map_canvas2"
									style="height: 500px; width:100%"></div> 
						</li>

					</ul>
				</div>



			</div>
		</div>
	</div>
</body>
</html>
