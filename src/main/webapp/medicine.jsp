<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />

  <title>Medicine</title>

  <!-- GOOGLE FONTS -->
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500|Poppins:400,500,600,700|Roboto:400,500" rel="stylesheet"/>
  <link href="https://cdn.materialdesignicons.com/3.0.39/css/materialdesignicons.min.css" rel="stylesheet" />

  <!-- PLUGINS CSS STYLE -->
  <link href="assets/plugins/toaster/toastr.min.css" rel="stylesheet" />
  <link href="assets/plugins/nprogress/nprogress.css" rel="stylesheet" />
  <link href="assets/plugins/flag-icons/css/flag-icon.min.css" rel="stylesheet"/>
  <link href="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.css" rel="stylesheet" />
  <link href="assets/plugins/ladda/ladda.min.css" rel="stylesheet" />
  <link href="assets/plugins/select2/css/select2.min.css" rel="stylesheet" />
  <link href="assets/plugins/daterangepicker/daterangepicker.css" rel="stylesheet" />

  <!-- SLEEK CSS -->
  <link id="sleek-css" rel="stylesheet" href="assets/css/sleek.css" />



  <!-- FAVICON -->
  <link href="assets/img/favicon.png" rel="shortcut icon" />

  <!--
    HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries
  -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="assets/plugins/nprogress/nprogress.js"></script>
</head>


<body class="header-fixed sidebar-fixed sidebar-light header-light" id="body">
<script>
  NProgress.configure({ showSpinner: false });
  NProgress.start();
</script>

<div class="mobile-sticky-body-overlay"></div>

<div class="wrapper">

  <!--
====================================
——— LEFT SIDEBAR WITH FOOTER
=====================================
-->
  <aside class="left-sidebar bg-sidebar">
    <div id="sidebar" class="sidebar">
      <!-- Aplication Brand -->
      <div class="app-brand">
        <a href="/index.html">
          <svg
                  class="brand-icon"
                  xmlns="http://www.w3.org/2000/svg"
                  preserveAspectRatio="xMidYMid"
                  width="30"
                  height="33"
                  viewBox="0 0 30 33"
          >
            <g fill="none" fill-rule="evenodd">
              <path
                      class="logo-fill-blue"
                      fill="#7DBCFF"
                      d="M0 4v25l8 4V0zM22 4v25l8 4V0z"
              />
              <path class="logo-fill-white" fill="#FFF" d="M11 4v25l8 4V0z" />
            </g>
          </svg>
          <span class="brand-name">NFD</span>
        </a>
      </div>
      <!-- begin sidebar scrollbar -->
      <div class="sidebar-scrollbar">

        <!-- sidebar menu -->
        <ul class="nav sidebar-inner" id="sidebar-menu">



          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-home"></i>
              <span class="nav-text">HOME</span>
            </a>
          </li>
          <li  class="has-sub active shadow-sm" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/medicine'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-medical-bag"></i>
              <span class="nav-text">MEDICINE</span>
            </a>
          </li>
          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/food'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-food"></i>
              <span class="nav-text">FOOD</span>
            </a>
          </li>
          <li  class="has-sub  expand" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/drinks'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-food-fork-drink"></i>
              <span class="nav-text">DRINKS</span>
            </a>
          </li>
          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/researches'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-history"></i>
              <span class="nav-text">RESEARCH HISTORY</span>
            </a>
          </li>
          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/allergies'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-history"></i>
              <span class="nav-text">YOUR ALLERGIES</span>
            </a>
          </li>
          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/forums'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-forum-outline"></i>
              <span class="nav-text">FORUMS</span>
            </a>
          </li>
          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/aboutus'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-information-outline"></i>
              <span class="nav-text">ABOUT US</span>
            </a>
          </li>
          <li  class="has-sub" >
            <a class="sidenav-item-link" onclick="location.href='${contextPath}/login?logout=true'" data-toggle="collapse" data-target="#dashboard"
               aria-expanded="false" aria-controls="dashboard">
              <i class="mdi mdi-logout"></i>
              <span class="nav-text">LOG OUT</span>
            </a>
          </li>
        </ul>

      </div>

    </div>
  </aside>



  <div class="page-wrapper">
    <!-- Header -->
    <header class="shadow main-header" id="header">
      <nav class="navbar navbar-static-top navbar-expand-lg">
        <!-- Sidebar toggle button -->
        <button id="sidebar-toggler" class="sidebar-toggle">
          <span class="sr-only">Toggle navigation</span>
        </button>
        <!-- search form -->
        <div class="search-form d-none d-lg-inline-block">
          <div class="input-group">
            <button type="button" name="search" id="search-btn" class="btn btn-flat">
              <i class="mdi mdi-magnify"></i>
            </button>
            <input type="text" name="query" id="search-input" class="form-control" placeholder="'button', 'chart' etc."
                   autofocus autocomplete="off" />
          </div>
          <div id="search-results-container">
            <ul id="search-results"></ul>
          </div>
        </div>

        <div class="navbar-right ">
          <ul class="nav navbar-nav">
            <!-- User Account -->
            <li class="dropdown user-menu">
              <button href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
                <img src="assets/img/user/user.png" class="user-image" alt="User Image" />
                <span class="d-none d-lg-inline-block">${user.getName()}</span>
              </button>
              <ul class="dropdown-menu dropdown-menu-right">
                <!-- User image -->
                <li class="dropdown-header">
                  <img src="assets/img/user/user.png" class="img-circle" alt="User Image" />
                  <div class="d-inline-block">
                    ${user.getName()} <small class="pt-1">${user.getEmail()}</small>
                  </div>
                </li>

                <li>
                  <a href="${contextPath}/profile">
                    <i class="mdi mdi-account"></i> My Profile
                  </a>
                </li>

                <li class="dropdown-footer">
                  <a href="${contextPath}/login?logout=true"> <i class="mdi mdi-logout"></i> Log Out </a>
                </li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>


    </header>

    <div class="content-wrapper">
      <div class="content">							<div class="breadcrumb-wrapper">
        <h1>Test Your Medicines</h1>

        <nav aria-label="breadcrumb">
          <ol class="breadcrumb p-0">
            <li class="breadcrumb-item">
              <a href="index.html">
                <span class="mdi mdi-home"></span>
              </a>
            </li>
            <li class="breadcrumb-item">
              Medicines
            </li>
            <li class="breadcrumb-item" aria-current="page">Test</li>
          </ol>
        </nav>

      </div>

        <div class="card card-default">
          <div class="card-header card-header-border-bottom">
            <h2>Choose Your Medicine</h2>
          </div>
          <div class="card-body">
            <div class="row">
              <div class="col-12">
                <p class="mb-5">Please enter the Medicine you want to test.</p>

                <div class="col-10 mx-auto accordion-shadow">
                  <div class="card bg-light mx-auto">
                    <div class="card-body">
                      <form class="horizontal-form" method="post" action="${contextPath}/medicinetest">
                        <div class="form-group row">
                          <div class="col-12 col-md-3 text-right">
                            <label for="text">Medicine To Test</label>
                          </div>
                          <div class="col-12 col-md-9 accordion-shadow">
                            <input type="text" id="text" class="form-control" name="medicinetest" placeholder="Enter medicine">
                          </div>
                        </div>

                        <div class="form-footer pt-5 border-top text-center ">
                          <button type="submit" class="shadow btn btn-primary btn-default">Submit To Test</button>
                        </div>
                      </form>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>




    </div>

    <footer class="footer mt-auto">
      <div class="copyright bg-white">
        <p>
          &copy; <span id="copy-year">2019</span> Copyright Nutrition Fact Detecor.
        </p>
      </div>
      <script>
        var d = new Date();
        var year = d.getFullYear();
        document.getElementById("copy-year").innerHTML = year;
      </script>
    </footer>

  </div>
</div>


<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDCn8TFXGg17HAUcNpkwtxxyT9Io9B_NcM" defer></script>
<script src="assets/plugins/jquery/jquery.min.js"></script>
<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/plugins/toaster/toastr.min.js"></script>
<script src="assets/plugins/slimscrollbar/jquery.slimscroll.min.js"></script>
<script src="assets/plugins/charts/Chart.min.js"></script>
<script src="assets/plugins/ladda/spin.min.js"></script>
<script src="assets/plugins/ladda/ladda.min.js"></script>
<script src="assets/plugins/jquery-mask-input/jquery.mask.min.js"></script>
<script src="assets/plugins/select2/js/select2.min.js"></script>
<script src="assets/plugins/jvectormap/jquery-jvectormap-2.0.3.min.js"></script>
<script src="assets/plugins/jvectormap/jquery-jvectormap-world-mill.js"></script>
<script src="assets/plugins/daterangepicker/moment.min.js"></script>
<script src="assets/plugins/daterangepicker/daterangepicker.js"></script>
<script src="assets/plugins/jekyll-search.min.js"></script>
<script src="assets/js/sleek.js"></script>
<script src="assets/js/chart.js"></script>
<script src="assets/js/date-range.js"></script>
<script src="assets/js/map.js"></script>
<script src="assets/js/custom.js"></script>




</body>
</html>

