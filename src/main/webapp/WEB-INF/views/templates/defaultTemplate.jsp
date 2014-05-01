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
	color: #2a2a2a;
}

a:link,a:visited,a:hover,a:active {
	font-weight: bold;
	text-decoration: none;
}

a:link,a:visited {
	color: #2a2a2a;
}

a:hover,a:active {
	color: #ffd700;
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
	height: 85px;
	background-color: #ffd700;
	-moz-box-shadow: 0 3px 6px -3px #ffd700;
	-webkit-box-shadow: 0 3px 6px -3px #ffd700;
	box-shadow: 0 3px 6px -3px #ffd700;
}

div#header {
	min-width: 1000px;;
	background-color: white;
	width: 100%;
	height: 80px;
	display: table;
}

div.cell {
	display: table-cell;
	text-align: center;
	vertical-align: bottom;
	padding: 15px;
}

div#logo {
	width: 50px;
	text-align: left;
}

div#navigation {
	padding-top: 0;
	padding-bottom: 20px;
	font-size: 11px;
}

div#navigation div {
	display: inline-block;
	width: 80px;
}

div#navigation span,div#navigation img {
	display: block;
	margin-left: auto;
	margin-right: auto;
}

div#account {
	width: 160px;
	text-align: right;
	vertical-align: middle;
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
				<div id="logo" class="cell"><a href="/"><img src="/resources/images/logo.png" /></a></div>
				<div id="navigation" class="cell">
					<div>
						<a href="/"><img src="/resources/images/card.png" /><span>Card
								Details</span></a>
					</div>
					<div>
						<a href="/"><img src="/resources/images/coins.png" /><span>Balance</span></a>
					</div>
					<div>
						<a href="/"><img src="/resources/images/arrows.png" /><span>Transactions</span></a>
					</div>
					<div>
						<a href="/"><img src="/resources/images/profile.png" /><span>Profiles</span></a>
					</div>
					<div>
						<a href="/"><img src="/resources/images/key.png" /><span>Cryptogram</span></a>
					</div>
					<div>
						<a href="/"><img src="/resources/images/stop.png" /><span>User
								Access</span></a>
					</div>
					<div>
						<a href="/"><img src="/resources/images/error.png" /><span>Errors</span></a>
					</div>
				</div>
				<div id="account" class="cell">
					<span><a href="/">Logout</a></span>
				</div>
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