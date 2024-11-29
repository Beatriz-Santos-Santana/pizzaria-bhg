<!DOCTYPE html>
<html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<head>
    <meta charset="UTF-8">
    <title>Controle de Pedidos</title>
    <style>
        body {
            background-color: #d3d3d3;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #d50000;
            color: white;
            padding: 20px 20px;
            display: flex;
            align-items: center;
            justify-content: space-between;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            margin: 20px auto;
            max-width: 1500px;
        }
        .logo-container {
            display: flex;
            align-items: center;
        }
        .logo {
            width: 140px;
            height: auto;
        }
        .buttons-container {
            display: flex;
            gap: 10px;
        }
        header a {
            text-decoration: none;
            color: white;
            margin: 0 10px;
            font-weight: bold;
        }
        header .btn {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            display: inline-flex;
            align-items: center;
            gap: 5px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        header .btn i {
            margin-right: 5px;
        }
        header .btn:hover {
            background-color: #218838;
        }
        .content {
            margin: 20px auto;
            width: 80%;
        }
        .title {
            background-color: #333;
            color: white;
            padding: 10px;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background-color: white;
        }
        th, td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .footer {
            background-color: #333;
            color: white;
            text-align: center;
            padding: 10px 0;
            margin-top: 20px;
        }
        .finalized {
            background-color: #28a745;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            cursor: pointer;
        }
        .finalized:hover {
            background-color: #218838;
        }
        footer {
            background-color: #808080;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
            border-radius: 10px;
            max-width: 1200px;
            margin: 20px auto;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }
        footer img {
            width: 120px;
            height: 120px;
            border-radius: 15px;
        }
        footer .info {
            display: flex;
            gap: 30px;
            align-items: center;
            color: white;
        }
        footer .info div {
            display: flex;
            align-items: center;
        }
        footer .info i {
            margin-right: 8px;
        }
        footer .social a {
            color: white;
            text-decoration: none;
            margin: 0 10px;
            font-size: 18px;
        }
        footer .social a:hover {
            color: #f1f1f1;
        }

        /* Estilo para a caixa centralizada de "Controle de Pedidos" */
        .controle-pedidos-box {
            background-color: #28a745;  /* Cor verde */
            color: white;
            text-align: center;
            font-size: 24px;
            padding: 20px;
            border-radius: 10px;
            margin: 0 auto 30px auto;
            width: 50%;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
        }

    </style>
</head>
<body>

<!-- Cabeçalho -->
<header>
    <div class="logo-container">
        <img src="IMG/logo.png" alt="Logo BHG" class="logo">
    </div>
    <div class="buttons-container">
        <a href="http://localhost:8080/cardapio.jsp" class="btn"><i class="fas fa-pizza-slice"></i> CARDAPIO</a>
        <a href="http://localhost:8080/login" class="btn"><i class="fas fa-users"></i> LOGIN FUNCIONARIO</a>
    </div>
</header>

<!-- Caixa Centralizada de Controle de Pedidos -->
<div class="controle-pedidos-box">
    <h1>Controle de Pedidos</h1>
</div>

<!-- Conteúdo -->
<div class="content">
    <div class="title">
        <h2>Pedidos Realizados</h2>
    </div>
    <table id="tabelaPedidosRealizados">
        <thead>
            <tr>
                <th>Pedido</th>
                <th>ID</th>
                <th>Quantidade</th>
                <th>Finalizar</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="pizza" items="${pedido}">
                <tr>
                    <td>${pizza.pedido}</td>
                    <td>${pizza.id}</td>
                    <td>${pizza.quantidade}</td>
                    <td><button class="finalized" onclick="finalizarPedido(this)">Finalizado</button></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <!-- Pedidos Finalizados -->
    <div class="title">
        <h2>Pedidos Finalizados</h2>
    </div>
    <table id="tabelaPedidosFinalizados">
        <thead>
            <tr>
                <th>Pedido</th>
                <th>ID</th>
                <th>Quantidade</th>
            </tr>
        </thead>
        <tbody>
            <!-- Os pedidos finalizados serão adicionados aqui -->
        </tbody>
    </table>
</div>

<script>
    // Função para mover o pedido para a seção de pedidos finalizados
    function finalizarPedido(button) {
        var row = button.parentElement.parentElement;
        var tabelaFinalizados = document.getElementById('tabelaPedidosFinalizados').getElementsByTagName('tbody')[0];
        var newRow = row.cloneNode(true); // Clona a linha do pedido
        newRow.removeChild(newRow.lastElementChild); // Remove o botão "Finalizado"

        tabelaFinalizados.appendChild(newRow); // Adiciona a linha na tabela de finalizados

        row.remove(); // Remove a linha da tabela de pedidos realizados
    }
</script>

<footer>
    <img src="IMG/logo.png" alt="Logo BHG">
    <div class="info">
        <div><i class="fas fa-map-marker-alt"></i> Av. Eng. Alberto de Zagottis, 833 - Jurubatuba - SP</div>
        <div><i class="fas fa-phone"></i> (11) 95238-2034</div>
        <div><i class="fas fa-clock"></i> 17:00 - 01:00</div>
        <div><i class="fas fa-calendar-alt"></i> Quinta - Domingo - Feriados</div>
    </div>
    <div class="social">
        <a href="#"><i class="fab fa-facebook"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-whatsapp"></i></a>
    </div>
</footer>

</body>
</html>
