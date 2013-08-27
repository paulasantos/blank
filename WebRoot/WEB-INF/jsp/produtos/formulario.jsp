<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<script src="/blank/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="/blank/js/jquery.validate.min.js" type="text/javascript"></script>



<style>
input.error {
	border: 1px solid red;
}
</style>


<script src="/blank/js/jquery.mask.min.js" type="text/javascript"></script>


<script src="/blank/js/validar.js" type="text/javascript"></script>

</head>

<body>
	<div id="erros">
		<ul>
			<c:forEach items="${errors}" var="error">
				<li>${error.category } - ${error.message }</li>
			</c:forEach>
		</ul>
	</div>



	<form class="form-horizontal" method="post" id="formulario"
		action='<c:url value="/produtos/save"/>'>
		<div class="control-group">
			<label class="control-label">Nome</label>
			<div class="controls">
				<input id="pnome" class="required" type="text" name="produto.nome"
					value="${produto.nome}" />
			</div>
		</div>


		<div class="control-group">
			<label class="control-label">Descrição</label>
			<div class="controls">
				<input id="pdesc" class="required" type="text"
					name="produto.descricao" value="${produto.descricao}" />
			</div>
		</div>

		<div class="control-group">
			<label class="control-label">Preço</label>
			<div class="controls">
				<input id="ppreco" type="text" class="required" name="produto.preco"
					value="${produto.preco}" />
			</div>
		</div>

		<div class="control-group">
			<div class="controls">
				<button id="enviar" type="submit" class="btn">Enviar</button>
			</div>

		</div>

	</form>
</body>
</html>
