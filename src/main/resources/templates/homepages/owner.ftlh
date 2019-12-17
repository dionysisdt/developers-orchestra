<#import "/spring.ftl" as spring>

<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

    <h2> <@spring.message "welcome.title"/> ${username!"Guest"}</h2>
    <div class="flex-grow-1">
        <div class="content-cnt">
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
