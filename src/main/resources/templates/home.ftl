<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
    <link rel="stylesheet" href="../css/main2.css">
    <script src="../js/search.js"></script>

    <link rel="stylesheet" href="../css/search.css">

</head>
<body>
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
<div class="carousel slide" data-ride="carousel" id="slides">
    <ul class="carousel-indicators">
        <li data-target="#slides" data-slide-to="0" class="active"></li>
        <li data-target="#slides" data-slide-to="1"></li>
        <li data-target="#slides" data-slide-to="2"></li>
    </ul>


    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="https://cdn.sandvik.coromant.com/files/sitecollectionimages/services/buy%20tools/stc-top.jpg">
            <div class="carousel-caption">
                <h1 class="display-2">Shell</h1>
                <h3>"Shell is your trusted companion in the world of shopping"</h3>
                <#--        <button type="button" class="btn-outline-light btn-lg">Посмотреть</button>-->
                <#--        <button type="button" class="btn btn-warning btn-lg">Демо сайта</button>-->

            </div>
        </div>
        <div class="carousel-item">
            <img src="https://www.vistaresidences.com.ph/assets/img/online-and-offline-shopping-near-condo.png">
        </div>
        <div class="carousel-item">
            <img src="https://image.cnbcfm.com/api/v1/image/105597851-1543432153422gettyimages-872895008.jpeg?v=1669564801&w=1920&h=1080">
        </div>
    </div>
</div>


<div class="jumbotron jumbotron-fluid">

    <div class="centerbox">

        <div class="main-form-container">
            <form method="post" action="/search">
                <input type="text" class="main-input main-name" name="name" value="Search by name"
                       onfocus="clearText(this)" onblur="replaceText(this)"/><input type="text"
                                                                                    class="main-input main-location"
                                                                                    name="LOCATION"
                                                                                    value="Search by city or postal code"
                                                                                    onfocus="clearText(this)"
                                                                                    onblur="replaceText(this)"/>
                <button type="button" class="main-btn"><p class="search-small">SEARCH BY</p>
                    <p class="search-large">Name</p></button>
                <ul class="search-description">
                    <li>By Location</li>
                    <li>By Name</li>
                </ul>
                <input id="main-submit" class="" type="submit" value="Search"/>
            </form>
        </div>
    </div>
    <!-- mobile submit -->
<#--    <form method="post" action="/search">-->
<#--        <label for="name">Name:</label>-->
<#--        <input type="text" id="name" name="name" required>-->
<#--        <button type="submit">Search</button>-->
<#--    </form>-->
<#--    <button type="button" id="main-submit-mobile">Search</button>-->


</div>


<#--<#list categoriesWithData as category>-->
<#--  <img src="${category.src}" alt="" width="120px" height="120px">-->
<#--</#list>-->


<div class="container-fluid">
    <div class="row text-center alert">
        <div class="col-12">
            <h1 class="display-4">Main categories</h1>
        </div>
        <hr>
        <div class="col-12">
            <p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Qui rerum fugit iste, similique
                eum delectus animi libero maiores numquam nostrum iure culpa ipsum, deleniti ab neque nihil reiciendis
                veritatis debitis tempore, laudantium odio quasi. Quod, tempore, sint. Pariatur nulla, recusandae cum
                natus in excepturi deserunt iusto, dolorem aperiam provident unde autem quae placeat reiciendis impedit
                cupiditate alias ipsa repellendus vel?</p>
        </div>
    </div>
</div>

<#--<div class="container">-->
<#--    <div class="container-fluid padding">-->
<#--        <div class="row text-center padding">-->
<#--            <#list categoriesWithData as category>-->
<#--                <div class="col-xs-5 col-sm-3 col-md-4" id="${category.id}">-->
<#--                    <img src="${category.image}" alt="" width="120px" height="120px">-->
<#--                    <a href="${category.src}"><h3>${category.name}</h3></a>-->
<#--                    <p>${category.description}</p>-->
<#--                </div>-->
<#--            </#list>-->
<#--        </div>-->

<#--    </div>-->
<#--</div>-->

<div class="container">
    <div class="container-fluid padding">
        <div class="row text-center padding">
            <#list categoriesWithData as category>
                <div class="col-xs-5 col-sm-3 col-md-4" id="${category.id}">
                    <img src="${category.image}" alt="" width="120px" height="120px">
                    <a href="/${category.name}"><h3>${category.name}</h3></a>
                    <p>${category.description}</p>
                </div>
            </#list>
        </div>
    </div>
</div>



<#--<div class="container-fluid padding">-->
<#--  <div class="row padding">-->
<#--    <div class="offset-lg-2 col-lg-4">-->
<#--      <h2>Что-то про программирование</h2>-->
<#--      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dicta repellendus nam fuga? Dicta, iure, quaerat! Est dicta consequuntur porro repellat beatae, architecto blanditiis quaerat numquam. Tempora in delectus cupiditate quas.-->
<#--        <br><br>-->
<#--        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus aliquam ea aliquid omnis ad, aspernatur quis quae. Eveniet quibusdam dolore qui cum itaque voluptatem consequuntur accusantium, eaque neque, maiores dignissimos.-->
<#--        <br><br>-->
<#--        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Delectus aliquam ea aliquid omnis ad, aspernatur quis quae. Eveniet quibusdam dolore qui cum itaque voluptatem consequuntur accusantium, eaque neque, maiores dignissimos.-->

<#--      </p>-->
<#--      <br>-->
<#--      <a href="#" class="btn btn-danger">Читать далее</a>-->


<#--    </div>-->
<#--    <br>-->
<#--    <div class="col-lg-6">-->
<#--      <img src="https://itproger.com/img/courses/1534939074.jpg" class="img-fluid">-->
<#--    </div>-->
<#--  </div>-->

<#--</div>-->

<#--<figure>-->
<#--  <div class="fixed-wrap">-->
<#--    <div id="fixed"></div>-->

<#--  </div>-->
<#--</figure>-->

<#--<div class="text-center">-->
<#--  <button type="button" id="gifsBtn" class="btn btn-success" data-toggle="collapse" data-target="#gifs">Открыть блок</button>-->

<#--</div>-->
<#--<div id="gifs" class="collapse">-->
<#--  <div class="container-fluid">-->
<#--    <div class="row text-center">-->
<#--      <div class="col-sm-6 col-md-3">-->
<#--        <img src="img/gif_1.gif" class="gif">-->
<#--      </div>-->
<#--      <div class="col-sm-6 col-md-3">-->
<#--        <img src="img/gif_2.gif" class="gif">-->
<#--      </div>-->
<#--      <div class="col-sm-6 col-md-3">-->
<#--        <img src="img/gif_3.gif" class="gif">-->
<#--      </div>-->
<#--      <div class="col-sm-6 col-md-3">-->
<#--        <img src="img/gif_4.gif" class="gif">-->
<#--      </div>-->
<#--    </div>-->
<#--  </div>-->

<#--</div>-->

<#--<div class="container-fluid padding">-->
<#--  <div class="row alert text-center">-->
<#--    <div class="col-12">-->
<#--      <h1 class="display-4">Язык программирования</h1>-->
<#--    </div>-->
<#--    <hr>-->
<#--  </div>-->
<#--</div>-->

<#--<div class="container padding">-->
<#--  <div class="row padding">-->
<#--    <div class="col-md-4">-->
<#--      <div class="card">-->
<#--        <img src="https://itproger.com/img/courses/1549891240.jpg" class="card-img-top">-->
<#--        <div class="card-body">-->
<#--          <h4 class="card-title">SASS / SCSS</h4>-->
<#--          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem amet, perferendis maiores.</p>-->
<#--          <a href="3" class="btn btn-warning">Посмотреть</a>-->
<#--        </div>-->
<#--      </div>-->
<#--    </div>-->
<#--    <div class="col-md-4">-->
<#--      <div class="card">-->
<#--        <img src="https://itproger.com/img/courses/1518607198.jpg" class="card-img-top">-->
<#--        <div class="card-body">-->
<#--          <h4 class="card-title">Python 3 с PyGame</h4>-->
<#--          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem amet, perferendis maiores.</p>-->
<#--          <a href="3" class="btn btn-warning">Посмотреть</a>-->
<#--        </div>-->
<#--      </div>-->
<#--    </div>-->
<#--    <div class="col-md-4">-->
<#--      <div class="card">-->
<#--        <img src="https://itproger.com/img/courses/1483354768.jpg" class="card-img-top">-->
<#--        <div class="card-body">-->
<#--          <h4 class="card-title">C# под Unity 5</h4>-->
<#--          <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem amet, perferendis maiores.</p>-->
<#--          <a href="3" class="btn btn-warning">Посмотреть</a>-->
<#--        </div>-->
<#--      </div>-->
<#--    </div>-->
<#--  </div>-->
<#--</div>-->

<footer class="container-fluid">
    <div class="container-fluid">
        <div class="row padding text-center">
            <div class="col-12">
                <h2>Наши контакты</h2>
            </div>
            <div class="col-12 social padding">
                <a href="#"><i class="fab fa-twitter"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-youtube"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
                <a href="#"><i class="fab fa-google-plus-g"></i></a>
            </div>
        </div>
    </div>
</footer>
<script src="../js/search.js"></script>
</body>
</html>