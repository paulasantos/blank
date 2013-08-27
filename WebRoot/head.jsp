<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title></title>

<link rel="stylesheet" type="text/css" href="./css/layout.css">
<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./css/font-awesome.min.css">
<script src="/blank/js/jquery-1.10.2.min.js" type="text/javascript"></script>

<script>
	$(function() {
		$("#new").click(function() {
			$("#content").load("/blank/produtos/new");
		});
		$("#list").click(function() {
			$("#content").load("/blank/produtos/");
		});
	});
</script>
</head>

<body>
	<div id="centro">
		

			<div class="navbar">
				<div class="navbar-inner">
					<a class="brand" href="#">Produtos</a>
					<ul class="nav">
						<li id="new"><a href="#">Novo Produto</a></li>
						<li id="list"><a href="#">Listar Produtos</a></li>
					</ul>
				</div>
			</div>
		
		<div id="content"></div>
	</div>
</body>
</html>
