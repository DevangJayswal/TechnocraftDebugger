<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Screen Lock</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS  -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700">

<!-- Core CSS  -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/glyphicons.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="css/theme.css">
<link rel="stylesheet" type="text/css" href="css/pages.css">
<link rel="stylesheet" type="text/css" href="css/plugins.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="css/custom.css">

<!-- Favicon -->
<link rel="shortcut icon" href="img/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>

<body class="screenlock-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>


<!-- Start: Main -->
<div id="main">
  <div class="container">
    <div class="row">
      <div id="page-logo"> <img src="images/technocraft_debugger.gif" class="img-responsive" alt="logo"> </div>
    </div>
    <div class="row">
      <div class="panel">
        <div class="panel-heading">
          <div class="panel-title"> <i class="fa fa-lock"></i> Locked </div>
          <span class="panel-title-sm pull-right padding-right-sm">Not <b>Admin?</b></span> </div>
        <form class="cmxform" id="altForm" method="get">
          <div class="panel-body">
            <div class="login-avatar"> <img src="images/Admin.jpg" width="150" height="112" alt="avatar"> </div>
            <div class="login-info"> <span class="login-name"> <b class="text-primary">Admin</b> - logged out <b></b></span> <span class="login-email"> admin@technocraft.debugger.com </span> </div>
            <div class="form-group margin-right-sm">
              <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key"></i> </span>
                <input type="password" class="form-control product" maxlength="10" autocomplete="off" placeholder="Password">
              </div>
            </div>
            <div class="login-alert">
              <div class="alert alert-warning">Please read our <b>Terms of Use</b> before logging in.</div>
            </div>
          </div>
          <div class="panel-footer">
          <span class="panel-title-sm pull-left" style="padding-top: 7px;"><a> Forgotten Password?</a></span>
          <div class="form-group margin-bottom-none">
            <a href="index.jsp"><input class="btn btn-primary pull-right" type="button" value="Unlock" /></a>
            <div class="clearfix"></div>
          </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
<!-- End: Main -->

<!-- Core Javascript - via CDN --> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery-ui.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="js/uniform.min.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/custom.js"></script> 
<script type="text/javascript">

jQuery(document).ready(function() {

	// Init Theme Core 	  
	Core.init();   
	
});

</script>
</body>

</html>
