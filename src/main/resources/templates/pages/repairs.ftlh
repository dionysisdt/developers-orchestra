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
            <h2>Repairs</h2>
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
                                <td>${repair.repairID}</td>
                                <td>${repair.date}</td>
                                <td>${repair.repairStatus}</td>
                                <td>${repair.repairType}</td>
                                <td>${repair.cost}</td>
                                <td>${repair.repairAddress}</td>
                                <td>${repair.owner.taxID}</td>
                                <td>${repair.description}</td>
                                <td class="text-center">
                                    <a href="/admin/repair/${repair.repairID}/edit" title="Edit Repair">
                                        <span data-feather="edit-3"></span>
                                    </a>
                                </td>
                                <td class="text-center">
                                    <button class="btn btn-link" data-toggle="modal" data-target="#modal"
                                            data-id="${repair.repairID}">
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
</div>

<#include "../partials/scripts.ftlh">
<script src="/js/main.js"></script>
</body>

</html>