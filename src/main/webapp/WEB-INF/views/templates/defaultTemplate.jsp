<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Card Management System</title>
</head>
<style>
div#site-wrapper {
	padding-top: 5px;
	width: 100%;
	background-color: white;
}

div#site {
	width: 80%;
	height: 100%;
	margin-right: auto;
	margin-left: auto;
}

div.header-type {
	background-color: white;
	width: 100%;
	height: 75px;
}

div#footer {
	background-color: grey;
	width: 100%;
	height: 50px;
}

div#navigation-panel {
	background-color: #f0f0f0;
	width: 100%;
	height: 35px;
}

div#actions-panel {
	background-color: blue;
	width: 170px;
	float: left;
}

div#content {
	background-color: grey;
	width: 300px;
	float: left;
}

div.light-separator {
	width: 100%;
	height: 5px;
}

div.shadow-caster {
	-moz-box-shadow: 0 1px 6px -2px #000;
	-webkit-box-shadow: 0 1px 6px -2px #000;
	box-shadow: 0 1px 6px -2px #000;
}

div.light-glared-bottom {
	-moz-box-shadow: inset 0 -3px 5px -3px #00d8ff;
	-webkit-box-shadow: inset 0 -3px 5px -3px #00d8ff;
	box-shadow: inset 0 -3px 5px -3px #00d8ff;
}

div.light-glared-above {
	-moz-box-shadow: inset 0 3px 5px -3px #00d8ff;
	-webkit-box-shadow: inset 0 3px 5px -3px #00d8ff;
	box-shadow: inset 0 3px 5px -3px #00d8ff;
}
</style>
<body style="position: relative; padding: 0; margin: 0">
	<div id="wrapper" style="background-color: #00d8ff;">
		<div class="header-type shadow-caster">
			<div id="header" class="header-type"></div>
		</div>
		<div class="light-separator"></div>
		<div class="shadow-caster">
			<div id="navigation-panel" class="light-glared-above"></div>
		</div>
		<div class="light-separator"></div>
		<div id="site-wrapper" class="light-glared-above">
			<div id="site">
				<div id="actions-panel">PANEL</div>
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