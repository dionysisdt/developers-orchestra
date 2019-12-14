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
                        <a class="nav-link" href="./SearchOwner.html">
                            <span data-feather="search"></span> Search for owners
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./CreateOwner.html">
                            <span data-feather="user-plus"></span> Create Owner <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./Repairs.html">
                            <span data-feather="tool"></span> Repairs
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

            <h2>Create Owner</h2>
            <div class="table-responsive px-2 py-2">
                <form class="needs-validation" novalidate>
                    <div class="mb-3">
                        <label for="validationServer01">Social security number </label>
                        <input type="text" class="form-control" id="validationServer01" placeholder="Social security number" required>
                        <div class="invalid-feedback">
                            Please enter your social security number
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="col-md-6 mb-3">
                            <label for="validationServer02">First name</label>
                            <input type="text" class="form-control" id="validationServer02" placeholder="First name" required>
                            <div class="invalid-feedback">
                                Please enter your first name
                            </div>
                        </div>
                        <div class="col-md-6 mb-3">
                            <label for="validationServer03">Last name</label>
                            <input type="text" class="form-control" id="validationServer03" placeholder="Last name" required>
                            <div class="invalid-feedback">
                                Please enter your last name
                            </div>
                        </div>
                    </div>

                    <label for="validationServer04">Address</label>
                    <input type="text" class="form-control" id="validationServer04" placeholder="Address" required>
                    <div class="invalid-feedback">
                        Please enter your address
                    </div>

                    <label for="validationServer05">Email</label>
                    <input type="text" class="form-control email-validation" id="validationServer05" placeholder="Email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
                    <div class="invalid-feedback">
                        Please enter a valid email address
                    </div>

                    <label for="validationServer06">Password</label>
                    <input type="password" class="form-control" id="validationServer06" placeholder="Password" required>
                    <div class="invalid-feedback">
                        Please enter a password
                    </div>

                    <label for="validationServer07">Phone number</label>
                    <input type="text" class="form-control" id="validationServer07" placeholder="Phone" required>
                    <div class="invalid-feedback">
                        Please enter a phone number
                    </div>

                    <label for="validationServer08">Property type</label>
                    <select class="custom-select" id="validationServer08" required>
                        <option selected disabled value="">Choose...</option>
                        <option>Apartment Building</option>
                        <option>Villa</option>
                        <option>Cottage</option>
                        <option>Detached House</option>
                    </select>
                    <div class="invalid-feedback">
                        Please choose your property type
                    </div>

                    <div class="form-group mt-3">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="invalidCheck3" required>
                            <label class="form-check-label" for="invalidCheck3">
                                Agree to terms and conditions
                            </label>
                        </div>
                    </div>

                    <button class="btn btn-primary" type="submit">Submit form</button>
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