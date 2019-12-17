<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
</head>

<body>
<#include "../partials/sidebar.ftlh">

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <form class="form-inline">
                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="calendar"></span></div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="01/01/2019">
                </div>
                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="calendar"></span></div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="05/01/2019">
                </div>

                <label class="sr-only" for="inlineFormInputName2">social security number</label>
                <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="123456789">

                <button type="Search" class="btn btn-primary mb-2">Search</button>

            </form>

            <h2>Results</h2>

            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Type</th>
                        <th>Cost</th>
                        <th>Address</th>
                        <th>Owner's social security number</th>
                        <th>Description</th>
                        <th class="text-center">Edit</th>
                        <th class="text-center">Remove</th>
                    </tr>
                    </thead>

                    <tbody>
                    <#list repairs as repair>
                    <tr>
                        <td><a href="./edit-customer.html" title="Edit Customer">${repair.repairID}</a></td>
                        <td>${repair.date}</td>
                        <td>${repair.repairStatus}</td>
                        <td>${repair.repairType}</td>
                        <td>${repair.cost}</td>
                        <td>${repair.repairAddress}</td>
                        <td>${repair.owner.taxID}</td>
                        <td>${repair.description}</td>
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
                    </#list>
                    </tbody>

                </table>
            </div>
        </div>
    </div>
</main>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
</body>
</html>