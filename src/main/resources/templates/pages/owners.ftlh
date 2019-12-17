<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html lang="en">

<head>
    <#include "../partials/head.ftlh">
    <title>Developers Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <h2>Owners</h2>

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
                            <td>${owner.ownerID}</td>
                            <td>${owner.taxID}</td>
                            <td>${owner.firstName}</td>
                            <td>${owner.lastName}</td>
                            <td>${owner.ownerAddress}</td>
                            <td>${owner.email}</td>
                            <td>${owner.phoneNumber}</td>
                            <td>${owner.propertyType}</td>
                            <td class="text-center">
                                <a href="/admin/owner/${owner.ownerID}/edit" title="Edit Owner">
                                    <span data-feather="edit-3"></span>
                                </a>
                            </td>
                            <td class="text-center">
                                <button class="btn btn-link" data-toggle="modal" data-target="#modal" data-id="${owner.ownerID}">
                                    <span data-feather="x"></span>
                                </button>
                            </td>
                        </tr>
                    </#list>
                    </#if>
                    </tbody>
                </table>
                <div class="modal" id="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Owner</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                Are you sure you want to delete the record?
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
        </main>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
<script src="/js/main.js"></script>
</body>
</html>