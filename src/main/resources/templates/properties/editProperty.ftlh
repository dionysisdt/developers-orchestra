<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
        <div class="flex-grow-1">
            <div class="content-cnt">
                <div class="" w3-row-padding
                ">
                <h2>Create Owner</h2>
                <div class="table-responsive">
                    <form>
                        <label for="validationServer01">Property number </label>
                        <input type="text" class="form-control" id="validationServer01" value="123456789" required>
                        <label for="validationServer02">Property Address</label>
                        <input type="text" class="form-control" id="validationServer02"
                               value="1234 Main St, Athens, Greece" required>
                        <label for="validationServer02">Year of manufacture</label>
                        <input type="text" class="form-control" id="validationServer02" value="Yaer of manufacture"
                               required>
                        <label for="validationServer04">Property type</label>
                        <select class="custom-select" id="validationServer04" required>
                            <option selected disabled value="">Apartment Building</option>
                            <option>Apartment Building</option>
                            <option>Villa</option>
                            <option>Cottage</option>
                            <option>Detached House</option>
                        </select>
                        <button class="btn btn-primary" type="submit">Update</button>
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
    </script>
</body>
</html>