<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Validation</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/css.css">

<!-- Core CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/glyphicons.min.css">

<!-- Plugin CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/tagmanager.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/bootstrap-switch.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/pages.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/plugins.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/responsive.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/custom.css">

<!-- Favicon -->
<link rel="shortcut icon" href="<%=request.getContextPath() %>/admin/images/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="<%=request.getContextPath() %>/admin/js/html5shiv.js"></script>
  <script src="<%=request.getContextPath() %>/admin/js/respond.min.js"></script>
<![endif]-->
</head>

<body class="validation-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
<%@ include file="themepreview.jsp" %>

<%@ include file="header.jsp" %>
<!-- Start: Main -->
<div id="main"> 
<%@ include file="sidebar.jsp" %>
  <!-- Start: Content -->
  <section id="content">
    <div id="topbar">
      <ol class="breadcrumb">
        <li><a href="dashboard.html"><i class="fa fa-home"></i></a></li>
        <li><a href="index.html">Home</a></li>
        <li class="active">Form Validation</li>
      </ol>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6 col-lg-5 col-lg-offset-1">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-pencil"></i> Example 1 </div>
            </div>
            <div class="panel-body">
              <div class="alert alert-info">Validating a form with Rockstar UI Admin is <b>unbelievably</b> simple and you will love it from first try</div>
              <form class="cmxform" id="signupForm" method="get">
                <div class="form-group">
                  <label for="firstname">Firstname</label>
                  <input id="firstname" name="firstname" type="text" class="form-control" placeholder="First Name" required/>
                </div>
                <div class="form-group">
                  <label for="lastname">Lastname</label>
                  <input id="lastname" name="lastname" type="text" class="form-control" placeholder="Last Name" required />
                </div>
                <div class="form-group">
                  <label for="username">Username</label>
                  <input id="username" name="username" type="text" class="form-control" placeholder="Username" required  />
                </div>
                <div class="form-group">
                  <label for="password">Password</label>
                  <input id="password" name="password" type="password" class="form-control" placeholder="Password" required />
                </div>
                <div class="form-group">
                  <label for="confirm_password">Confirm password</label>
                  <input id="confirm_password" name="confirm_password" type="password" class="form-control" placeholder="Password" required/>
                </div>
                <div class="form-group">
                  <label for="email">Email</label>
                  <input id="email" name="email" type="email" class="form-control" placeholder="Email" required />
                </div>
                <div class="form-group">
                  <input type="checkbox" class="checkbox" id="agree1" name="agree" />
                  <label for="agree1">Please agree to our policy</label>
                </div>
                <div class="form-group">
                  <input class="submit btn btn-blue" type="submit" value="Submit" />
                </div>
              </form>
            </div>
          </div>
        </div>
        <div class="col-md-6 col-lg-5">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-pencil"></i> Example 2 </div>
            </div>
            <div class="panel-body">
              <div class="alert alert-warning">Validating a form with Rockstar UI Admin is </div>
              <form class="cmxform" id="altForm" method="get">
                <div class="form-group">
                  <label for="name">Your Name</label>
                  <input id="name" name="name" type="text" class="form-control" required />
                </div>
                <div class="form-group">
                  <label for="job">Desired Job</label>
                  <input id="job" name="job" type="text" class="form-control" required/>
                </div>
                <div class="form-group">
                  <label for="wage">Desired Wage</label>
                  <input id="wage" name="wage" type="text" class="form-control" placeholder="$00.00" required/>
                </div>
                <div class="form-group">
                  <label class="control-label">Your Skillset</label>
                  <input type="text" class="form-control tm-input" placeholder="Add some skills.." data-original-title="" title="">
                  <div class="tag-container"></div>
                </div>
                <hr class="short" />
                <div class="form-group">
                  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-phone"></i> </span>
                    <input type="text" class="form-control phone" maxlength="10" autocomplete="off" placeholder="Phone Number">
                  </div>
                </div>
                <div class="form-group">
                  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope-o"></i> </span>
                    <input type="text" class="form-control product" maxlength="10" autocomplete="off" placeholder="Email Address">
                  </div>
                </div>
                <div class="form-group">
                  <input type="checkbox" class="checkbox" id="agree" name="agree" />
                  <label for="agree">Please agree to our policy</label>
                </div>
                <div class="form-group">
                  <input class="submit btn btn-blue" type="submit" value="Submit" />
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End: Content --> 
</div>
<!-- End: Main --> 

<!-- Core Javascript - via CDN --> 
<script src="<%=request.getContextPath() %>/admin/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/jquery-ui.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.min.js"></script> 

<!-- Plugins --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/tagmanager.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-switch.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/custom.js"></script> 
<script type="text/javascript">
 jQuery(document).ready(function() {

	// Init Theme Core 	  
	Core.init();
	
	// validate the comment form when it is submitted
	$("#altForm").validate();

	// validate signup form on keyup and submit
	$("#signupForm").validate({
		rules: {
			firstname: "required",
			lastname: "required",
			username: {
				required: true,
				minlength: 2
			},
			password: {
				required: true,
				minlength: 5
			},
			confirm_password: {
				required: true,
				minlength: 5,
				equalTo: "#password"
			},
			email: {
				required: true,
				email: true
			},
			topic: {
				required: "#newsletter:checked",
				minlength: 2
			},
			
		},
		messages: {
			firstname: "Please enter your firstname",
			lastname: "Please enter your lastname",
			username: {
				required: "Please enter a username",
				minlength: "Your username must consist of at least 2 characters"
			},
			password: {
				required: "Please provide a password",
				minlength: "Your password must be at least 5 characters long"
			},
			confirm_password: {
				required: "Please provide a password",
				minlength: "Your password must be at least 5 characters long",
				equalTo: "Please enter the same password as above"
			},
			email: "Please enter a valid email address",
			agree: "Please accept our policy"
		}
	});

	// propose username by combining first- and lastname
	$("#username").focus(function() {
		var firstname = $("#firstname").val();
		var lastname = $("#lastname").val();
		if(firstname && lastname && !this.value) {
			this.value = firstname + "." + lastname;
		}
	});

	//code to hide topic selection, disable for demo
	var newsletter = $("#newsletter");
	// newsletter topics are optional, hide at first
	var inital = newsletter.is(":checked");
	var topics = $("#newsletter_topics")[inital ? "removeClass" : "addClass"]("gray");
	var topicInputs = topics.find("input").attr("disabled", !inital);
	// show when newsletter is checked
	newsletter.click(function() {
		topics[this.checked ? "removeClass" : "addClass"]("gray");
		topicInputs.attr("disabled", !this.checked);
	});

	//jquery Tags Manager 
	$(".tm-input").tagsManager({
        tagsContainer: '.tag-container',
		prefilled: ["CSS", "HTML", ,"Great Sense of Time", "PHP", "Amazing Jokes"],
		tagClass: 'tm-tag-success',
    });
			
 });
</script>
</body>

</html>
