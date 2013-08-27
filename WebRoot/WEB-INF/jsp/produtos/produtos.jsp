<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>My JSP 'MyJsp.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

</head>

<body>
	${mensagem}
	
	
	


	<table class="table table-striped">
		<tr>
			<th>Nome</th>
			<th>Descrição</th>
			<th>Preço</th>
			<th>Ações</th>
		</tr>
		<c:forEach items="${produtos}" var="produto">
			<tr>
				<td>${produto.nome}</td>
				<td>${produto.descricao}</td>
				<td>${produto.preco}</td>
				<td>
					<form method="POST" action='<c:url value="/produtos/remove/${produto.id}"/>'>
					<a class="link" href='<c:url value="/produtos/edit/${produto.id}"/>'> <i class= "icon-edit"></i></a>
						<input type='hidden' name='_method' value='DELETE'/>
						<button class="button" type="submit"><i class="icon-trash button"></i></button>
					</form>
				</td>
            </tr>

		</c:forEach>
	</table>

</body>
</html>
