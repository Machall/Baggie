<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Dashboard - Task Admin</title>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="css/styles.css" rel="stylesheet" />
        <link href="css/stylesLocal.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="/TaskList">Backlog</a>
            <!-- Sidebar Toggle-->

            <!-- Navbar Search-->
            <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
                <div class="input-group">
                    <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                    <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
                </div>
            </form>

        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <div class="sb-sidenav-menu-heading">My DashBoard</div>
                            <a class="nav-link collapsed" href="index" aria-expanded="false" aria-controls="collapsePages">
                                <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                                Tasks
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="CreateTask"  aria-expanded="false" aria-controls="collapseLayouts">
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                Create a Task
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Tecnicas de Programacion</div>
                        Baggie
                    </div>
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>

                    <div class="container-fluid px-4">
                        <h1 class="mt-4">Task List</h1>
                        <ol class="breadcrumb mb-4">
                            <li class="breadcrumb-item active">My tasks</li>
                        </ol>
                    </div>
                    <div class="container  border border-black rounded bg-dark text-white">
                        <form class="d-flex rounded m-3" role="search">
                            <input disabled class="form-control m-4 mb-3"  aria-label="Search">

                        </form>
                        <div class="row">
                            <div class ="col-2"></div>
                            <div id="divInComplete" class="col-4 m-2 mb-4">
                                <h2 class="mx-5">To Do</h2>
                                <div class="card bg-info mb-3 ms-3 rounded text-black" style="width: 20rem;">
                                    <div class="card-body bg-secondary-subtle">
                                        <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center"></i>
                                        <h5 class="card-title text-center">Task Name</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <h6 class="card-subtitle mb-2 text-body-secondary text-start">Activities</h6>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                                            <label class="form-check-label" for="flexCheckDefault1">
                                                A Task Activity
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                                            <label class="form-check-label" for="flexCheckDefault2">
                                                A Task Activity
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
                                            <label class="form-check-label" for="flexCheckDefault3">
                                                A Task Activity
                                            </label>
                                        </div>
                                        <div class="progress m-2" role="progressbar" aria-label="Default striped example" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100">
                                            <div class="progress-bar progress-bar-striped bg-primary" ></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="divComplete" class="col-4 m-2">
                                <h2 class="mx-5">Complete</h2>
                                <div class="card bg-info mb-3 ms-3 rounded text-black" style="width: 20rem;">
                                    <div class="card-body bg-secondary-subtle">
                                        <i class="fas fa-solid fa-list-check card-img-top card-tittle text-center"></i>
                                        <h5 class="card-title text-center">Task Name</h5>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <h6 class="card-subtitle mb-2 text-body-secondary text-start">Activities</h6>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                A Task Activity
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                A Task Activity
                                            </label>
                                        </div>
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                A Task Activity
                                            </label>
                                        </div>
                                        <div class="progress m-2" role="progressbar" aria-label="Default striped example" aria-valuenow="10" aria-valuemin="0" aria-valuemax="100">
                                            <div class="progress-bar progress-bar-striped bg-primary" ></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class ="col-2"></div>
                        </div>
                    </div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid px-4">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2023</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="https://kit.fontawesome.com/32d784fd92.js" crossorigin="anonymous"></script>
        <script src="js/Scripts.js"></script>
    </body>
</html>