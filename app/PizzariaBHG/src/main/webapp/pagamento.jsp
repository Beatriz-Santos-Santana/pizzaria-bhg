<%--
  Created by IntelliJ IDEA.
  User: hevelly.anjos
  Date: 26/11/2024
  Time: 21:55
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forma de Pagamento</title>
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
            display: flex;
            align-items: center;
            background-color: #CF2A27; /* Garantir que o tom de vermelho seja uniforme */
            color: white;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .logo {
            width: 80px;
            height: auto;
            margin-right: 15px;
        }
        .header h1 {
            margin: 0;
            font-size: 1.5rem;
        }
        .section-title {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 10px;
            text-align: center;
        }
        .payment-method {
            margin-bottom: 15px;
        }
        .payment-method input {
            margin-right: 10px;
        }
        .button {
            width: 60%;
            padding: 20px 30px;
            font-size: 18px;
            font-weight: bold;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 8px;
            text-align: center;
        }
        .button.confirm {
            background-color: #009E0F;
            width: 100%;
        }
        .button.cancel {
            background-color: #FF0000;
            width: 100%;
        }
        .button-group {
            display: flex;
            justify-content: center;
            gap: 10px;
            margin-top: 30px;
        }
        #pix-qr {
            display: none;
            margin-top: 20px;
            text-align: center;
        }
        #pix-qr img {
            width: 150px;
            height: 150px;
        }
        #troco-section {
            display: none;
            margin-left: 20px;
        }
    </style>
</head>
<body>
<div class="form-container">

    <div class="header">
        <img src="${pageContext.request.contextPath}/imagens/logo2.png" alt="Logo" class="logo">
        <h1>Forma de Pagamento</h1>
    </div>

    <div>
        <div class="section-title">Escolha uma forma de pagamento:</div>

        <div class="payment-method">
            <input type="radio" id="cartao" name="payment" value="cartao">
            <label for="cartao">Pagamento na Entrega - Cartao (Debito ou Credito)</label>
        </div>

        <div class="payment-method">
            <input type="radio" id="dinheiro" name="payment" value="dinheiro">
            <label for="dinheiro">Pagamento na Entrega - Dinheiro</label>
        </div>

        <div id="troco-section">
            <label for="troco-value">Necessita de troco? Insira o valor:</label><br>
            <input type="number" id="troco-value" placeholder="Digite o valor do troco">
        </div>

        <div class="payment-method">
            <input type="radio" id="pix" name="payment" value="pix">
            <label for="pix">PIX</label>
        </div>
        <div id="pix-qr">
            <p>Escaneie o QR Code abaixo para realizar o pagamento via PIX:</p>
            <img src="${pageContext.request.contextPath}/imagens/qrcode.png" alt="QR Code do PIX">
        </div>

        <div class="button-group">
            <a href="home.jsp">
                <button class="button confirm" onclick="confirmarPagamento()">Confirmar</button>
            </a>
            <a href="cardapio.jsp">
                <button class="button cancel" onclick="cancelarPagamento()">Cancelar</button>
            </a>
        </div>
    </div>

</div>

<script>
    document.getElementById('dinheiro').addEventListener('click', function() {
        document.getElementById('troco-section').style.display = 'block';
        document.getElementById('pix-qr').style.display = 'none';
    });
    document.getElementById('cartao').addEventListener('click', function() {
        document.getElementById('troco-section').style.display = 'none';
        document.getElementById('pix-qr').style.display = 'none';
    });
    document.getElementById('pix').addEventListener('click', function() {
        document.getElementById('troco-section').style.display = 'none';
        document.getElementById('pix-qr').style.display = 'block';
    });


    function confirmarPagamento() {
        alert('Pagamento Confirmado com sucesso!');
    }

    function cancelarPagamento() {
        alert('Pagamento Cancelado!');
    }
</script>

</body>
</html>
