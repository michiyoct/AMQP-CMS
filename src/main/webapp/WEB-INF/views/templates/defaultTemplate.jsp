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
<link rel="stylesheet" type="text/css" href="/resources/css/main.css">
</head>
<body>
	<div id="floating-nav" class="shadow-caster rounded-right" style="left:-50px;">
		<div title="Card Details">
			<a href="/"><img src="/resources/images/card.png" /></a>
		</div>
		<div title="Balance">
			<a href="/"><img src="/resources/images/coins.png" /></a>
		</div>
		<div title="Transactions">
			<a href="/"><img src="/resources/images/arrows.png" /></a>
		</div>
		<div title="Profiles">
			<a href="/"><img src="/resources/images/profile.png" /></a>
		</div>
		<div title="Cryptogram">
			<a href="/"><img src="/resources/images/key.png" /></a>
		</div>
		<div title="User Access">
			<a href="/"><img src="/resources/images/stop.png" /></a>
		</div>
		<div title="Errors">
			<a href="/"><img src="/resources/images/error.png" /></a>
		</div>
	</div>
	<div id="site-wrapper">
		<div id="light">
			<div id="header" class="shadow-caster">
				<div id="logo" class="cell">
					<a href="/"><img src="/resources/images/logo.png" /></a>
				</div>
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
			    <tiles:insertAttribute name="content-header" />
				<tiles:insertAttribute name="body" />
				<div style="clear: both;"></div>
			</div>
		</div>

		<div id="footer"></div>
	</div>
	<script
		src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script>
		$(document).ready(function() {
			var sideNavVisible = false;
			var nav = $('div#floating-nav');
			var doc = $(document);
			$(window).scroll(function() {
				var screenTop = doc.scrollTop();
				if (screenTop > 50 && !sideNavVisible) {
					sideNavVisible = true;
					nav.stop(true,false).animate({left:"0px"},100,"swing");
				} else if(screenTop <= 50 && sideNavVisible) {
					sideNavVisible = false;
					nav.stop(true,false).animate({left:"-50px"},100,"swing");
				}
			});
		});
	</script>
</body>
</html>