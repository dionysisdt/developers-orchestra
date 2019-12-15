<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#000048">
    <title>Project</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">

    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">
        <span>Developer Orchestra</span>
    </a>

</nav>

<html lang="en"><head>
    <meta charset="UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="https://static.codepen.io/assets/favicon/favicon-aec34940fbc1a6e787974dcd360f2c6b63348d4b1f4e06c77743096d55480f33.ico">
    <link rel="mask-icon" type="" href="https://static.codepen.io/assets/favicon/logo-pin-8f3771b1072e3c38bd662872f6b673a722f4b3ca2421637d5596661b4e2132cc.svg" color="#111">
    <title>CodePen - Sidebar Menu Hover Show/Hide CSS</title>
    <style>
        @import url(//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css);

        @import url(https://fonts.googleapis.com/css?family=Titillium+Web:300);
        .fa-2x {
            font-size: 2em;
        }
        .fa {
            position: relative;
            display: table-cell;
            width: 60px;
            height: 36px;
            text-align: center;
            vertical-align: middle;
            font-size:20px;
        }


        .main-menu:hover,nav.main-menu.expanded {
            width:250px;
            overflow:visible;
        }

        .main-menu {
            background:#212121;
            border-right:1px solid #e5e5e5;
            position:absolute;
            top:0;
            bottom:0;
            height:100%;
            left:0;
            width:60px;
            overflow:hidden;
            -webkit-transition:width .05s linear;
            transition:width .05s linear;
            -webkit-transform:translateZ(0) scale(1,1);
            z-index:1000;
        }

        .main-menu>ul {
            margin:7px 0;
        }

        .main-menu li {
            position:relative;
            display:block;
            width:250px;
        }

        .main-menu li>a {
            position:relative;
            display:table;
            border-collapse:collapse;
            border-spacing:0;
            color:#999;
            font-family: arial;
            font-size: 14px;
            text-decoration:none;
            -webkit-transform:translateZ(0) scale(1,1);
            -webkit-transition:all .1s linear;
            transition:all .1s linear;

        }

        .main-menu .nav-icon {
            position:relative;
            display:table-cell;
            width:60px;
            height:36px;
            text-align:center;
            vertical-align:middle;
            font-size:18px;
        }

        .main-menu .nav-text {
            position:relative;
            display:table-cell;
            vertical-align:middle;
            width:190px;
            font-family: 'Titillium Web', sans-serif;
        }

        .main-menu>ul.logout {
            position:absolute;
            left:0;
            bottom:0;
        }

        .no-touch .scrollable.hover {
            overflow-y:hidden;
        }

        .no-touch .scrollable.hover:hover {
            overflow-y:auto;
            overflow:visible;
        }

        a:hover,a:focus {
            text-decoration:none;
        }

        nav {
            -webkit-user-select:none;
            -moz-user-select:none;
            -ms-user-select:none;
            -o-user-select:none;
            user-select:none;
        }

        nav ul,nav li {
            outline:0;
            margin:0;
            padding:0;
        }
        .main-menu li:hover>a,nav.main-menu li.active>a,.dropdown-menu>li>a:hover,.dropdown-menu>li>a:focus,.dropdown-menu>.active>a,.dropdown-menu>.active>a:hover,.dropdown-menu>.active>a:focus,.no-touch .dashboard-page nav.dashboard-menu ul li:hover a,.dashboard-page nav.dashboard-menu ul li.active a {
            color:#fff;
            background-color:#5fa2db;
        }
        .area {
            float: left;
            background: #e2e2e2;
            width: 100%;
            height: 100%;
        }
        @font-face {
            font-family: 'Titillium Web';
            font-style: normal;
            font-weight: 300;
            src: local('Titillium WebLight'), local('TitilliumWeb-Light'), url(http://themes.googleusercontent.com/static/fonts/titilliumweb/v2/anMUvcNT0H1YN4FII8wpr24bNCNEoFTpS2BTjF6FB5E.woff) format('woff');
        }
    </style>
    <script>
        window.console = window.console || function(t) {};
    </script>
    <script>
        if (document.location.search.match(/type=embed/gi)) {
            window.parent.postMessage("resize", "*");
        }
    </script>
</head>
<body translate="no">



<div class="area"></div><nav class="main-menu">
    <ul>
        <li>
            <a href="http://justinfarrow.com">
                <i class="fa fa-home fa-2x"></i>
                <span class="nav-text">
Dashboard
</span>
            </a>
        </li>
        <li class="has-subnav">
            <a class="nav-link active" href="./AdminHome.html">
                <i class="fa fa-laptop fa-2x"></i>
                <span class="nav-text">
 <span data-feather="truck"></span> Home
</span>
            </a>
        </li>
        <li class="has-subnav">
            <a href="#">
                <i class="fa fa-list fa-2x"></i>
                <span class="nav-text">
Forms
</span>
            </a>
        </li>
        <li class="has-subnav">
            <a href="#">
                <i class="fa fa-folder-open fa-2x"></i>
                <span class="nav-text">
Pages
</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-bar-chart-o fa-2x"></i>
                <span class="nav-text">
Graphs and Statistics
</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-font fa-2x"></i>
                <span class="nav-text">
Quotes
</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-table fa-2x"></i>
                <span class="nav-text">
Tables
</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-map-marker fa-2x"></i>
                <span class="nav-text">
Maps
</span>
            </a>
        </li>
        <li>
            <a href="#">
                <i class="fa fa-info fa-2x"></i>
                <span class="nav-text">
Documentation
</span>
            </a>
        </li>
    </ul>
    <ul class="logout">
        <li>
            <a href="#">
                <i class="fa fa-power-off fa-2x"></i>
                <span class="nav-text">
Logout
</span>
            </a>
        </li>
    </ul>
</nav>



</div>
</div>

<canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>

<h2>Active repairs</h2>


<div class="table-responsive">
    <table class="table table-striped table-sm">
        <thead>
        <tr>
            <th>Id</th>
            <th>Date</th>
            <th>Status</th>
            <th>Type</th>
            <th>Cost</th>
            <th>Owner</th>
            <th>Description</th>
            <th class="text-center">Edit</th>
            <th class="text-center">Remove</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#01</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#02</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#03</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#04</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#05</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#06</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#07</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#08</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#09</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        <tr>
            <td><a href="./edit-customer.html" title="Edit Customer">#10</a></td>
            <td>01/01/2019</td>
            <td>In progress</td>
            <td>Painting</td>
            <td>3,000</td>
            <td>John Smith</td>
            <td>TBC with client</td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Edit Customer">
                    <span data-feather="edit-3"></span>
                </a>
            </td>
            <td class="text-center">
                <a href="./edit-customer.html" title="Remove Customer">
                    <span data-feather="trash-2"></span>
                </a>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</main>
</div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<script src="js/dashboard.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/ 1.19.0/jquery.validate.min.js"></script>
</body>
</html>
