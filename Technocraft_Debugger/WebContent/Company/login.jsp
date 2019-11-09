<!DOCTYPE html>
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<html>
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/glyphicons.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/pages.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/plugins.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/responsive.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/custom.css">

<!-- Favicon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/admin/images/favicon.ico">

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
    
    	<a:if test="${sessionScope.msg!=null}">
					<h2 class="col-md-12" style="background-color:  red!IMPORTANT;">${sessionScope.msg}</h2>
           			<a:remove var="msg" scope="session"/>
         </a:if>
      <div id="page-logo"> <img src="<%=request.getContextPath()%>/admin/images/technocraft_debugger.gif" class="img-responsive" alt="logo"> </div>
    </div>
    <div class="row">
      <div class="panel">
        <div class="panel-heading">
          <div class="panel-title"> <i class="fa fa-lock"></i> Login </div>
          <span class="panel-title-sm pull-right padding-right-sm"><a class="item-message" href="<%=request.getContextPath()%>/Company_Reg_Controller?flag=load">Registration</a></span> </div>
        <form class="cmxform" id="altForm"  method="post">
          <div class="panel-body">
            <div class="login-avatar"> <img src="<%=request.getContextPath()%>/admin/images/Admin.jpg" width="150" height="112" alt="avatar"> </div>
            <div class="form-group">
              <div class="input-group"> <span class="input-group-addon"><i class="fa fa-user"></i> </span>
                <input type="text" name="username" class="form-control phone" autocomplete="off" placeholder="User Name">
              </div>
            </div>
            <div class="form-group">
              <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key"></i> </span>
                <input type="password" name="password" class="form-control product"  autocomplete="off" placeholder="Password">
              </div>
            </div>
            <div class="alert alert-warning login-alert">Please read our <b>Terms of Use</b> before logging in.</div>
          </div>
          <div class="panel-footer"> <span class="panel-title-sm pull-left" style="padding-top: 7px;"><a href="<%= request.getContextPath() %>/Company/forgotpassword.jsp">Forgotten Password?</a></span>
            <div class="form-group margin-bottom-none">
            
              <input class="btn btn-primary pull-right" type="submit" value="Login"/>
              <input type="hidden" name="login" value="true">
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
<script src="<%=request.getContextPath()%>/admin/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath()%>/admin/js/jquery-ui.min.js"></script> 
<script src="<%=request.getContextPath()%>/admin/js/bootstrap.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/custom.js"></script> 
<script type="text/javascript">

jQuery(document).ready(function() {

	// Init Theme Core 	  
	Core.init();   
	
});

</script>
</body>

</html>
