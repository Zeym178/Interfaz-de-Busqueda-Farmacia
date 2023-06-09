<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
</head>
<body>
    <div class="container">
        <div class="text-center mt-5 mb-4">
            <h2>Listado de Productos</h2>
        </div>

        <input type="text" class="form-control" id="bus-prod" autocomplete="off" placeholder="Buscar...">

        <div id="bus-prod-res"></div>

        <div id="loading-indicator" style="display: none;">
        Cargando resultados...
        </div>

        <button class = "btn btn-primary" id="show-more-btn" style="display: none;">Mostrar más</button>
    </div>
    
    <script src="./js/productos.js"></script>
</body>
</html>