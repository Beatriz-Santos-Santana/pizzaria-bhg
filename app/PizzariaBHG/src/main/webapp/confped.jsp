<%--
  Created by IntelliJ IDEA.
  User: hevelly.anjos
  Date: 27/11/2024
  Time: 00:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmação de Pedido</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #DCDCDC;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            max-width: 500px;
            background-color: #c6c6c6;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 2rem;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            position: relative;
        }
        .header {
            background-color: #CF2A27;
            padding: 20px;
            text-align: center;
            display: flex;
            align-items: center;
            justify-content: flex-start;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .header h1 {
            color: #fff;
            font-size: 20px;
            font-weight: bold;
            margin-left: 10px;
        }
        .logo {
            width: 90px;
            height: auto;
            margin-left: 20px;
        }
        .content {
            padding: 20px;
        }
        .section-title {
            font-size: 20px;
            font-weight: bold;
            color: #333;
            margin-top: 10px;
        }
        .order-details {
            background-color: #fff;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .order-item {
            font-size: 16px;
            margin-bottom: 5px;
        }
        .total {
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
        }
        .buttons-container {
            display: flex;
            justify-content: space-between;
            gap: 15px;
            margin-top: 20px;
        }
        .button {
            background-color: #009E0F;
            color: white;
            padding: 12px 25px;
            font-size: 16px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
            flex: 1;
        }
        .footer {
            background-color: #CF2A27;
            padding: 20px;
            text-align: center;
        }
        .footer-text {
            color: #fff;
            font-size: 14px;
        }
    </style>
</head>
<body>

<div class="form-container">

    <div class="header">

        <img src="${pageContext.request.contextPath}/imagens/logo2.png" alt="Logo" class="logo">

        <h1>Confirmação de Pedido</h1>
    </div>

    <div class="content">
        <div class="section-title">Seu Pedido:</div>

        <div class="order-details">

            <div class="order-item">
                <%= request.getParameter("pizzaSelecionada") != null ? request.getParameter("pizzaSelecionada") : "Nenhuma pizza selecionada" %> -
                R$ <%= request.getParameter("precoPizza") != null ? request.getParameter("precoPizza") : "0.00" %> x
                <%= request.getParameter("quantidadePizza") != null ? request.getParameter("quantidadePizza") : "0" %>
            </div>

            <div class="order-item">
                Bebida Selecionada:
                <%= request.getParameter("bebidaSelecionada") != null ? request.getParameter("bebidaSelecionada") : "Nenhuma bebida selecionada" %> -
                R$ <%= request.getParameter("precoBebida") != null ? request.getParameter("precoBebida") : "0.00" %> x
                <%= request.getParameter("quantidadeBebida") != null ? request.getParameter("quantidadeBebida") : "0" %>
            </div>

            <%

                double frete = 6.00;

                double precoPizza = Double.parseDouble(request.getParameter("precoPizza") != null ? request.getParameter("precoPizza") : "0");
                double precoBebida = Double.parseDouble(request.getParameter("precoBebida") != null ? request.getParameter("precoBebida") : "0");
                int quantidadePizza = Integer.parseInt(request.getParameter("quantidadePizza") != null ? request.getParameter("quantidadePizza") : "0");
                int quantidadeBebida = Integer.parseInt(request.getParameter("quantidadeBebida") != null ? request.getParameter("quantidadeBebida") : "0");


                double subtotalPizza = precoPizza * quantidadePizza;
                double subtotalBebida = precoBebida * quantidadeBebida;
                double subtotal = subtotalPizza + subtotalBebida;
                double total = subtotal + frete;
            %>

            <div class="total">Subtotal: R$ <%= String.format("%.2f", subtotal) %></div>
            <div class="total">Taxa de entrega: R$ <%= String.format("%.2f", frete) %></div>
            <div class="total">Total: R$ <%= String.format("%.2f", total) %></div>
        </div>


        <div class="buttons-container">

            <form action="pagamento.jsp" method="post">
                <button type="submit" class="button">Confirmar Pedido</button>
            </form>


            <form action="pedir.jsp" method="get">
                <button type="submit" class="button">Modificar Pedido</button>
            </form>
        </div>
    </div>