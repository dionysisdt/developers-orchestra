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
        <div class="flex-grow-1">
            <div class="content-cnt">
                <div class="w3-row-padding">
                    <h2>Edit Repair</h2>
                    <div class="table-responsive">
                        <form action="/admin/repair/edit" method="POST">
                            <label for="datepicker">Date</label>
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><span data-feather="calendar"></span></span>
                                </div>
                                <input type="text" class="form-control" id="datepicker" name="publicationDate" value="${repair.date}">
                            </div>

                            <label for="repairStatus">Repair Status</label>
                            <select class="custom-select" id="repairStatus" name="repairStatus">
                                <#if repairStatus??>
                                    <#list repairStatus as repairStatus>
                                        <option value="${repairStatus}"<#if repair.repairStatus == repairStatus> selected</#if>>${repairStatus}</option>
                                    </#list>
                                </#if>
                            </select>

                            <label for="repairType">Repair Type</label>
                            <select class="custom-select" id="repairType" name="repairType">
                                <#if repairTypes??>
                                    <#list repairTypes as repairType>
                                        <option value="${repairType}"<#if repair.repairType == repairType> selected</#if>>${repairType}</option>
                                    </#list>
                                </#if>
                            </select>

                            <label for="cost">Cost</label>
                            <input type="text" class="form-control" id="cost" name="cost" value="${repair.cost}">

                            <label for="repairAddress">Repair Address</label>
                            <input type="text" class="form-control" id="repairAddress" name="repairAddress" value="${repair.repairAddress}">

                            <label for="owner">Owner's TaxID</label>
                            <input type="text" class="form-control" id="owner" name="owner" value="${repair.owner.taxID}">

                            <label for="description">Description</label>
                            <input type="text" class="form-control" id="description" name="description" value="${repair.description}">

                            <button class="btn btn-primary" type="submit">Update Repair</button>
                        </form>
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
</body>
</html>