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
                                <button class="btn btn-link" data-toggle="modal" data-target="#modal" data-id="${repair.repairID}">
                                    <span data-feather="x"></span>
                                </button>
                            </td>
                        </tr>
                    </#list>
                    </#if>
                    </tbody>
                </table>
            </div>

            <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            Confirm Delete
                        </div>
                        <div class="modal-body">
                            Are you sure you want to delete the record?
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                            <a class="btn btn-danger btn-ok text-white">Delete</a>
                        </div>
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

    $('#confirm-delete').on('show.bs.modal', function (e) {
        $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
    });
</script>
<script src="/js/main.js"></script>
</body>

</html>