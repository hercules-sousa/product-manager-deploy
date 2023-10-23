<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Criação de Produto</title>
</head>
<body>
<h1>Criação de Produto</h1>
<form action="CreateProductServlet" method="post">
    <label for="name">Nome:</label>
    <input type="text" id="name" name="name" required><br><br>

    <label for="description">Descrição:</label>
    <textarea id="description" name="description" rows="4" required></textarea><br><br>

    <label for="price">Preço:</label>
    <input type="number" id="price" name="price" step="0.01" required><br><br>

    <input type="submit" value="Criar">
</form>
</body>
</html>
