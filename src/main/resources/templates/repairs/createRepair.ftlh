<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">
    <meta name="theme-color" content="#000048">
    <title>Developer Orchestra</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico" />
</head>

<body>
<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">

    <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">
        <span>Developer Orchestra</span>
    </a>

</nav>

<div class="container-fluid">
    <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
            <div class="sidebar-sticky">

                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link" href="./AdminHome.html">
                            <span data-feather="truck"></span> Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Owners.html">
                            <span data-feather="users"></span> Property Owners
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Repairs.html">
                            <span data-feather="tool"></span> Repairs
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./SearchRepairs.html">
                            <span data-feather="tool"></span> Search repairs
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./CreateRepair.html">
                            <span data-feather="plus-square"></span> Create Repair <span class="sr-only">(current)</span>
                        </a>
                    </li>

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

                    <label for="date">Date</label>
                    <@spring.bind "repairsForm.date"/>
                    <input type="date" class="form-control" id="date" name="date" placeholder="Date" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <label for="repairStatus">Repair Status</label>
                    <@spring.bind "repairsForm.repairStatus"/>
                    <select class="custom-select" id="repairStatus" name="repairStatus" required>
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

                    <label for="description">Description</label>
                    <@spring.bind "repairsForm.description"/>
                    <input type="text" class="form-control" id="description" name="description" placeholder="Description" required>
                    <#list spring.status.errorMessages as error>
                        <span>${error}</span>
                    </#list>

                    <button class="btn btn-primary" type="submit">Create Repair</button>
                </form>
            </div>

        </main>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();

    (function() {
        'use strict';
        window.addEventListener('load', function() {
            // Fetch all the forms we want to apply custom Bootstrap validation styles to
            var forms = document.getElementsByClassName('needs-validation');
            // Loop over them and prevent submission
            var validation = Array.prototype.filter.call(forms, function(form) {
                form.addEventListener('submit', function(event) {
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