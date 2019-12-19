<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developers Orchestra</title>
</head>

<body>
<#include "../partials/nav.ftlh">

<div class="d-flex">
    <#include "../partials/sidebar.ftlh">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <form class="form-inline" action="/admin/owner/search" name="searchOwnerForm" method="POST">

                <h2>Search Owner</h2>
                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="at-sign"></span></div>
                    </div>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                </div>

                <label class="sr-only" for="inlineFormInputName2">TaxID</label>
                <input type="text" class="form-control mb-2 mr-sm-2" id="taxID" name="taxID" placeholder="TaxID">

                <button type="Submit" class="btn btn-primary mb-2">Search</button>

            </form>
        </div>
    </div>
    </div>

<#include "../partials/scripts.ftlh">
</body>
</html>
