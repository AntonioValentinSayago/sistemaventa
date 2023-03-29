<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - Lavanderia Sapito</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="https://cdn-icons-png.flaticon.com/512/394/394894.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link
    href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
    rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="vendor/simple-datatables/style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/main.css">

  <!-- Template Main CSS File -->
  <link href="css/style.css" rel="stylesheet">

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.php" class="logo d-flex align-items-center">
        <img src="https://cdn-icons-png.flaticon.com/512/394/394894.png" alt="">
        <span class="d-none d-lg-block">Sapito</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="img/profile-img.jpg" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">Juan Felipe</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>Juan Felipe</h6>
              <span>Empleado</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>¿Necesitas Ayuda?</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Salir del Sistema</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-item">
        <a class="nav-link " href="index.php">
          <i class="bi bi-grid"></i>
          <span>Panel Principal</span>
        </a>
      </li><!-- End Dashboard Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="inventario.php">
          <i class="bi bi-menu-button-wide"></i><span>Inventario</span>
        </a>
      </li><!-- End Components Nav -->


      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Reportes</span>
        </a>
      </li><!-- End Tables Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="gastosGenerales.html">
          <i class="bi bi-bar-chart"></i><span>Gastos Generales</span>
        </a>
      </li><!-- End Charts Nav -->


      <li class="nav-item">
        <a class="nav-link collapsed" href="clientes.php">
          <i class="bi bi-person"></i>
          <span>Clientes</span>
        </a>
      </li><!-- End Profile Page Nav -->

      <li class="nav-item">
        <a class="nav-link collapsed" href="pages-faq.html">
          <i class="bi bi-question-circle"></i>
          <span>Manual de Usuario</span>
        </a>
      </li><!-- End F.A.Q Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    <div class="pagetitle" style="display: flex;">
      <h1>Panel Principal</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.php"></a></li>
          <li class="breadcrumb-item active"></li>
        </ol>
      </nav>
      <div style="margin-left: auto;">
        <button type="button" class="btn btn-primary btn-add"><i class="bi bi-plus me-1"></i>Cliente</button>
        <button type="button" class="btn btn-primary btn-add"><i class="bi bi-plus me-1"></i>Nota</button>
      </div>
    </div><!-- End Page Title -->

    <!--Inicio del Section Principal-->
    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-12">
          <div class="row">

            <!-- Recent Sales -->
            <div class="col-12">
              <div class="card recent-sales overflow-auto">

                <div class="card-body">
                  <h5 class="card-title">Registro de Notas </h5>

                  <table class="table table-borderless datatable">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Cliente</th>
                        <th scope="col">Descripcion</th>
                        <th scope="col">Fecha Entrega</th>
                        <th scope="col">Precio</th>
                        <th scope="col">Status</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Brandon Jacob</td>
                        <td>Lorem ipsum dolor sit amet consectetur adipisicing elit.</td>
                        <td><a href="#" class="text-primary">25 / 03 / 2023 </a></td>
                        <td>$25</td>
                        <td><span class="badge bg-success">Entregado</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Cesar Antonio</td>
                        <td>Lorem ipsum dolor sit amet consectetur.</td>
                        <td><a href="#" class="text-primary">25 / 03 / 2023 </a></td>
                        <td>$25</td>
                        <td><span class="badge bg-primary">En proceso</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Federido Lopez</td>
                        <td>Lorem, ipsum dolor.</td>
                        <td><a href="#" class="text-primary">25 / 03 / 2023 </a></td>
                        <td>$25</td>
                        <td><span class="badge bg-danger">En Bodega</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Valentina Lopez</td>
                        <td>Lorem, ipsum dolor.</td>
                        <td><a href="#" class="text-primary">25 / 03 / 2023 </a></td>
                        <td>$25</td>
                        <td><span class="badge bg-danger">En Bodega</span></td>
                      </tr>
                      <tr>
                        <th scope="row"><a href="#">#2457</a></th>
                        <td>Marcos Eduardo</td>
                        <td>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</td>
                        <td><a href="#" class="text-primary">25 / 03 / 2023 </a></td>
                        <td>$25</td>
                        <td><span class="badge bg-danger">En Bodega</span></td>
                      </tr>
                    </tbody>
                  </table>

                </div>

              </div>
            </div><!-- End Recent Sales -->

          </div>
        </div><!-- End Left side columns -->

      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Lavanderia_Sapito</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      Designed by <a href="https://bootstrapmade.com/">Lavandera Sapito </a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
      class="bi bi-arrow-up-short"></i></a>

  <script>
/*     document.addEventListener("keydown", function (event) {
      console.log("Tecla presionada: " + event.keyCode);
      if (event.keyCode == 32) { alert("Tecla presionada"); }
    }); */

    /* document.addEventListener("keyup", function(event) {
      console.log("Tecla liberada: " + event.keyCode);
    }); */

  </script>

  <!-- Vendor JS Files -->
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="vendor/chart.js/chart.umd.js"></script>
  <script src="vendor/apexcharts/apexcharts.min.js"></script>
  <script src="vendor/echarts/echarts.min.js"></script>
  <script src="vendor/quill/quill.min.js"></script>
  <script src="vendor/simple-datatables/simple-datatables.js"></script>
  <script src="vendor/tinymce/tinymce.min.js"></script>
  <script src="vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="js/main.js"></script>

</body>

</html>