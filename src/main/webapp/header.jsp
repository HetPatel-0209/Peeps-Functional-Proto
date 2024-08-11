<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Peeps</title>
<link rel="stylesheet" href="peep-style.css">
</head>
<body>
	<header class="header-bar">
		<img src="imgs/1x/peep.png" alt="Logo" class="header-logo">

		<nav>
			<ul>
				<li><a href="#">Home</a></li>
				<li><a href="#">Contact</a></li>
				<li><a href="#">Report</a></li>
				<li><a href="#">About</a></li>
			</ul>
		</nav>

		<div class="user-profile">
			<%=request.getAttribute("name") %>
			<div class="profile"></div>
		</div>
	</header>