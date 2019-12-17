<#import "/spring.ftl" as spring />
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
            <form class="form-inline" action="/admin/search/owner" name="searchOwnerForm" method="POST">

                <div class="input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><span data-feather="at-sign"></span></div>
                    </div>
                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                </div>

                <label class="sr-only" for="inlineFormInputName2">TaxID</label>
                <input type="text" class="form-control mb-2 mr-sm-2" id="taxID" name="taxID" placeholder="TaxID">

                <button type="Submit" class="btn btn-primary mb-2">Search</button>

            </form>
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
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script>window.jQuery || document.write('<script src="static/js/jquery.slim.min.js"><\/script>')</script>
<script src="static/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<script src="static/js/dashboard.js"></script>
</body>
</html>
