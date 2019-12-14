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
    <link rel="icon" type="image/png" href="static/images/icons/favicon.ico" />
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
                <form class="needs-validation" novalidate>

                    <label for="datefield">Date</label>
                    <div class="input-group mb-2 mr-sm-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span data-feather="calendar"></span></div>
                        </div>
                        <input type="date" class="form-control" id="datefield" required>
                    </div>

                    <label for="validationServer02">Status</label>
                    <select class="custom-select" id="validationServer02" required>
                        <option selected disabled value="">Choose...</option>
                        <option>Pending</option>
                        <option>In progress</option>
                        <option>Finished</option>
                    </select>

                    <label for="validationServer03">Type of repair</label>
                    <select class="custom-select" id="validationServer03" required>
                        <option selected disabled value="">Choose...</option>
                        <option>Painting</option>
                        <option>Insulation</option>
                        <option>Plumbing works</option>
                        <option>Electrical works</option>
                    </select>

                    <label for="validationServer04">Cost</label>
                    <input type="text" class="form-control" id="validationServer04" placeholder="Cost" required>

                    <label for="validationServer05">Address</label>
                    <input type="text" class="form-control" id="validationServer05" placeholder="Address" required>

                    <label for="validationServer06">Owner's social security number</label>
                    <input type="text" class="form-control" id="validationServer06" placeholder="Owner's social security number" required>

                    <div class="mb-3">
                        <label for="validationTextarea">Description</label>
                        <textarea class="form-control" id="validationTextarea" placeholder="Description" required></textarea>
                    </div>

                    <button class="btn btn-primary" type="submit">Create</button>
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