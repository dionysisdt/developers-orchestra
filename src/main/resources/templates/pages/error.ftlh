<#import "/spring.ftl" as spring />

<!DOCTYPE html>
<html>
<head>
    <title>Error ${errorStatusCode}</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>

<body>
    <hr id="error">
    <div class="container">
        <div class="jumbotron" >
            <h1 class="text-center"><i class="fa fa-frown-o"> </i> <@spring.message "error.generic"/> </h1>
            <h2 class="text-center">Error Status Code: ${errorStatusCode}</h2>
            <p class="text-center"><a class="btn btn-primary" href="/"><i class="fa fa-home"></i> Go Home</a></p>
        </div>
    </div>
</body>
</html>
