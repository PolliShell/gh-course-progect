<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Item - Start Bootstrap Template</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <link rel="stylesheet" href="../css/main2.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />

    <link href="../css/styles.css" rel="stylesheet" />
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
    <div class="container-fluid">
        <a href="/" class="navbar-brad"><img src="../images/logo.png"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <#--          <img src="../images/home/communication.png" alt="" width="20px" height="20px" >-->
                    <button class="btn"><i class="fa fa-heart" aria-hidden="true"></i> Wish list
                    </button><#--          <a href="#" class="nav-link">Home</a>-->
                </li>
                <li class="nav-item">
                    <a href="/chat" class="link"><button class="btn"><i class="fa fa-comments"></i> Chat </button></a>
                </li>
                <li class="nav-item">
                    <button class="btn"><i class="fa fa-user"></i> Your profile</button>
                </li>
            </ul>
        </div>

    </div>
</nav>
<!-- Product section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 my-5">
        <div class="row gx-4 gx-lg-5 align-items-center">
<#list productById as product>
            <div class="col-md-6"><img class="card-img-top mb-5 mb-md-0" src="../images/products/${product.image}" alt="..." /></div>
            <div class="col-md-6">
<#--                <div class="small mb-1">SKU: BST-498</div>-->
                <h1 class="display-5 fw-bolder">${product.productName}</h1>
                <div class="fs-5 mb-5">

                    <span>${product.price}$</span>
                </div>
                <p class="lead">${product.description}</p>
                <div class="d-flex">
<#--                    <input class="form-control text-center me-3" id="inputQuantity" type="num" value="1" style="max-width: 3rem" />-->
                    <button class="btn btn-outline-dark flex-shrink-0" type="button">
                        <i class="bi-cart-fill me-1"></i>
                        Buy now
                    </button>

                    <button class="btn btn-outline-dark flex-shrink-0" type="button">
                        <i class="bi bi-suit-heart-fill"></i>
                        Add to wish list
                    </button>

                </div>
            </div>
</#list>
        </div>
    </div>
</section>
<!-- Related items section-->
<#--<section class="py-5 bg-light">-->
<#--    <div class="container px-4 px-lg-5 mt-5">-->
<#--        <h2 class="fw-bolder mb-4">Related products</h2>-->
<#--        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">-->
<#--            <div class="col mb-5">-->
<#--                <#list similarProducts as product>-->
<#--                <div class="card h-100">-->

<#--                    <!-- Product image&ndash;&gt;-->
<#--                    <img class="card-img-top" src="../images/products/${product.image}" alt="..." />-->
<#--                    <!-- Product details&ndash;&gt;-->
<#--                    <div class="card-body p-4">-->
<#--                        <div class="text-center">-->
<#--                            <!-- Product name&ndash;&gt;-->
<#--                            <h5 class="fw-bolder">${product.productName}</h5>-->
<#--                            <!-- Product price&ndash;&gt;-->
<#--                            ${product.price}-->
<#--                        </div>-->
<#--                    </div>-->
<#--                    <!-- Product actions&ndash;&gt;-->
<#--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">-->
<#--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>-->
<#--                    </div>-->

<#--                </div>-->
<#--                </#list>-->

<#--            </div>-->
<#--        </div>-->
<#--    </div>-->
<#--</section>-->


<!-- Footer-->
<#--<footer class="py-5 bg-dark">-->
<#--    <div class="container"><p class="m-0 text-center text-white">Shell</p></div>-->
<#--</footer>-->
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
