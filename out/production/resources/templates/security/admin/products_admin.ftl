<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link rel="stylesheet" href="static/css/products_admin.css">
    <title>Document</title>
</head>
<body>
<div class="container d-flex justify-content-center mt-50 mb-50">

    <div class="row">
        <div class="col-md-10">
            <#list products as product>
            <div class="card card-body">

                <div class="media align-items-center align-items-lg-start text-center text-lg-left flex-column flex-lg-row">
                    <div class="mr-2 mb-3 mb-lg-0">

                        <img src="../images/products/${product.image}" width="150" height="150" alt="">

                    </div>

                    <div class="media-body">
                        <h6 class="media-title font-weight-semibold">
                            <h3 href="#" data-abc="true">${product.productName}</h3>
                        </h6>

                        <p class="mb-3">${product.description}</p>
                    </div>

                    <div class="mt-3 mt-lg-0 ml-lg-3 text-center">
                        <h3 class="mb-0 font-weight-semibold">${product.price}$</h3>

                      <a  href="/product_details_admin/${product.id}"><button type="button" class="btn btn-warning mt-4 text-white">View information</button></a>

                        <form method="post" action="/delete/${product.id}">
                            <button type="submit" class="btn btn-warning mt-4 text-white">Delete</button>
                        </form>
                    </div>
                </div>

            </div>
            </#list>



        </div>
    </div>
</div>
</body>
</html>