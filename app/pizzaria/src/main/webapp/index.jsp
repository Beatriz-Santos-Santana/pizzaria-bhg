<html>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

<body>
<h2>Pizzaria BHG</h2>

<form action="/create-pedido" method="post">

    <label>Pedido</label>
    <input type="text" name="pedido" id="pedido" value="${param.pedido}">
    <input type="hidden" id="id" name="id" value="${param.id}">

    <button type="submit" class="btn btn-success">Salvar</button>






</form>

</body>
</html>