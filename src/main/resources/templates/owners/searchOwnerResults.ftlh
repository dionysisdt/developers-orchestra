<#import "/spring.ftl" as spring />
<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
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
                        <a class="nav-link" href="./Owners.html">
                            <span data-feather="users"></span>
                            Property Owners
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./SearchOwner.html">
                            <span data-feather="search"></span>
                            Search for owners <span class="sr-only">(current)</span>
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
</div>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <form class="form-inline">

                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="at-sign"></span></div>
                    </div>
                    <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Email">
                </div>

                <label class="sr-only" for="inlineFormInputName2">social security number</label>
                <input type="text" class="form-control mb-2 mr-sm-2" id="inlineFormInputName2" placeholder="social security number">

                <button type="Search" class="btn btn-primary mb-2">Search</button>

            </form>

            <h2>Results</h2>

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
                            <td><a href="/admin/${owner.ownerID}/edit">#${owner.ownerID}</a></td>
                            <td>${owner.taxID}</td>
                            <td>${owner.firstName}</td>
                            <td>${owner.lastName}</td>
                            <td>${owner.ownerAddress}</td>
                            <td>${owner.email}</td>
                            <td>${owner.phoneNumber}</td>
                            <td>${owner.propertyType}</td>
                            <td class="text-center"><a class="btn btn-link" href="/admin/${owner.ownerID}/edit"><span data-feather="tool"></span></a></td>
                            <td class="text-center">

                                <button
                                        class="btn btn-link"
                                        data-toggle="modal"
                                        data-target="#modal"
                                        data-id="${owner.ownerID}"
                                >
                                    <span data-feather="x"></span>
                                </button>

                            </td>
                        </tr>
                    </#list>
                    </#if>
                    </tbody>

                </table>

                <div class="modal fade" id="confirm-delete" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                Confirm Delete
                            </div>
                            <div class="modal-body">
                                Are you sure you want to delete the record?
                            </div>
                            <div class="modal-footer">
                                <form method="post" id="deleteForm">
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

                        $('#confirm-delete').on('show.bs.modal', function(e) {
                            $(this).find('.btn-ok').attr('href', $(e.relatedTarget).data('href'));
                        });

                    </script>
                    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
                    <script>window.jQuery || document.write('<script src="static/js/jquery.slim.min.js"><\/script>')</script>
                    <script src="static/js/bootstrap.bundle.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
                    <script src="static/js/dashboard.js"></script>
</body>
</html>