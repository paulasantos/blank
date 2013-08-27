<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script src="/blank/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script language="JavaScript" src="/blank/js/jquery.validate.min.js"
	type="text/javascript"></script>

<script type="text/javascript" src="/blank/js/validar.js"></script>

<script src="/blank/js/jquery.mask.min.js" type="text/javascript"></script>


</head>

<body>
	<form method="post" action="<c:url value='/produtos/update'/>">
		<fieldset>
			<legend>Editar Produto</legend>
			<input type="hidden" name="produto.id" value="${produto.id}" /> <input
				type='hidden' name='_method' value='PUT' /> <label for="nome">Nome:</label>
			<input id="nome" type="text" name="produto.nome"
				value="${produto.nome}" /> <label for="descricao">Descrição:</label>
			<textarea id="descricao" name="produto.descricao">${produto.descricao}</textarea>

			<label for="preco">Preço:</label> <input id="preco" type="text"
				name="produto.preco" value="${produto.preco}" />

			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>
