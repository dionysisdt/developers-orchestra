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
            <h2>Create Owner</h2>
            <div class="table-responsive px-2 py-2">
                <form action="/admin/owner/create" name="ownersForm" method="POST">

                    <label for="taxID">TaxID</label>
                    <@spring.bind "ownersForm.taxID"/>
                    <input type="text" class="form-control" id="taxID" name="taxID" placeholder="TaxID" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">First name</label>
                            <@spring.bind "ownersForm.firstName"/>
                            <input type="text" class="form-control" id="firstName" name="firstName"
                                   placeholder="FirstName"
                                   required>
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Last name</label>
                            <@spring.bind "ownersForm.lastName"/>
                            <input type="text" class="form-control" id="lastName" name="lastName"
                                   placeholder="LastName"
                                   required>
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>
                        </div>
                    </div>

                    <label for="ownerAddress">Address</label>
                    <@spring.bind "ownersForm.ownerAddress"/>
                    <input type="text" class="form-control" id="ownerAddress" name="ownerAddress"
                           placeholder="Address"
                           required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="phoneNumber">PhoneNumber</label>
                    <@spring.bind "ownersForm.phoneNumber"/>
                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber"
                           placeholder="PhoneNumber"
                           required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="email">Email</label>
                    <@spring.bind "ownersForm.email"/>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="password">Password</label>
                    <@spring.bind "ownersForm.password"/>
                    <input type="password" class="form-control" id="password" name="password" placeholder="Password"
                           required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <div class="mb-3">
                        <label for="propertyType">Property type</label>
                        <@spring.bind "ownersForm.propertyType"/>
                        <select class="custom-select" id="propertyType" name="propertyType" required>
                            <#if propertyTypes??>
                                <#list propertyTypes as propertyType>
                                    <option value="${propertyType}">${propertyType}</option>
                                </#list>
                            </#if>
                        </select>
                        <#list spring.status.errorMessages as error>
                            <span>${error}</span>
                        </#list>
                    </div>

                    <button class="btn btn-primary" type="submit">Create Owner</button>
                </form>
            </div>
        </div>
    </div>
</div>

<#include "../partials/scripts.ftlh">
<script>
    feather.replace();

    (function () {
        'use strict';
        window.addEventListener('load', function () {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function (form) {
                form.addEventListener('submit', function (event) {
                    if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                    }
                    form.classList.add('was-validated');
                }, false);
            });
        }, false);
    })();
</script>
</body>

</html>