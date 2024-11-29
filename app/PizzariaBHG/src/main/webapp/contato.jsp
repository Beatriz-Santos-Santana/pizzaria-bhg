<%--
  Created by IntelliJ IDEA.
  User: beatriz
  Date: 15/11/2024
  Time: 21:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Contato</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>
      body, html{
        height: 100%;
        margin:60px;
        background-color: #DCDCDC;
      }

      .header {
        background-color: #dc3545;
        height: 200px;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
        font-size: 2rem;
        text-align: center;
        border-bottom: 4px solid #a71c1c; /* Borda inferior do quadro */
      }

      .form-container {
        max-width: 1000px;
        background-color: #c6c6c6;
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 2rem;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1)

      }

      .logo {
        width: 144px;
        height: auto;
        margin-right: 200px;
      }

      .text-center .home{
        color: #555;
        font-weight: bold;
      }

      .text-center .cardapio{
        color: #555;
        font-weight: bold;
        padding: 10px 20px;
      }

      .text-center .login{
        color: #555;
        font-weight: bold;
        padding: 10px 1px;
      }

    </style>

  </head>

  <body class="d-flex justify-content-center align-items-center">

  <div class="form-container" >
    <div style="box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3); border-radius: 5px; padding: 20px; background-color: #cf2a27; width: 101%; margin-bottom: 35px;" >
      <h1 class="mb-4 text-white text-center" style="background-color: #009e0f; padding: 0.50rem; border-radius: 10px; box-shadow: 5px 5px 15px rgba(0, 0, 0, 0.3) ">
        Contato
      </h1>
    </div>

    <form action="/contato" method="post">
      <span>${requestScope.message}</span>
      <br>

      <p class="text-center">
        <a href="/home.jsp" class="home" style="font-size: 1.2rem;">
          <i class="fas fa-home"></i> Home
        </a>

        <a href="/cardapio.jsp" class="cardapio" style="font-size: 1.2rem;">
          <i class="fas fa-pizza-slice"></i> Cardapio
        </a>

        <a href="/login.jsp" class="login" style="font-size: 1.2rem;">
          <i class="fas fa-user"></i> Login Funcionario
        </a>
      </p>




      <br>


      <h5 style="color: #484d50 ;">Informações de Contato</h5>

        <div class="col-md-12">
          <label for="email" class="col-form-label"></label>
          <input type="text" id="email" name="email" class="form-control" placeholder="Email" required>
        </div>

      <br>

      <div class="row g-3">
        <div class="col-md-6">
          <label for="nome" class="col-form-label"></label>
          <input type="text" id="nome" name="nome" class="form-control" placeholder="Nome" required>
        </div>
        <div class="col-md-6">
          <label for="num" class="col-form-label"></label>
          <input type="text" id="telefone" name="telefone" class="form-control" placeholder="Telefone" required>
        </div>
      </div>

      <br>
      <br>


      <h5 style="color: #484d50 ;">Endereço</h5>
      <div class="row g-3">
        <div class="col-md-6">
          <label for="cep" class="col-form-label"></label>
          <input type="text" id="cep" name="cep" class="form-control" placeholder="CEP" required>
        </div>
        <div class="col-md-6">
          <label for="rua" class="col-form-label"></label>
          <input type="text" id="rua" name="rua" class="form-control" placeholder="Rua" required>
        </div>
      </div>

      <br>

      <div class="row g-3">
        <div class="col-md-6">
          <label for="bairro" class="col-form-label"></label>
          <input type="text" id="bairro" name="bairro" class="form-control" placeholder="Bairro" required>
        </div>
        <div class="col-md-6">
          <label for="num" class="col-form-label"></label>
          <input type="text" id="num" name="num" class="form-control" placeholder="Número" required>
        </div>
      </div>

      <br>



      <br>

      <div class="d-flex justify-content-start align-items-center">
        <img src="${pageContext.request.contextPath}/imagens/logo.png" alt="Logo" class="logo" />
        <a href="confped.jsp">
          <button type="button" class="btn btn-success" style="background-color: #009e0f; border: 3px solid green; padding: 10px 60px">
            Confirmar
          </button>
        </a>
      </div>


    </form>

  </body>
</html>
