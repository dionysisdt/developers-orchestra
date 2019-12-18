<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developers Orchestra</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
</head>

<body>
<#include "../partials/sidebar.ftlh">

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <form class="form-inline" action="/admin/repair/search" name="searchRepairForm" method="POST">
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

                <label class="sr-only" for="inlineFormInputName2">TaxID</label>
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
                        <th>Owner's TaxID</th>
                        <th>Description</th>
                        <th class="text-center">Edit</th>
                        <th class="text-center">Remove</th>
                    </tr>
                    </thead>

                    <tbody>
                    <#if repairs??>
                    <#list repairs as repair>
                    <tr data-id="${repair.repairID}">
                        <td><a href="/admin/repair/${repair.repairID}/edit" title="Edit Repair">${repair.repairID}</a></td>
                        <td>${repair.date}</td>
                        <td>${repair.repairStatus}</td>
                        <td>${repair.repairType}</td>
                        <td>${repair.cost}</td>
                        <td>${repair.repairAddress}</td>
                        <td>${repair.owner.taxID}</td>
                        <td>${repair.description}</td>
                        <td class="text-center"><a class="btn btn-link"
                                                   href="/admin/repair/${repair.repairID}/edit"><span
                                        data-feather="tool"></span></a></td>
                        <td class="text-center"> <button class="btn btn-link" data-toggle="modal" data-target="#modal" data-id="${repair.repairID}">
                                <span data-feather="x"></span>
                            </button>

                        </td>
                    </tr>
                    </#list>
                    </#if>
                    </tbody>

                </table>

                <div id="modal" class="modal" tabindex="-1" role="dialog">
                    <div class="modal-dialog" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Owner</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>re you sure you want to delete the record?</p>
                            </div>
                            <div class="modal-footer">
                                <form method="post" id="deleteRepairForm">
                                    <button type="submit" class="btn btn-danger">Delete</button>
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>

<#include "../partials/scripts.ftlh">
<script src="/js/main.js"></script>
</body>
</html>