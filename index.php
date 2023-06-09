<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Farmacia</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/styles.css">
</head>
<body>
    <div class="container-fluid">
        <div class="row flex-nowrap">
            <div class="col-auto col-md-3 col-xl-2 col-sm-3 col-2 px-sm-2 px-0 position-relative bg-dark sidebar min-vh-100 mw-20">
                <div class="position-fixed d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                    <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                        <span class="fs-5 d-none d-sm-inline">Menu</span>
                    </a>
                    <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                        <li class="nav-item">
                            <a href="#" class="nav-link align-middle px-0" data-page="home.php">
                                <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Home</span>
                            </a>
                        </li>
                        
                        <li>
                            <a href="#" class="nav-link px-0 align-middle" data-page="productos.php">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline">Productos</span></a>
                        </li>
                        <li>
                            <a href="#submenu2" data-bs-toggle="collapse" class="nav-link px-0 align-middle ">
                                <i class="fs-4 bi-bag"></i> <span class="ms-1 d-none d-sm-inline">Ventas</span></a>
                            <ul class="collapse nav flex-column ms-1" id="submenu2" data-bs-parent="#menu">
                                <li class="w-100">
                                    <a href="#" class="nav-link px-0" data-page="reg-ventas.php"><i class="bi-4 bi-bag"></i> <span class="d-none d-sm-inline">Registro de Ventas</span></a>
                                </li>
                                <li>
                                    <a href="#" class="nav-link px-0" data-page="venta.php"><i class="bi-4 bi-bag"></i> <span class="d-none d-sm-inline">Realizar Venta</span></a>
                                </li>
                            </ul>
                        </li>
                        <li>
                            <a href="#" class="nav-link px-0 align-middle" data-page="customers.php">
                                <i class="fs-4 bi-people"></i> <span class="ms-1 d-none d-sm-inline">Empleados</span> </a>
                        </li>
                    </ul>
                    <hr>
                    <div class="dropdown pb-4">
                        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                            <img src="https://rvideos2.memedroid.com/videos/UPLOADED573/63b8cc8e4258b.webp" alt="hugenerd" width="30" height="30" class="rounded-circle">
                            <span class="d-none d-sm-inline mx-1">usuario</span>
                        </a>
                        <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                            <li><a class="dropdown-item" href="#">Configuracion</a></li>
                            <li><a class="dropdown-item" href="#">Perfil</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">Salir</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col py-3" id="content">
                
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        $(document).ready(function() {
            loadContent('./paginas/productos.php');

            $('#menu a.nav-link').click(function(e) {
                e.preventDefault();
                var page = './paginas/'+$(this).data('page');
                if (!$(this).attr('data-bs-toggle')) {
                    loadContent(page);
                }
            });

            function loadContent(page) {
                $.ajax({
                    url: page,
                    success: function(response) {
                        $('#content').html(response);
                    },
                    error: function() {
                        $('#content').html('<p>Error al cargar el contenido.</p>');
                    }
                });
            }
        });
    </script>
</body>
</html>
