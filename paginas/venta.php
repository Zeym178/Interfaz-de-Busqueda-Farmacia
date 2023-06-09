<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Venta</title>
    
</head>
<body>
    <div class="container">
        <div class="row">
            <div class="text-center mt-5 mb-4">
                <h2>Venta</h2>
            </div>
            <div class="col-lg-8">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="bus-prod" autocomplete="off" placeholder="Buscar...">
                    <div class="input-group-append">
                        <button class="btn btn-primary" id="search-btn">Buscar</button>
                    </div>
                </div>
                <div class="row mb-2">
                    <div class="col">
                        <div class="input-group">
                            <span class="input-group-text">Ordenar por:</span>
                            <select class="form-select" id="order-by">
                                <option value="">Seleccionar</option>
                                <option value="nom_pro">Nombre</option>
                                <option value="pre_venta">Precio</option>
                                <option value="stock">Stock</option>
                            </select>
                            <button class="btn btn-outline-secondary" id="order-direction">
                                <i class="bi bi-arrow-up"></i>
                            </button>
                        </div>
                    </div>
                    <div class="col">
                        <div class="input-group">
                            <span class="input-group-text">Categoría:</span>
                            <select class="form-select" id="category">
                                <option value="">Seleccionar</option>
                                <?php
                                $conn = mysqli_connect("localhost", "root", "", "farmacia");
                                $query = "SELECT DISTINCT categoria FROM productos"; // Reemplaza 'productos' con el nombre de tu tabla de productos y 'categoria' con el nombre de la columna de categoría en tu tabla de productos
                                $result = mysqli_query($conn, $query);

                                while ($row = mysqli_fetch_assoc($result)) {
                                    $categoria = $row['categoria']; // Reemplaza 'categoria' con el nombre de la columna de categoría en tu tabla de productos
                                    ?>
                                    <option value="<?php echo $categoria; ?>"><?php echo $categoria; ?></option>
                                    <?php
                                }
                                ?>
                            </select>
                        </div>
                    </div>
                </div>
                <div id="bus-prod-res"></div>
                <div id="loading-indicator" style="display: none;">
                    Cargando resultados...
                </div>
                <button class="btn btn-primary mb-4" id="show-more-btn" style="display: none;">Mostrar más</button>
            </div>



            <div class="col-lg-4 position-relative">
                <div class="table-responsive position-fixed">
                    <table class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Producto</th>
                                <th>Cantidad</th>
                                <th>Precio</th>
                                <th>Total</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Aquí puedes agregar las filas de la tabla con los productos vendidos -->
                            <tr>
                                <td>Producto 1</td>
                                <td>1</td>
                                <td>$10.00</td>
                                <td>$10.00</td>
                            </tr>
                            <tr>
                                <td>Producto 2</td>
                                <td>2</td>
                                <td>$15.00</td>
                                <td>$30.00</td>
                            </tr>
                            <!-- Agrega más filas según sea necesario -->
                        </tbody>
                        <tfoot>
                            <tr>
                                <td colspan="3" class="text-end">Total:</td>
                                <td>$40.00</td>
                            </tr>
                        </tfoot>
                    </table>
                </div>
            </div>
        </div>
    </div>

    <script src="./js/venta.js"></script>
</body>
</html>
