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

            <h2>Results</h2>

            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>Id</th>
                        <th>TaxID</th>
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
                    <#if owners??>
                        <#list owners as owner>
                            <tr data-id="${owner.ownerID}">
                                <td><a href="/admin/${owner.ownerID}/edit">#${owner.ownerID}</a></td>
                                <td>${owner.taxID}</td>
                                <td>${owner.firstName}</td>
                                <td>${owner.lastName}</td>
                                <td>${owner.ownerAddress}</td>
                                <td>${owner.email}</td>
                                <td>${owner.phoneNumber}</td>
                                <td>${owner.propertyType}</td>
                                <td class="text-center"><a class="btn btn-link"
                                                           href="/admin/owner/${owner.ownerID}/edit"><span
                                                data-feather="tool"></span></a></td>
                                <td class="text-center">
                                    <button class="btn btn-link" data-toggle="modal" data-target="#modal"
                                            data-id="${owner.ownerID}">
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
                                <form method="post" id="deleteOwnerForm">
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
</div>

<#include "../partials/scripts.ftlh">
<script src="/js/main.js"></script>
</body>
</html>