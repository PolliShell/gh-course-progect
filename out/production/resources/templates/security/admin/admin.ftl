<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>

<#--    <link rel="stylesheet" href="../css/main2.css">-->
<#--    <link rel="stylesheet" href="../css/products.css">-->
<#--    <link rel="stylesheet" href="../css/product_page_design.css">-->



</head>
<body>




<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
    <div class="container-fluid">
<#--        <a href="#" class="navbar-brad"><img src="../images/admin/logo.png" height="20%"></a>-->
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item active">
                    <#--          <img src="../images/home/communication.png" alt="" width="20px" height="20px" >-->
                    <button class="btn"><i class="fa fa-home"></i> Home
                    </button><#--          <a href="#" class="nav-link">Home</a>-->
                </li>
                <li class="nav-item">
                    <button class="btn"><i class="fa fa-comments"></i> Chat</button>
                </li>
                <li class="nav-item">
                    <button class="btn"><i class="fa fa-user"></i> Your profile</button>
                </li>
            </ul>
        </div>

    </div>
</nav>
<div class="container">

<div class="card-deck card-sm-gutters-2 d-block d-sm-flex">

    <a class="card card-text-dark border-1 shadow-sm transition-3d-hover mb-5" href="/products_admin">
        <img class="card-img-top" src="../images/admin/product.jpg" alt="Image Description">
        <div class="card-body p-4">
            <h2 class="h6 mb-0">Products</h2>
            <small class="d-block text-secondary">View all products</small>
        </div>
    </a>

    <a class="card card-text-dark border-1 shadow-sm transition-3d-hover mb-5" href="/users_admin">
        <img class="card-img-top" src="../images/admin/users.jpg" alt="Image Description">
        <div class="card-body p-4">
            <h2 class="h6 mb-0">Users</h2>
            <small class="d-block text-secondary">View all users</small>
        </div>
    </a>

    <a class="card card-text-dark border-1 shadow-sm transition-3d-hover mb-5" href="/statistic">
        <img class="card-img-top" src="../images/admin/statistic.jpg" alt="Image Description">
        <div class="card-body p-4">
            <h2 class="h6 mb-0">Statistic</h2>
            <small class="d-block text-secondary">View statistic</small>
        </div>
    </a>

</div>

</div>

<#--<section class="products">-->
<#--    <div class="all-products">-->
<#--        <#list productsByCategory as product>-->
<#--            <div class="card">-->
<#--                <div class="product">-->
<#--                    <img src="../images/products/${product.image}">-->
<#--                    <div class="product-info">-->
<#--                        <h4 class="product-title">${product.productName}-->
<#--                        </h4>-->
<#--                        <p class="product-price">${product.price}$</p>-->
<#--                        <a class="product-btn" href="/product_details/${product.id}">Buy Now</a>-->
<#--                        <span></span>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--        </#list>-->

<#--</section>-->


</body>
</html>