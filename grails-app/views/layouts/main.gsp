<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <asset:link rel="icon" href="favicon.ico" type="image/x-ico"/>
    <asset:stylesheet src="application.css"/>
    <asset:stylesheet src="fontawesome-free/css/all.min.css"/>
    <asset:stylesheet src="all.min.css"/>
    <asset:stylesheet src="sb-admin-2.css"/>
    <link
            href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
            rel="stylesheet">

    <g:layoutHead/>

</head>
<style>
.navbar-nav>li>a:hover {
    background-color: #92153b !important;
    color: white !important;
}
</style>
<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav navbarcustom sidebar sidebar-dark accordion" id="accordionSidebar">

        <!-- Sidebar - Brand -->
        <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
            <div class="sidebar-brand-icon rotate-n-15">
                <i class="fas fa-laugh-wink"></i>
            </div>

            <div class="sidebar-brand-text mx-3">Ads Manager</div>
        </a>

        <!-- Nav Item - Tables -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse"
               data-target="#collapseannonce" aria-expanded="true"
               aria-controls="collapseannonce">
                <i class="fas fa-fw fa-newspaper"></i>
                <span>Ads</span>
            </a>
            <div id="collapseannonce" class="collapse" aria-labelledby="headingAnnoncz" data-parent="#accordionSidebar"
                 style="">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/projet/annonce/index">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                          Ads List
                    </a>

                    <a class="collapse-item" href="/projet/annonce/create">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                          Create Ads
                    </a>
                </div>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse"
               data-target="#collapseUser" aria-expanded="true"
               aria-controls="collapseUser">
                <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                User
            </a>
            <div id="collapseUser" class="collapse" aria-labelledby="headingUser" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <a class="collapse-item" href="/projet/user/index">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        User List
                    </a>

                    <a class="collapse-item" href="/projet/user/create">
                        <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                        Create User
                    </a>
                </div>
            </div>
        </li>
    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                <!-- Sidebar Toggle (Topbar) -->
                <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                    <i class="fa fa-bars"></i>
                </button>

                <!-- Topbar Search -->
                <g:form controller="annonce" action="search" method="GET">
                    <div class="input-group">
                        <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." name="search" id="search"
                               aria-label="Search" aria-describedby="basic-addon2">

                        <div class="input-group-append">
                            <button class="btn btn-primary" type="submit" style="
    background-color: #d32c4c;
    border-color: #d72e4a;
">
                                <i class="fas fa-search fa-sm"></i>
                            </button>
                        </div>
                    </div>
                </g:form>

                <!-- Topbar Navbar -->
                <ul class="navbar-nav ml-auto">

                    <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                    <li class="nav-item dropdown no-arrow d-sm-none">
                        <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-search fa-fw"></i>
                        </a>
                        <!-- Dropdown - Messages -->
                        <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                             aria-labelledby="searchDropdown">
                            <form class="form-inline mr-auto w-100 navbar-search">
                                <div class="input-group">
                                    <input type="text" class="form-control bg-light border-0 small"
                                           placeholder="Search for..." aria-label="Search"
                                           aria-describedby="basic-addon2">

                                    <div class="input-group-append">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fas fa-search fa-sm"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </li>

                    <div class="topbar-divider d-none d-sm-block"></div>

                    <!-- Nav Item - User Information -->
                    <li class="nav-item dropdown no-arrow">
                        <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                           data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <span class="mr-2 d-none d-lg-inline text-gray-600 small">Profil</span>
                            <asset:image class="img-profile rounded-circle" src="undraw_profile.svg"/>
                        </a>
                        <!-- Dropdown - User Information -->
                        <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                             aria-labelledby="userDropdown">

                            <div id="controllers" role="navigation">

                                <a class="dropdown-item" href="/projet/login/index"><i
                                        class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>Login</a>

                                <div class="dropdown-divider"></div>
                                <g:form class="dropdown-item" controller="logout">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    <g:submitButton name="Submit" value="Logout"/>
                                </g:form>
                            </div>
                    </li>

                </ul>

            </nav>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">

                <g:layoutBody/>

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <footer class="sticky-footer bg-white">
            <div class="container my-auto">
                <div class="copyright text-center my-auto">
                    <span>Copyright &copy; Your Website 2020</span>
                </div>
            </div>
        </footer>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span>
                </button>
            </div>

            <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>

            <div class="modal-footer">
                <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                <a class="btn btn-primary" href="login.html">Logout</a>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap core JavaScript-->
<asset:javascript src="jquery.min.js"/>
<asset:javascript src="bootstrap.bundle.min.js"/>

<!-- Core plugin JavaScript-->
<asset:javascript src="query.easing.min.js"/>

<!-- Custom scripts for all pages-->
<asset:javascript src="sb-admin-2.js"/></script>

<asset:javascript src="Chart.min.js"/>

<asset:javascript src="chart-area-demo.js"/>
</body>

</html>
