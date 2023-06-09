<?php

include_once 'db.php';

if (isset($_POST['input'])) {
    $input = $_POST['input'];
    $results_per_page = 5;
    $page = isset($_POST['page']) ? $_POST['page'] : 1;
    $offset = ($page - 1) * $results_per_page;

    $orderBy = $_POST['orderBy'];
    $orderDirection = $_POST['orderDirection'];
    $category = $_POST['category'];

    if (!empty($input)) {
        $searchTerms = explode(" ", $input);
        $searchQuery = "";

        foreach ($searchTerms as $term) {
            $term = trim($term);
            if (!empty($term)) {
                if (!empty($searchQuery)) {
                    $searchQuery .= " OR ";
                }
                $searchQuery .= "(nom_pro LIKE '%$term%' OR MATCH(nom_pro) AGAINST('$term' IN BOOLEAN MODE))";
            }
        }

        $query = "SELECT *, MATCH(nom_pro) AGAINST('$input' IN BOOLEAN MODE) AS relevance 
        FROM productos 
        WHERE ($searchQuery) ";

        if (!empty($category)) {
            $query .= " AND categoria = '$category' ";
        }

        $query .= " ORDER BY (CASE 
                  WHEN nom_pro LIKE '$input%' THEN 1
                  WHEN nom_pro LIKE '%$input%' THEN 2
                  ELSE 3
                END), relevance DESC";

        if (!empty($orderBy)) {
            $query .= ", $orderBy $orderDirection";
        }

    } else {
        $query = "SELECT * FROM productos";
    
        if (!empty($category)) {
            $query .= " WHERE categoria = '$category'";
        }
    
        if (!empty($orderBy)) {
            $query .= " ORDER BY $orderBy $orderDirection";
        }
    }   

    $query .= " LIMIT $results_per_page OFFSET $offset";

    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) > 0) { ?>
        <div class="table-wrapper" id="tablediv">
            <table class="table table-bordered table-striped mt-4">
                <thead>
                    <tr>
                        <th>Codigo</th>
                        <th>Nombre</th>
                        <th>Presentacion</th>
                        <th>Pre-Venta</th>
                        <th>Pre-Compra</th>
                        <th>F.V.</th>
                        <th>Stock</th>
                        <th>Categoria</th>
                        <th>Proveedor</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    while ($row = mysqli_fetch_assoc($result)) {
                        $codigo = $row['cod_pro'];
                        $nombre = $row['nom_pro'];
                        $presentacion = $row['presentacion'];
                        $preventa = $row['pre_venta'];
                        $precompra = $row['pre_compra'];
                        $fv = $row['fecha_venc'];
                        $stock = $row['stock'];
                        $categoria = $row['categoria'];
                        $proveedor = $row['proveedor'];
                        ?>

                        <tr>
                            <td><?php echo $codigo; ?></td>
                            <td><?php echo $nombre; ?></td>
                            <td><?php echo $presentacion; ?></td>
                            <td><?php echo $preventa; ?></td>
                            <td><?php echo $precompra; ?></td>
                            <td><?php echo $fv; ?></td>
                            <td><?php echo $stock; ?></td>
                            <td><?php echo $categoria; ?></td>
                            <td><?php echo $proveedor; ?></td>
                        </tr>
                    <?php
                    }
                    ?>
                </tbody>
            </table>
        </div>
    <?php
    } else {
        echo "<h6 class='text-danger text-center mt-3'>Datos No Encontrados</h6>";
    }
}

?>
