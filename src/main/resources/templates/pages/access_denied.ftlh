<#import "/spring.ftl" as spring />
<html>
<head>
    <title>Sorry, This Page Can&#39;t Be Accessed</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous" />
</head>
<body>

<div class="container-fluid">
    <div class="row">
        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">

            <div class="container py-5">
                <div class="row">
                    <div class="col-md-2 text-center">
                        <p><i class="fa fa-exclamation-triangle fa-5x"></i><br/>Status Code: 403</p>
                    </div>
                    <div class="col-md-10">
                        <h3>OOOPPSSS!!!! Sorry...</h3>
                        <p>Sorry, access to this page is only allowed to admins!<br/>Please go back to the previous page to continue browsing.</p>
                        <a class="btn btn-danger" href="javascript:history.back()">Go Back</a>
                    </div>
                </div>
            </div>
        </main>
    </div>
</div>

</body>

</html>