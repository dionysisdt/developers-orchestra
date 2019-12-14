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
                        <a class="nav-link" href="./Owners.html">
                            <span data-feather="users"></span>
                            Property Owners
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./CreateOwner.html">
                            <span data-feather="user-plus"></span>
                            Create Owner
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="./Repairs.html">
                            <span data-feather="tool"></span>
                            Repairs  <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./SearchRepairs.html">
                            <span data-feather="tool"></span>
                            Search repairs
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="./CreateRepair.html">
                            <span data-feather="plus-square"></span>
                            Create Repair
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

            <h2>Edit Repair</h2>
            <div class="table-responsive">
                <form>
                    <div class="input-group mb-2 mr-sm-2">
                        <div class="input-group-prepend">
                            <div class="input-group-text"><span data-feather="calendar"></span></div>
                        </div>
                        <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Date">
                    </div>
                    <label for="validationServer02">Status</label>
                    <select class="custom-select" id="validationServer02" required>
                        <option selected disabled value="">choose</option>
                        <option>Pending</option>
                        <option>In progress</option>
                        <option>Finished</option>
                    </select>
                    <label for="validationServer04">Type of repair</label>
                    <select class="custom-select" id="validationServer04" required>
                        <option selected disabled value="">choose</option>
                        <option>Painting</option>
                        <option>Insulation</option>
                        <option>Plumbing works</option>
                        <option>Electrical works</option>
                    </select>
                    <label for="validationServer02">Cost</label>
                    <input type="text" class="form-control" id="validationServer02" value="3.000" required>
                    <label for="validationServer02">Address</label>
                    <input type="text" class="form-control" id="validationServer02" value="1234 Main St, Athens, Greece" required>
                    <label for="validationServer02">Owner's social security number</label>
                    <input type="text" class="form-control" id="validationServer02" value="123456789" required>
                    <div class="mb-3">
                        <label for="validationTextarea">Description</label>
                        <textarea class="form-control" id="validationTextarea" placeholder="Description" required></textarea>
                    </div>
                    <button class="btn btn-primary" type="submit">Update</button>
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