<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cardapio</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <style>

        h4 {
            font-size: 16px;
            font-weight: bold;
            margin-top: 10px;
            margin-left: 0;
            margin-bottom: 10px;
            color: #333;
        }


        h3 {
            font-size: 18px;
            font-weight: bold;
            margin: 0;
        }

        h2{
            text-align: center;
        }

        .titulo{
            color: #484d50;
            background-color: #cf2a27;
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 18px;
            font-weight: normal;
            display: inline-block;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);

        }

        .sub-titulo{
            color: #484d50;
            background-color: #cf2a27;
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 18px;
            font-weight: normal;
            display: inline-block;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);

        }

        .badge.text-bg-secondary {
            background-color: #808080;
            color: white;
            padding: 10px 20px;
            border-radius: 25px;
            font-size: 18px;
            font-weight: normal;
            display: inline-block;
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-sizing: border-box;
            padding-top: 50px;


            .container {
                max-width: 1200px;
                width: 100%;
                margin: 50px auto;
                padding: 20px;
            }

            .center-content {
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                text-align: center;
                margin-top: 50px;
                margin-left: -60px;
            }

            .header {
                width: 100%;
                max-width: 1200px;
                background-color: #cf2a27;
                color: white;
                display: flex;
                align-items: center;
                justify-content: space-between;
                padding: 15px 50px;
                margin-top: 20px;
                margin-bottom: 30px;
                border-radius: 10px;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
                margin-left: 60px;
                margin-right: 1px;
            }


            .header img {
                width: 150px;
                height: auto;
                margin-left: 50px;
            }

            .menu {
                display: flex;
                gap: 20px;
            }

            .menu button {
                background-color: #009e0f;
                color: white;
                border: none;
                padding: 10px 20px;
                cursor: pointer;
                font-size: 15px;
                border-radius: 5px;
                font-weight: bold;
            }

            .menu button:hover {
                background-color: #009e0f;
            }

            .top-menu a {
                color: #009e0f;
                text-decoration: none;
                font-size: 15px;
                padding: 5px 15px;
                border-radius: 50px;
                font-weight: bold;
                text-align: center;
            }

            .top-menu a:hover {
                background-color: #c6c6c6;
            }

            .item {
                border: 1px solid #ccc;
                background-color: white;
                margin-bottom: 20px;
                padding: 20px;
                display: flex;
                align-items: center;
                justify-content: space-between;
                border-radius: 10px;
                width: 100%;
            }

            .item img {
                width: 150px;
                border-radius: 10px;
            }

            .details {
                flex-grow: 1;
                padding: 0 20px;
            }

            .details h3 {
                margin: 0;
                font-size: 18px;
            }

            .details p {
                margin: 5px 0;
                font-size: 16px;
                color: #555;
            }

            .details label {
                font-size: 16px;
            }

            .actions select,
            .actions button {
                padding: 10px;
                font-size: 14px;
            }


            .header-container {
                display: flex;
                align-items: center;
                justify-content: space-between;
                background-color: #808080;
                color: #fff;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
                width: 100%;
                max-width: 1200px;
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
                margin: 0px;
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


            i {
                margin-right: 5px;
            }

            .finalizar {
                text-align: center;
                margin: 20px 0;
            }

            .finalizar button {
                background-color: #009e0f;
                color: white;
                font-weight: bold;
                border: none;
                padding: 15px 30px;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
            }

            .finalizar button:hover {
                background-color: #009e0f;
            }




    </style>
</head>
<body>

<div class="header">
    <img src="${pageContext.request.contextPath}/imagens/logo2.png" alt="Logo" class="logo" />
    <h1>CARDAPIO</h1>
    <div class="menu">
        <a href="home.jsp">
            <button type="button"> <i class="fas fa-home"></i> HOME</button>
        </a>
        <a href="login.jsp">
            <button type="button"><i class="fas fa-user"></i> LOGIN FUNCIONARIO</button>
        </a>
    </div>
</div>

<br>
<br>

<div class="center-content">
    <h2> <span class="titulo">Escolha a sua pizza</span> </h2>
<div class="top-menu">
    <a href="#favoritas">FAVORITAS</a>
    <a href="#salgadas">SALGADAS</a>
    <a href="#veganas">VEGANAS</a>
    <a href="#doces">DOCES</a>
</div>
</div>

<div class="container">
    <form action="/create-pedido" method="post">
        <br>
        <h3 id="favoritas"> <span class="badge text-bg-secondary">Os favoritos da casa</span></h3>

        <br>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaImperiale.png" alt="Pizza Imperiale" />
            <div class="details">
                <h3>Pizza Imperiale</h3>
                <p>$40,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaAlFresco.png" alt="Pizza Al Fresco" />
            <div class="details">
                <h3>Pizza Al Fresco</h3>
                <p>$45,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaTrionfo.png" alt="Pizza Trionfo" />
            <div class="details">
                <h3>Pizza Trionfo</h3>
                <p>$40,00</p>
                <br>
            </div>
        </div>

        <br>
        <br>

        <h3> <span class="sub-titulo">Outros sabores</span></h3>
        <br>

        <h4 id="salgadas"> <span class="badge text-bg-secondary">Salgadas</span></h4>
        <br>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaCalabresa.png" alt="Pizza Calabresa" />
            <div class="details">
                <h3>Pizza Calabresa</h3>
                <p>$30,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaPortuguesa.png" alt="Pizza Portuguesa" />
            <div class="details">
                <h3>Pizza Portuguesa</h3>
                <p>$35,00</p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaMarguerita.png" alt="Pizza Marguerita" />
            <div class="details">
                <h3>Pizza Marguerita</h3>
                <p>$30,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaCatupiry.png" alt="Pizza Catupiry" />
            <div class="details">
                <h3>Pizza Frango com Catupiry</h3>
                <p>$35,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaQueijos.png" alt="Pizza Quatro Queijos" />
            <div class="details">
                <h3>Pizza Quatro Queijos</h3>
                <p>$35,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaCarbonara.png" alt="Pizza Carbonara" />
            <div class="details">
                <h3>Pizza Carbonara</h3>
                <p>$40,00</p>
                <br>
            </div>
        </div>

        <br>
        <br>

        <h4 id="veganas"> <span class="badge text-bg-secondary">Veganas</span></h4>
        <br>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaEspinafre.png" alt="Pizza de Cogumelos com Espinafre" />
            <div class="details">
                <h3>Pizza de Cogumelos com Espinafre</h3>
                <p>$35,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaPalmito.png" alt="Pizza de Palmito com Milho" />
            <div class="details">
                <h3>Pizza de Palmito com Milho</h3>
                <p>$35,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaRucula.png" alt="Pizza de Rúcula com Tomate Seco" />
            <div class="details">
                <h3>Pizza de Rucula com Tomate Seco</h3>
                <p>$40,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzas/pizzaAlcachofra.png" alt="Pizza de Alcachofra com Azeitonas" />
            <div class="details">
                <h3>Pizza de Alcachofra com Azeitonas</h3>
                <p>$30,00</p>
                <br>
            </div>
        </div>

        <br>
        <br>

        <h4 id="doces"> <span class="badge text-bg-secondary">Doces</span></h4>
        <br>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaBrigadeiro.png" alt="Pizza de Brigadeiro" />
            <div class="details">
                <h3>Pizza de Brigadeiro</h3>
                <p>$30,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaRJ.png" alt="Pizza Romeu e Julieta" />
            <div class="details">
                <h3>Pizza Romeu e Julieta</h3>
                <p>$35,00</p>
                <br>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/pizzaBanana.png" alt="Pizza de Banana Nevada" />
            <div class="details">
                <h3>Pizza de Banana Nevada</h3>
                <p>$30,00</p>
                <br>
            </div>
        </div>

        <br>
        <br>
        <br>

        <div class="center-content">
            <h2> <span class="titulo">Escolha a sua bebida</span></h2>
            <div class="top-menu">
                <a href="#sucos">SUCOS</a>
                <a href="#refrigerantes">REFRIGERANTES</a>
            </div>
        </div>

        <br>
        <br>
        <br>
        <br>

        <h4 id="sucos"> <span class="badge text-bg-secondary">Sucos</span></h4>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/sucos/sucoUva.png" alt="Suco de Uva" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Suco de Uva</h3>
                <p>200mL - R$8,50 </p>
                <p>500mL - R$9,85 </p>
                <p>1L - R$12,00 </p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/sucos/sucoLaranja.png" alt="Suco de Uva" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Suco de Laranja</h3>
                <p>200mL - R$8,50 </p>
                <p>500mL - R$9,85 </p>
                <p>1L - R$12,00 </p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/sucos/sucoGoaiba.png" alt="Suco de Goiaba" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Suco de Goiaba</h3>
                <p>200mL - R$8,50 </p>
                <p>500mL - R$9,85 </p>
                <p>1L - R$12,00 </p>
            </div>
        </div>

        <br>
        <h4 id="refrigerantes"> <span class="badge text-bg-secondary">Refrigerantes</span></h4>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/refris/cocaRefri.png" alt="Coca-Cola" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Coca-Cola</h3>
                <p>Latinha - R$4,00</p>
                <p>2L - R$13,50</p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/refris/refriGuarana.png" alt="Guarana" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Guarana Antarctica </h3>
                <p>Latinha - R$4,00</p>
                <p>2L - R$13,50</p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/refris/fantaURefri.png" alt="Fanta Uva" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Fanta Uva </h3>
                <p>Latinha - R$4,00</p>
                <p>2L - R$13,50</p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/refris/fantaLRefri.png" alt="Fanta Laranja" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Fanta Laranja</h3>
                <p>Latinha - R$4,00</p>
                <p>2L - R$13,50</p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/refris/pepsiRefri.png" alt="Pepsi" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Pepsi </h3>
                <p>Latinha - R$4,00</p>
                <p>2L - R$13,50</p>
            </div>
        </div>

        <div class="item">
            <img src="${pageContext.request.contextPath}/imagens/refris/spritRefri.png" alt="Sprite" style="width: 200px; height: auto;" />
            <div class="details">
                <h3>Sprite </h3>
                <p>Latinha - R$4,00</p>
                <p>2L - R$13,50</p>
            </div>
        </div>

        <br>

    </form>

    <div class="finalizar">
        <form action="pedir.jsp" method="GET">
            <button type="submit">REALIZAR PEDIDO</button>
        </form>
    </div>

    <br>
    <br>

        <div class="header-container">
            <div class="logoBrra">
                <img src="${pageContext.request.contextPath}/imagens/logo3.png" alt="LogoBarra" style="width: 145px; height: auto; margin-left: 24px; " />
            </div>
            <div class="info">
                <p><i class="fas fa-map-marker-alt"></i> Av. Eng. Alberto de Zagottis - 833 <br> Jurubatuba - SP</p>
                <p><i class="fas fa-phone"></i> (11) 95238-2034</p>
                <p><i class="fas fa-clock"></i> 17:00 - 01:00 </p>
                <p><i class="fas fa-calendar-alt"></i>Quinta - Domingo - Feriados</p>

            </div>

            <div class="social-icons">
                <a href="#"><i class="fab fa-facebook-f"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-whatsapp"></i></a>
            </div>
        </div>

</div>
</body>
</html>


