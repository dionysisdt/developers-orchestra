<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

    <div class="flex-grow-1">
        <div class="content-cnt">

            <form class="form-inline" action="/admin/search/repairs" name="searchRepairForm" method="POST">
                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="calendar"></span></div>
                    </div>
                    <input type="date" class="form-control" id="date" name="date" placeholder="Date">
                </div>
                <!--
                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="calendar"></span></div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="To">
                </div>
                -->

                <label class="sr-only" for="inlineFormInputName2">TaxID</label>
                <input type="text" class="form-control mb-2 mr-sm-2" id="taxID" name="taxID" placeholder="TaxID">

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
                        <th>Owner</th>
                        <th>Description</th>
                        <th class="text-center">Edit</th>
                        <th class="text-center">Remove</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</main>

<#include "../partials/scripts.ftlh">
</body>
</html>