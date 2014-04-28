<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Card Management System</title>
<link href="http://fonts.googleapis.com/css?family=Electrolize"	rel="stylesheet" type="text/css">
<style>
hr {
	margin: 0;
}

div#site-wrapper {
	padding-top: 10px;
	width: 100%;
	background-color: #c0c0c0;
}

div#site {
	width: 80%;
	height: 100%;
	margin-right: auto;
	margin-left: auto;
}

div#header {
	background-color: white;
	width: 100%;
	height: 75px;
}

div#footer {
	background-color: #a0a0a0;
	width: 100%;
	height: 50px;
}

div#navigation-panel {
	display: table;
	background-color: #f0f0f0;
	width: 100%;
	height: 35px;
}

div#navigation-panel span {
	vertical-align: middle;
	display: table-cell;
}

div#actions-panel {
	background-color: white;
	width: 170px;
	float: left;
}

div#content {
	background-color: #f9f9f9;
	width: 300px;
	float: left;
}

div.light-separator {
	width: 100%;
	height: 5px;
}

div.shadow-caster {
	-moz-box-shadow: 0 1px 5px -2px #000;
	-webkit-box-shadow: 0 1px 5px -2px #000;
	box-shadow: 0 1px 5px -2px #000;
}

div.light-glared-bottom {
	-moz-box-shadow: inset 0 -3px 5px -3px #ffd700;
	-webkit-box-shadow: inset 0 -3px 5px -3px #ffd700;
	box-shadow: inset 0 -3px 5px -3px #ffd700;
}

div.light-glared-above {
	-moz-box-shadow: inset 0 3px 5px -3px #ffd700;
	-webkit-box-shadow: inset 0 3px 5px -3px #ffd700;
	box-shadow: inset 0 3px 5px -3px #ffd700;
}
</style>
</head>
<body style="position: relative; padding: 0; margin: 0; font-family: 'Electrolize', sans-serif;">
	<div id="wrapper" style="background-color: #ffd700;">

		<div id="header"></div>

		<hr />
		<div id="navigation-panel" class="shadow-caster">
			<span>Link 1</span><span>Link 2</span><span>Link 3</span><span>Link	4</span><span>Link 5</span><span>Link 6</span><span>Link 7</span>
		</div>
		<div class="light-separator"></div>
		<div id="site-wrapper" class="light-glared-above">
			<div id="site">
				<div id="actions-panel">
					<tiles:insertAttribute name="panel" />
				</div>
				<div id="content">
					<tiles:insertAttribute name="body" />
				</div>
				<div style="clear: both;"></div>
			</div>
		</div>

		<div id="footer"></div>
	</div>
</body>
</html>