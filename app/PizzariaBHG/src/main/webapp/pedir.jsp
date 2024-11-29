<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
  <style>
    body, html {
      background-color: #f5f5f5;
      font-family: Arial, sans-serif;
      padding-top: 20px;
      height: 5px;
      min-height: 150vh;
      margin-bottom: 30px;
      overflow-y: scroll;
    }

    .header {
      background-color: #cf2a27;
      color: white;
      padding: 15px 30px;
      border-radius: 10px;
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-bottom: 30px;
    }

    .header img {
      width: 120px;
    }

    .menu button {
      background-color: #009e0f;
      color: white;
      border: none;
      padding: 8px 20px;
      font-size: 15px;
      border-radius: 5px;
      font-weight: bold;
    }

    .menu button:hover {
      background-color: #007c0e;
    }

    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
      background-color: #c6c6c6;
    }

    .btn-save {
      width: 100%;
      padding: 10px 0;
    }

    .header-container {
      display: flex;
      align-items: center;
      justify-content: space-between;
      background-color: #808080;
      color: #fff;
      padding: 15px 30px;
      border-radius: 10px;
      box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
      width: 100%;
      max-width: 1200px;
      margin: 0 auto;
      margin-top: 30px;
    }

    .logoBarra {
      flex: 1;
    }

    .logo-img {
      width: 100px;
      height: auto;
    }

    .info {
      display: flex;
      gap: 20px;
      align-items: center;
      margin-left: 60px;
    }

    .info p {
      margin:  0px;
    }

    .social-icons {
      flex: 1;
      display: flex;
      justify-content: flex-end;
      gap: 10px;
    }

    .social-icons a {
      color: #fff;
      font-size: 20px;
      text-decoration: none;
    }

    .social-icons a:hover {
      color: #ccc;
    }

    .btn-save {
      background-color: #009e0f;
      color: white;
      border-radius: 5px;
    }

    .btn-save:hover {
      background-color: #009e0f;
    }
  </style>
</head>
<body>

<div class="container mt-5">
  <form action="/create-pedido" method="post">
    <div class="header">
      <img src="${pageContext.request.contextPath}/imagens/logo2.png" alt="Logo" />
      <h1 style="font-weight: bold;">Fazer Pedido</h1>
      <div class="menu">
        <a href="home.jsp">
          <button type="button"><i class="fas fa-home"></i> HOME</button>
        </a>
        <a href="cardapio.jsp">
          <button type="button"><i class="fas fa-book"></i> CARDAPIO</button>
        </a>
        <a href="login.jsp">
          <button type="button"><i class="fas fa-user"></i> LOGIN FUNCIONARIO</button>
        </a>
      </div>
    </div>

    <div class="card p-4">
      <div class="mb-3">
        <label for="pedido" class="form-label">Digite o seu pedido</label>
        <input type="text" class="form-control" name="pedido" id="pedido" value="${param.pedido}" placeholder="Ex: 1 pizza calabresa + 1 suco de uva">
        <input type="hidden" id="id" name="id" value="${param.id}">
      </div>

      <div class="mb-3">
        <label for="quantidade" class="form-label">Digite a quantidade desejada</label>
        <input type="text" class="form-control" name="quantidade" id="quantidade" value="${param.quantidade}" placeholder="Ex: 2 pizzas e 1 suco de 2L">
      </div>


      <button type="submit" class="btn btn-success">Salvar</button>
    </div>

    <div class="header-container">
      <div class="logoBrra">
        <img src="${pageContext.request.contextPath}/imagens/logo3.png" alt="LogoBarra" style="width: 145px; height: auto; margin-left: 24px;" />
      </div>
      <div class="info">
        <p><i class="fas fa-map-marker-alt"></i> Av. Eng. Alberto de Zagottis - 833 <br> Jurubatuba - SP</p>
        <p><i class="fas fa-phone"></i> (11) 95238-2034</p>
        <p><i class="fas fa-clock"></i> 17:00 - 01:00 </p>
        <p><i class="fas fa-calendar-alt"></i> Quinta - Domingo - Feriados</p>
      </div>

      <div class="social-icons">
        <a href="#"><i class="fab fa-facebook-f"></i></a>
        <a href="#"><i class="fab fa-instagram"></i></a>
        <a href="#"><i class="fab fa-whatsapp"></i></a>
      </div>
    </div>

  </form>
</div>

</body>
</html>
