<!DOCTYPE html>
<html lang="en">
<head>
    <title>Login</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="/images/icons/favicon.ico"/>
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="static/vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="static/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="static/vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="static/vendor/css-hamburgers/hamburgers.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="static/vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="static/css/util.css">
    <link rel="stylesheet" type="text/css" href="static/css/main.css">
    <!--===============================================================================================-->

    <link rel="canonical" href="https://getbootstrap.com/docs/4.0/examples/sign-in/">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/4.0/examples/signin/signin.css" rel="stylesheet">
</head>

<body class="text-center">

<form class="login100-form validate-form" name='login' action="/login" method="POST">
<span class="login100-form-title">
Member Login
</span>
    <div class="wrap-input100 validate-input" data-validate="Valid email is required: ex@abc.xyz">
        <input class="input100" type='text' class="form-control" name='username' placeholder="Username">
        <span class="focus-input100"></span>
        <span class="symbol-input100">
            <i class="fa fa-envelope" aria-hidden="true"></i>
        </span>
    </div>
    <div class="wrap-input100 validate-input" data-validate="Password is required">
        <input class="input100" type="password" name="password" placeholder="Password">
        <span class="focus-input100"></span>
        <span class="symbol-input100">
            <i class="fa fa-lock" aria-hidden="true"></i>
        </span>
    </div>
    <div class="container-login100-form-btn">
        <button class="login100-form-btn" type="submit">Login</button>
    </div>
    <div class="text-center p-t-12"></div>
    <div class="text-center p-t-136"></div>
</form>


<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
<script>
    feather.replace();
</script>
<!--===============================================================================================-->
<script src="static/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
<script src="static/vendor/bootstrap/js/popper.js"></script>
<script src="static/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
<script src="static/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
<script src="static/vendor/tilt/tilt.jquery.min.js"></script>
<script >
    $('.js-tilt').tilt({
        scale: 1.1
    })
</script>
<!--===============================================================================================-->
<script src="static/js/main.js"></script>
</body>

</html>