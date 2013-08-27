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
<script src="/blank/js/puts.js" type="text/javascript"></script>
<script src="/blank/js/jquery.autocomplete.min.js"
	type="text/javascript"></script>


<script>
	$(function() {
		$("#new").click(function() {
			$("#content").load("/blank/produtos/new");
		});
		$("#list").click(function() {
			$("#content").load("/blank/produtos/");
		});
		$("#busca").keyup(function() {
			$("#content").load("/blank/produtos/find/" + $("#busca").val());
		});
		$("#busca").puts("Buscar produtos por nome");
		$("#busca").autocomplete('/blank/produtos/find.json', {
			dataType: "json",
			parse: function(produtos) {
				return $.map(produtos, function(produto) {
					return {
						data: produto,
						value: produto.nome,
						result: produto.nome
					};
				});
			},
			formatItem: function(produto) {
				return produto.nome + "(" + produto.preco + ")";
				}
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
					<li id="find"><input id="busca" class="inp_busca" name="nome" />

					</li>
				</ul>
			</div>
		</div>

		<div id="content"></div>
	</div>
</body>
</html>
