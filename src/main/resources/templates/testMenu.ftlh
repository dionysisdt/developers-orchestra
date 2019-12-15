<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Project</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="/css/dashboard.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
    <link rel="stylesheet" type="text/css" href="/css/side.css">
</head>

<body>

<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">

    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">
        <span>Developer Orchestra</span>
    </a>

</nav>


<div class="d-flex">
    <div class="main-menu-cnt position-relative">
        <nav class="main-menu">
            <ul>
                <li>
                    <a href="http://justinfarrow.com">
                        <i class="fa fa-home fa-2x"></i>
                        <span class="nav-text">Dashboard</span>
                    </a>
                </li>

                <li class="has-subnav">
                    <a class="nav-link active" href="./AdminHome.html">
                        <i class="fa fa-laptop fa-2x"></i>
                        <span class="nav-text">
                            <span data-feather="truck"></span> Home</span>
                    </a>
                </li>

                <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-list fa-2x"></i>
                        <span class="nav-text">Forms</span>
                    </a>
                </li>

                <li class="has-subnav">
                    <a href="#">
                        <i class="fa fa-folder-open fa-2x"></i>
                        <span class="nav-text">Pages</span>
                    </a>
                </li>

                <li>
                    <a href="#">
                        <i class="fa fa-bar-chart-o fa-2x"></i>
                        <span class="nav-text">Graphs and Statistics</span>
                    </a>
                </li>

            </ul>

            <ul class="logout">
                <li>
                    <a href="#">
                        <i class="fa fa-power-off fa-2x"></i>
                        <span class="nav-text">Logout</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    <div class="flex-grow-1">
        <div class="content-cnt">
            <h1 class="h2">Dashboard</h1>
            <div class="position-relative">
                <canvas class="my-4 w-100" id="myChart" width="900" height="380"></canvas>
            </div>
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
        </div>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
<script>window.jQuery || document.write('<script src="js/jquery.slim.min.js"><\/script>')</script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<script src="/js/dashboard.js"></script>
<script src="/js/side.js"></script>
</body>
</html>
