<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>


<#include "../partials/nav.ftlh">
<div class="d-flex">
    <#include "../partials/sidebar.ftlh">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <h2> <@spring.message "welcome.title"/> ${username!"Guest"}</h2>

            <div class="table-responsive">
                <table class="table table-striped table-sm">
                    <thead>
                    <tr>
                        <th>Date</th>
                        <th>Status</th>
                        <th>Type of repair</th>
                        <th>Cost</th>
                        <th>Type of property</th>
                        <th>Description</th>
                    </tr>
                    </thead>
                    <tbody>
                    <#list repairs as repair>
                        <tr>
                            <td>${repair.date}</td>
                            <td>${repair.repairStatus}</td>
                            <td>${repair.repairType}</td>
                            <td>${repair.cost}</td>
                            <td>${repair.propertyType}</td>
                            <td>${repair.description}</td>
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