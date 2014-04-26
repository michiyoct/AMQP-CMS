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
div#site {
	width: 80%;
	height: 100%;
	margin-right: auto;
	margin-left: auto;
}

div#header {
	background-color: black;
	width: 100%;
	height: 50px;
}

div#footer {
	background-color: grey;
	width: 100%;
	height: 50px;
}

div#navigation-panel {
	background-color: #f0f0f0;
	width: 100%;
	height: 30px;
}

div#actions-panel {
	background-color: blue;
	width: 170px;
	float: left;
}

div#content {
	background-color: red;
	width: 300px;
	float: left;
}
</style>
<body>
<body style="position: relative;">
	<div id="wrapper">
		<div id="header"></div>
		<div id="navigation-panel"></div>
		<div id="site">
			<div id="actions-panel"></div>
			<div id="content">
				<tiles:insertAttribute name="body" />
			</div>
			<div style="clear: both;"></div>
		</div>
		<div id="footer"></div>
	</div>
</body>
</body>
</html>