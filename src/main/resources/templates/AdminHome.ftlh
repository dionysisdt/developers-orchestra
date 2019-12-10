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
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">

    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">
        <span>Company name</span>
    </a>

    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">

            <a class="nav-link" href="./login.html">Logout</a>

        </li>
    </ul>
</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">

                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="./AdminHome.flth">
                            <span data-feather="home"></span>
                            Home <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./EditProperty.html">
                            <span data-feather="codesandbox"></span>
                            Properties
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./CreateProperty.html">
                            <span data-feather="plus-square"></span>
                            Create Property
                        </a>
                    </li>
                    <li class="nav-item" href="./index.html">
                        <a class="nav-link" href="./Owners.html">
                            <span data-feather="users"></span>
                            Property Owners
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./create-customer.html">
                            <span data-feather="user-plus"></span>
                            Create Owner
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./EditRepair.html">
                            <span data-feather="tool"></span>
                            Repairs
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./CreateRepair.html">
                            <span data-feather="plus-square"></span>
                            Create Repair
                        </a>
                    </li>

                </ul>


                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>USER</span>
                    <a class="d-flex align-items-center text-muted" href="#">
                        <span data-feather="user"></span>
                    </a>
                </h6>


                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <span data-feather="log-out"></span>
                            Logout
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

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
</body>
</html>
