<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="icon" href="https://getbootstrap.com/docs/4.0/assets/img/favicons/favicon.ico">
    <meta color="green" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Developer Orchestra</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/4.0/examples/dashboard/dashboard.css" rel="stylesheet">
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
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
                            <span data-feather="truck"></span>
                            Home
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./Owners.html">
                            <span data-feather="users"></span>
                            Property Owners <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./SearchOwner.html">
                            <span data-feather="search"></span>
                            Search for owners
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./CreateOwner.html">
                            <span data-feather="user-plus"></span>
                            Create Owner
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Repairs.html">
                            <span data-feather="tool"></span>
                            Repairs
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
                            <span data-feather="log-out"></span>
                            Logout
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

    </div>
    </nav>
    <div class="w3-row-padding">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <h2>Create Owner</h2>
            <div class="table-responsive">
                <form action="/admin/edit" method="POST">

                    <input type="hidden" name="ownerID" value="${owner.ownerID}">

                    <label for="taxID">Social security number </label>
                    <input type="text" class="form-control" id="taxID" name="taxID" value="${owner.taxID}">

                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="firstName">First name</label>
                            <input type="text" class="form-control" id="firstName" name="firstName" value="${owner.firstName}">
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="lastName">Last name</label>
                            <input type="text" class="form-control" id="lastName" name="lastName" value="${owner.lastName}">
                        </div>
                    </div>

                    <label for="ownerAddress">Address</label>
                    <input type="text" class="form-control" id="ownerAddress" name="ownerAddress" value="${owner.ownerAddress}">

                    <label for="phoneNumber">PhoneNumber</label>
                    <input type="text" class="form-control" id="phoneNumber" name="phoneNumber" value="${owner.phoneNumber}">

                    <label for="email">Email</label>
                    <input type="email" class="form-control" id="email" name="email" value="${owner.email}">

                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" value="${owner.password}">

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

        </main>
    </div>
</div>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
</body>
</html>