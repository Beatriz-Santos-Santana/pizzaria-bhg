<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pizzaria BHG</title>
    <link rel="icon" href="IMG/favicon.ico" type="image/x-icon">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e0e0e0;
            color: #333;
        }

        /* Cabeçalho */
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

        /* Conteúdo principal */
        .main-container {
            text-align: center;
            margin: 20px auto;
            max-width: 1200px;
        }

        .promo, .favorites, .about {
            margin: 20px 0;
        }

        .promo img, .favorites img {
            border-radius: 10px;
        }

        /* Rodapé */
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

    </style>
</head>
<body>
    <header>
        <div class="logo-container">
            <img src="IMG/logo.png" alt="Logo BHG" class="logo">
        </div>
        <div class="buttons-container">
            <a href="http://localhost:8080/cardapio.jsp" class="btn"><i class="fas fa-pizza-slice"></i> CARDAPIO</a>
            <a href="http://localhost:8080/login" class="btn"><i class="fas fa-user"></i> LOGIN FUNCIONARIO</a>
        </div>
    </header>

    <div class="main-container">
        <section class="promo">
            <h2>Venha Conhecer Nossas Promocoes!</h2>
            <div>
                <img src="IMG/promo1.png" alt="Promoção 1">
                <img src="IMG/promo2.png" alt="Promoção 2">
                <img src="IMG/promo3.png" alt="Promoção 3">
            </div>
        </section>

        <section class="favorites">
            <h2>Os Favoritos Da Casa!!!</h2>
            <div>
                <img src="IMG/pizza1.png" alt="Pizza Imperiale">
                <img src="IMG/pizza2.png" alt="Pizza Al Fresco">
                <img src="IMG/pizza3.png" alt="Pizza Trionfo">
            </div>
        </section>

        <section class="about">
            <h2>Um pouco mais sobre nos...</h2>
            <p>Desde 1980, a pizzaria BHG Familiar, na zona sul de Sao Paulo, transforma pizzas artesanais com ingredientes de qualidade e forno a lenha em verdadeiras obras-primas. De uma pequena loja a um renomado restaurante premiado, sua paixao e dedicaca o continuam a encantar e a satisfazer.</p>
            <div>
                <img src="IMG/familia.png" alt="Família BHG">
                <img src="IMG/forno.png" alt="Forno a Lenha">
            </div>
        </section>
    </div>

    <!-- Rodapé -->
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
