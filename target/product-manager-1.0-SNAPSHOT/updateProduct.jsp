<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Atualização de Produto</title>
</head>
<body>
<h1>Atualização de Produto</h1>
<form action="UpdateProductServlet" method="post">
    <input type="hidden" name="id" value="${product.id}">

    <label for="name">Nome:</label>
    <input type="text" id="name" name="name" value="${product.name}" required><br><br>

    <label for="description">Descrição:</label>
    <textarea id="description" name="description" rows="4" required>${product.description}</textarea><br><br>

    <label for="price">Preço:</label>
    <input type="number" id="price" name="price" step="0.01" value="${product.price}" required><br><br>

    <input type="submit" value="Atualizar">
</form>
</body>
</html>
