<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

                </ul>

                <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
                    <span>USER</span>
                    <a class="d-flex align-items-center text-muted" href="#">
                        <span data-feather="user"></span>
                    </a>
                </h6>

                <ul class="nav flex-column mb-2">
                    <li class="nav-item">
                        <a class="nav-link" href="./login.html">
                            <span data-feather="log-out"></span> Logout
                        </a>
                    </li>
                </ul>
            </div>
        </nav>
    </div>
    <div class="w3-row-padding">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 py-2 px-2">

            <h2>Create Repair</h2>
            <div class="table-responsive px-2 py-2">
                <form action="/repairs/create" name="repairsForm" method="POST">
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 py-2 px-2">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <div class="w3-row-padding">
                <h2>Create Repair</h2>
                <div class="table-responsive px-2 py-2">
                    <form class="needs-validation" novalidate>

                    <label for="date">Date</label>
                        <div class="input-group mb-2 mr-sm-2">
                            <div class="input-group-prepend">
                                <div class="input-group-text"><span data-feather="calendar"></span></div>
                            </div>
                            <@spring.bind "repairsForm.date"/>
                            <input type="date" class="form-control" id="date" name="date" placeholder="Date" required>
                            <#list spring.status.errorMessages as error>
                                <span>${error}</span>
                            </#list>
                        </div>

                    <label for="repairStatus">Repair Status</label>
                    <@spring.bind "repairsForm.repairStatus"/>
                    <select class="custom-select" id="repairStatus" name="repairStatus" required>
                        <option selected disabled value="">Choose...</option>
                        <#if repairStatus??>
                            <#list repairStatus as repairStatus>
                                <option value="${repairStatus}">${repairStatus}</option>
                            </#list>
                        </#if>
                    </select>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="repairType">Type of repair</label>
                    <@spring.bind "repairsForm.repairType"/>
                    <select class="custom-select" id="repairType" name="repairType" required>
                        <option selected disabled value="">Choose...</option>
                        <#if repairTypes??>
                            <#list repairTypes as repairType>
                                <option value="${repairType}">${repairType}</option>
                            </#list>
                        </#if>
                    </select>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="cost">Cost</label>
                    <@spring.bind "repairsForm.cost"/>
                    <input type="text" class="form-control" id="cost" name="cost" placeholder="Cost" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="repairAddress">Repair Address</label>
                    <@spring.bind "repairsForm.repairAddress"/>
                    <input type="text" class="form-control" id="repairAddress" name="repairAddress" placeholder="Address" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="owner">Owner's TaxID</label>
                    <@spring.bind "repairsForm.ownerTaxId"/>
                    <input type="text" class="form-control" id="owner" name="ownerTaxId" placeholder="Owner's TaxID" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <div class="mb-3">
                        <label for="description">Description</label>
                        <@spring.bind "repairsForm.description"/>
                        <textarea type="text" class="form-control" id="description" name="description" placeholder="Description" required></textarea>
                        <#list spring.status.errorMessages as error>
                            <span>${error}</span>
                        </#list>
                    </div>

                    <button class="btn btn-primary" type="submit">Create Repair</button>
                </form>
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