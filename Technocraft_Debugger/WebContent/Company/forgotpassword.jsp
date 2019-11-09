<!DOCTYPE html>
<html>
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Login</title>
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

<body class="login-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
 

<!-- Start: Main -->
<div id="main">
  <div class="container">
    <div class="row">
    			<a:if test="${sessionScope.error!=null}">
					<h2 class="myTitle" style="background-color:  red!IMPORTANT;">${sessionScope.msg}</h2>
	           			<a:remove var="error" scope="session"/>
	           	</a:if>
      <div id="page-logo"> <img src="images/technocraft_debugger.gif" class="img-responsive" alt="logo"> </div>
    </div>
    <div class="row">

      <div class="panel">
        <div class="panel-heading">
          <div class="panel-title"> <i class="fa fa-lock"></i> Login </div>
          <span class="panel-title-sm pull-right padding-right-sm">Not <b>Admin?</b></span> </div>
        <form class="cmxform" id="altForm"  method="post" action="<%= request.getContextPath() %>/Company_Reg_Controller">
          <div class="panel-body">
            <div class="login-avatar"> <img src="images/Admin.jpg" width="150" height="112" alt="avatar"> </div>
            
            <div class="form-group">
              <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i> </span>
                <input type="email" name="u_email" class="form-control phone" autocomplete="off" placeholder="Your Email">
              </div>
            </div>
            
            <div class="alert alert-warning login-alert">Please read our <b>Terms of Use</b> before logging in.</div>
          </div>
          <div class="panel-footer">
            <div class="form-group margin-bottom-none">
              <input class="btn btn-primary pull-right" type="submit" value="Submit"/>
              <input type="hidden" name="flag" value="forgotPassword"/>
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
