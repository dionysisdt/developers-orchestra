<!DOCTYPE html>
<html lang="en">

<head>
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

<main role="main" class="col-md-9 ml-sm-auto col-lg-10 py-2 px-2">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <div class="w3-row-padding">
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
                        <input type="text" class="form-control" id="validationServer06"
                               placeholder="Owner's social security number" required>

                        <div class="mb-3">
                            <label for="validationTextarea">Description</label>
                            <textarea class="form-control" id="validationTextarea" placeholder="Description"
                                      required></textarea>
                        </div>

                        <button class="btn btn-primary" type="submit">Create</button>
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