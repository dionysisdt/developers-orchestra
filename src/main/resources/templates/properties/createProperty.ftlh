<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">


<main role="main" class="col-md-9 ml-sm-auto col-lg-10 py-2 px-2">
    <div class="flex-grow-1">
        <div class="content-cnt">
            <div class="" w3-row-padding
            ">
            <h2>Create Property</h2>
            <div class="table-responsive">
                <form class="needs-validation px-2 py-2" novalidate>

                    <label for="validationServer01">Property number </label>
                    <input type="text" class="form-control" id="validationServer01" placeholder="Property number"
                           required>
                    <div class="invalid-feedback">
                        Please enter a property number
                    </div>

                    <label for="validationServer02">Property address</label>
                    <input type="text" class="form-control" id="validationServer02" placeholder="Property address"
                           required>
                    <div class="invalid-feedback">
                        Please enter property address
                    </div>

                    <label for="validationServer03">Year of manufacture</label>
                    <input type="text" class="form-control" id="validationServer03" placeholder="Year of manufacture"
                           required>
                    <div class="invalid-feedback">
                        Please enter a valid year
                    </div>

                    <label for="validationServer04">Property type</label>
                    <select class="custom-select" id="validationServer04" required>
                        <option selected disabled>Choose...</option>
                        <option>Apartment Building</option>
                        <option>Villa</option>
                        <option>Cottage</option>
                        <option>Detached House</option>
                    </select>
                    <div class="invalid-feedback">
                        Please choose a property type
                    </div>

                    <label for="validationServer05">Social security number </label>
                    <input type="text" class="form-control" id="validationServer05" placeholder="Social security number"
                           required>
                    <div class="invalid-feedback">
                        Please enter your social security number
                    </div>

                    <button class="btn btn-primary mt-4" type="submit">Create</button>
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