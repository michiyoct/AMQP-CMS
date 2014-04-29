<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Card Management System</title>
<link href="http://fonts.googleapis.com/css?family=Electrolize" rel="stylesheet" type="text/css">
<style>
hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid #ccc;
	margin: 0;
	padding: 0;
}

div#site-wrapper {
	min-width: 1000px;
	position: absolute;
	top: 0;
	left: 0;
	padding-left: 170px;
	padding-top: 75px;
	right: 0;
	background: #c0c0c0;
}

div#header {
	z-index: 1;
	position: fixed;
	background-color: white;
	width: 100%;
	height: 75px;
}

div#footer {
	position: absolute;
	bottom: 0;
	background-color: #a0a0a0;
	left: 0;
	right: 0;
	height: 50px;
}

div#actions-panel {
	z-index: 1;
	position: fixed;
	background-color: white;
	width: 170px;
	height: 100%;
	top: 75px;
}

div#content {
	margin-top: 15px;
	margin-bottom: 50px;
	margin-right: 100px;
	background-color: #f9f9f9;
	min-height: 470px;
	padding: 20px;
}

div.shadow-caster {
	-moz-box-shadow: 1px 1px 5px -2px #000;
	-webkit-box-shadow: 1px 1px 5px -2px #000;
	box-shadow: 1px 1px 5px -2px #000;
}

div#light {
	z-index: 1;
	position: fixed;
	width: 100%;
	height: 80px;
	background-color: #ffd700;
	-moz-box-shadow: 0 3px 5px -3px #ffd700;
	-webkit-box-shadow: 0 3px 5px -3px #ffd700;
	box-shadow: 0 3px 5px -3px #ffd700;
}

body,html {
	background: #a0a0a0;
	margin: 0;
	padding: 0;
	font-family: 'Electrolize', sans-serif;
}
</style>
</head>
<body>
	<div id="light">
		<div id="header" class="shadow-caster"></div>
	</div>
	<div id="actions-panel" class="shadow-caster">
		<hr />
		<tiles:insertAttribute name="panel" />
	</div>

	<div id="site-wrapper">
		<div id="content">
			<tiles:insertAttribute name="body" />
		</div>
		<div style="clear: both;"></div>
		<div id="footer"></div>
	</div>
</body>
</html>