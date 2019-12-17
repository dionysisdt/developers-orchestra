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
    <div class="w3-row-padding">
        <h2>Create Owner</h2>
        <div class="flex-grow-1">
            <div class="content-cnt">
                <div class="table-responsive">
                    <form action="/admin/edit" method="POST">

                        <input type="hidden" name="ownerID" value="${owner.ownerID}">

                        <label for="taxID">Social security number </label>
                        <input type="text" class="form-control" id="taxID" name="taxID" value="${owner.taxID}">

                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="firstName">First name</label>
                                <input type="text" class="form-control" id="firstName" name="firstName"
                                       value="${owner.firstName}">
                            </div>
                            <div class="col-md-6 mb-3">
                                <label for="lastName">Last name</label>
                                <input type="text" class="form-control" id="lastName" name="lastName"
                                       value="${owner.lastName}">
                            </div>
                        </div>

                        <label for="ownerAddress">Address</label>
                        <input type="text" class="form-control" id="ownerAddress" name="ownerAddress"
                               value="${owner.ownerAddress}">

                        <label for="phoneNumber">PhoneNumber</label>
                        <input type="text" class="form-control" id="phoneNumber" name="phoneNumber"
                               value="${owner.phoneNumber}">

                        <label for="email">Email</label>
                        <input type="email" class="form-control" id="email" name="email" value="${owner.email}">

                        <label for="password">Password</label>
                        <input type="password" class="form-control" id="password" name="password"
                               value="${owner.password}">

                        <label for="propertyType">Property type</label>
                        <select class="custom-select" id="propertyType" name="propertyType">
                            <#if propertyTypes??>
                                <#list propertyTypes as propertyType>
                                    <option value="${propertyType}"<#if owner.propertyType == propertyType> selected</#if>>${propertyType}</option>
                                </#list>
                            </#if>
                        </select>

                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="invalidCheck3" required>
                                <label class="form-check-label" for="invalidCheck3">
                                    Agree to terms and conditions
                                </label>
                            </div>
                        </div>
                        <button class="btn btn-primary" type="submit">Update Owner</button>
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