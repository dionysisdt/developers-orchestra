<!DOCTYPE html>
<html lang="en">
<head>
    <#include "../partials/head.ftlh">
    <title>Developer Orchestra</title>
</head>

<body>
<#include "../partials/sidebar.ftlh">

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