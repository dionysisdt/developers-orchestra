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
                    <#list repairs as repair>
                        <tr>
                            <td><a href="/repairs/${repair.repairID}/edit" title="Edit Customer">#${repair.repairID}</a></td>
                            <td>${repair.date}</td>
                            <td>${repair.repairStatus}</td>
                            <td>${repair.repairType}</td>
                            <td>${repair.cost}</td>
                            <td>${repair.owner.firstName} ${repair.owner.lastName}</td>
                            <td>${repair.description}</td>
                            <td class="text-center">
                                <a href="/repairs/${repair.repairID}/edit" title="Edit Customer">
                                    <span data-feather="edit-3"></span>
                                </a>
                            </td>
                            <td class="text-center">
                                <a href="#" title="Remove Customer">
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
</div>
<#include "../partials/scripts.ftlh">
</body>
</html>
