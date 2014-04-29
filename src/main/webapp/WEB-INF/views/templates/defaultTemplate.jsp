<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Card Management System</title>
<link href="http://fonts.googleapis.com/css?family=Electrolize"
	rel="stylesheet" type="text/css">
<style>
body,html {
	min-width: 1000px;
	min-height: 100%;
	background: #2a2a2a;
	margin: 0;
	padding: 0;
	font-family: 'Electrolize', sans-serif;
}

hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 1px solid #ccc;
	margin: 0;
	padding: 0;
}

div#light {
	width: 100%;
	height: 80px;
	background-color: #ffd700;
	-moz-box-shadow: 0 3px 6px -3px #ffd700;
	-webkit-box-shadow: 0 3px 6px -3px #ffd700;
	box-shadow: 0 3px 6px -3px #ffd700;
}

div#header {
	background-color: white;
	width: 100%;
	height: 75px;
	display: table;
}

div.cell {
	display: table-cell;
}

div#logo {
	width: 200px;
	text-align: left;
}

div#navigation {
	text-align: center;
}

div#account {
	width: 200px;
	text-align: right;
}

div#site-wrapper {
	min-height: 100%;
	background: #c0c0c0;
}

div#site {
	width: 80%;
	margin-left: auto;
	margin-right: auto;
	background-color: #f9f9f9;
	min-height: 800px;
	height: 100%;
	padding: 20px;
}

div#content {
	padding: 20px;
}

div#footer {
	background-color: #2a2a2a;
	height: 50px;
	width: 100%;
}

div.shadow-caster {
	-moz-box-shadow: 1px 1px 5px -2px #000;
	-webkit-box-shadow: 1px 1px 5px -2px #000;
	box-shadow: 1px 1px 5px -2px #000;
}
</style>
</head>
<body>

	<div id="site-wrapper">
		<div id="light">
			<div id="header" class="shadow-caster">
				<div id="logo" class="cell">Logo</div>
				<div id="navigation" class="cell">
					<a><span>Link 1</span></a> 
					<a><span>Link 2</span></a> 
					<a><span>Link 3</span></a>
                    <a><span>Link 4</span></a>
                    <a><span>Link 5</span></a>
                    <a><span>Link 6</span></a>
				</div>
				<div id="account" class="cell">Logout</div>
			</div>
		</div>
		<div id="site">

			<div id="content">
				<tiles:insertAttribute name="body" />
				<div style="clear: both;"></div>
			</div>
		</div>

		<div id="footer"></div>
	</div>
</body>
</html>