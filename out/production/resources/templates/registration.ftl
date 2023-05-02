<html>
<header>
    <title>Register</title>
    <link href="../css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="../js/bootstrap.bundle.min.js"></script>
    <script src="../jquery-1.11.1.min.js"></script>
</header>

<body>
<h2>Register</h2>
<form action="/register" method="post">
    <div class="form-group">
        <label class="col-md-4 control-label" for="username">User Name</label>
        <div class="col-md-4">
            <input id="username" name="username" type="text" placeholder="John" class="form-control input-md" required="">

        </div>
    </div>
    <!-- Password input-->
    <div class="form-group">
        <label class="col-md-4 control-label" for="password">Password</label>
        <div class="col-md-4">
            <input id="password" name="password" type="password" placeholder="" class="form-control input-md" required="">

        </div>
    </div>
    <div class="form-group">
        <label class="col-md-4 control-label" for="save"></label>
        <div class="col-md-8">
            <button type="submit" id="save" name="save" class="btn btn-success">Register</button>

        </div>
    </div>
</form>
</body>
</html>
