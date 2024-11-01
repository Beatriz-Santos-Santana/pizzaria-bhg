<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<div>
    <c:if test="${sessionScope.loggedUser != null}">
        <span>${sessionScope.loggedUser}</span>
        <a href="/logout">Logout</a>
    </c:if>

    <h1>Pedidos</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Pedido</th>
            <c:if test="${sessionScope.loggedUser != null}">
            <th>Actions</th>
            </c:if>
        </tr>
        <c:forEach var="pizza" items="${pedido}">
            <tr>
                <td>${pizza.id}</td>
                <td>${pizza.pedido} </td>
                <td>
                    <c:if test="${sessionScope.loggedUser != null}">
                                <form action="/delete-pedido" method="post">
                                    <input type="hidden" id="id" name="id" value="${pizza.id}">
                                    <button type="submit">Delete</button>
                                    <span> | </span>
                                    <a href="index.jsp?id=${pizza.id}&pedido=${pizza.pedido}">Update</a>
                                </form>
                    </c:if>
                            </td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>