<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Listagem de Produtos</title>
</head>
<body>
<h1>Listagem de Produtos</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Nome</th>
        <th>Descrição</th>
        <th>Preço</th>
        <th>Ações</th>
    </tr>

    <jsp:useBean id="products" scope="request" type="java.util.List"/>
    <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.description}</td>
            <td>${product.price}</td>
            <td>
                <a href="UpdateProductServlet?id=${product.id}">Editar</a>
                <a href="RemoveProductServlet?id=${product.id}">Remover</a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
