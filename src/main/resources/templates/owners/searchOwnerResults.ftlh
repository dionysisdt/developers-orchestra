<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <form class="form-inline">

                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="at-sign"></span></div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Email">
                </div>

                <label class="sr-only" for="inlineFormInputName2">social security number</label>
                <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="social security number">

                <button type="Search" class="btn btn-primary mb-2">Search</button>

            </form>

            <h2>Results</h2>

            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Social security number</th>
                        <th>First name</th>
                        <th>Last name</th>
                        <th>Address</th>
                        <th>Email</th>
                        <th>Phone number</th>
                        <th>Property</th>
                        <th class="text-center">Edit</th>
                        <th class="text-center">Remove</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><a href="./edit-customer.html" title="Edit Customer">#01</a></td>
                        <td>123456789</td>
                        <td>John</td>
                        <td>Smith</td>
                        <td>1234 Main St, Athens, Greece</td>
                        <td>johnsmith@gmail.com</td>
                        <td>6999999999</td>
                        <td>Detached house</td>
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



                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
                    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
                    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
                    <script>
                        feather.replace();
                    </script>
                    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
                    <script>window.jQuery || document.write('<script src="static/js/jquery.slim.min.js"><\/script>')</script>
                    <script src="static/js/bootstrap.bundle.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
                    <script src="static/js/dashboard.js"></script></body>
</body>
</html>