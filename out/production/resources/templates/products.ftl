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
    <link rel="stylesheet" href="../css/main2.css">
    <link rel="stylesheet" href="../css/products.css">
    <link rel="stylesheet" href="../css/product_page_design.css">



</head>
<body>



<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
    <div class="container-fluid">
        <a href="#" class="navbar-brad"><img src="../images/logo.png"></a>
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

<#--<div class="carousel slide" data-ride="carousel" id="slides">-->
<#--    <ul class="carousel-indicators">-->
<#--        <li data-target="#slides" data-slide-to="0" class="active"></li>-->
<#--    </ul>-->

<#--    <div class="carousel-inner">-->
<#--        <#list categoriesWithData as categories>-->
<#--        <div class="carousel-item active">-->


<#--            <img src="../images/products/banner/${categories.bannerPhotoSrc}">-->
<#--&lt;#&ndash;                <img src="../images/products/banner/home.jpg">&ndash;&gt;-->
<#--            <div class="carousel-caption">-->
<#--&lt;#&ndash;                <h3>"Shell is your trusted companion in the world of shopping"</h3>&ndash;&gt;-->

<#--            </div>-->

<#--        </div></#list>-->
<#--    </div>-->

<#--</div>-->

<#--<img src="../images/products/banner/home.jpg" height="60%" width="100%">-->

<#--<form method="get" action="/productsByCategory">-->
<#--    <label for="minPrice">Min Price:</label>-->
<#--    <input type="number" id="minPrice" name="minPrice" value="" />-->

<#--    <label for="maxPrice">Max Price:</label>-->
<#--    <input type="number" id="maxPrice" name="maxPrice" value="" />-->

<#--    <input type="submit" value="Submit" />-->
<#--</form>-->

<section class="products">
    <div class="all-products">
        <#list productsByCategory as product>
        <div class="card">
        <div class="product">
            <img src="../images/products/${product.image}">
            <div class="product-info">
                <h4 class="product-title">${product.productName}
                </h4>
                <p class="product-price">${product.price}$</p>
                <a class="product-btn" href="/product_details/${product.id}">Buy Now</a>

                <span></span>
            </div>
        </div>
        </div>
        </#list>

</section>

<#--<div class="container">-->
<#--    <div class="row">-->
<#--        <#list productsByCategory as product>-->
<#--            <div class="col-md-4">-->
<#--                <div class="card mb-4 box-shadow">-->
<#--                    <img class="card-img-top" src="../images/products/${product.image}" alt="${product.productName}" style="height: 225px; width: 100%; display: block;">-->
<#--                    <div class="card-body">-->
<#--                        <h5 class="card-title">${product.productName}</h5>-->
<#--                        <p class="card-text">${product.price}</p>-->
<#--                        <div class="d-flex justify-content-between align-items-center">-->
<#--                            <div class="btn-group">-->
<#--                                <button type="button" class="btn btn-sm btn-outline-secondary">Add to cart</button>-->
<#--                                <button type="button" class="btn btn-sm btn-outline-secondary">Buy now</button>-->
<#--                            </div>-->
<#--                            <small class="text-muted">${product.price}</small>-->
<#--                        </div>-->
<#--                    </div>-->
<#--                </div>-->
<#--            </div>-->
<#--        </#list>-->
<#--    </div>-->
<#--</div>-->


</body>
</html>