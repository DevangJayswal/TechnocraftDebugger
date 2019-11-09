<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Add Exam</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%-- <!-- Font CSS  -->
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/custom.css"> --%>

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
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="a" %>
<!-- Start: Main -->
<div id="main"> 
<%@ include file="sidebar.jsp" %>
  <!-- Start: Content -->
  <section id="content">
    <div id="topbar">
      <ol class="breadcrumb">
        <li><a href="<%=request.getContextPath() %>/admin/index.jsp"><i class="fa fa-home"></i></a></li>
        <li><a href="<%=request.getContextPath() %>/admin/index.jsp">Home</a></li>
      </ol>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12 col-lg-6 col-lg-offset-3">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-pencil"></i>Add Exam</div>
            </div>
            <div class="panel-body">
              <div class="alert alert-info"></div>
              <form class="cmxform" id="signupForm" method="post" action="<%= request.getContextPath()%>/Add_exam_controller">
			  
                <div class="form-group">
					<label for="Cat">Select Category</label>
					<select name="Cat" class="form-control">
						<a:forEach items="${sessionScope.list1 }" var="i">
							<option value="${i.cat_id }">${i.cat_name }</option>
						</a:forEach>
					</select>
                </div>
					
				<div class="form-group">
					<label for="Sub_Cat">Select Sub Category</label>
					<select name="Sub_Cat" class="form-control">
					<a:forEach items="${sessionScope.list2 }" var="j">
						<option value="${j.sub_cat_id}">${j.sub_cat_name }</option>
					</a:forEach>
					</select>
                </div>
				
                <div class="form-group">
                  <label for="exam_name">Exam Name</label>
                  <input id="exam_name" name="exam_name" type="text" class="form-control" placeholder="Exam Name" required />
                </div>
				
                <div class="form-group">
                  <label for="exam_desc">Exam Description</label>
                  <textarea id="exam_desc" name="exam_desc" class="form-control" required ></textarea>
                </div>
				
				<div class="form-group">
                  <label for="exam_date">Exam Date</label>
                  <!-- <input id="exam_date" name="exam_date" type="date" class="form-control" placeholder="Exam Name" required /> -->
                  		<div class="input-group">
                        	  <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                        	  <span class="input-group-addon">From</span><input type="text" name="from_exam_date" id="datepicker" class="form-control datepicker margin-top-none" placeholder="23/9/2013" required/>
                        	  <span class="input-group-addon">To</span><input type="text" name="to_exam_date" id="datepicker" class="form-control datepicker margin-top-none" placeholder="23/9/2013" required/>
                        </div>
                </div>
				
				<div class="form-group">
                  <label for="exam_time">Exam Time</label>
                  <!-- <input id="exam_time" name="exam_time" type="text" class="form-control" placeholder="Exam Time" required /> -->
                  		<div class="input-group"> 
                    	  	<span class="input-group-addon"><i class="glyphicons glyphicons-stopwatch "></i> </span>
                          	<input type="text" name="hours_examtime" class="form-control" placeholder="hours">
                          	<Span class="input-group-addon">:</Span><input type="text" name="min_examtime" class="form-control" placeholder="min">
                        </div>
                </div>
				
				<div class="form-group">
                  <label for="total_marks">Total Marks</label>
                  <input id="total_marks" name="total_marks" type="text" class="form-control" placeholder="Total Marks" required />
                </div>
				
				<div class="form-group">
                  <label for="pass_marks">Passing Marks</label>
                  <input id="pass_marks" name="pass_marks" type="text" class="form-control" placeholder="Passing Marks" required />
                </div>
				
				<div class="form-group">
                  <label for="pass_marks">Exam Status</label>
                  <label>
					<span class="checked"><input name="status" checked="checked" value="active" type="radio"></span>
					Active </label>
					<label>
					<span class=""><input name="status" value="deactive" type="radio"></span>
					Deactive </label>
                </div>
				
                <div class="form-group">
                  <input type="hidden" name="flag" value="insert">
                  <input type="hidden" name="user" value="Company">
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
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/daterangepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-datepicker.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/globalize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.maskedinput.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/moment.min.js"></script>
<script type="text/javascript">
<%-- 
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
			
 }); --%>
 jQuery(document).ready(function() {

	 // Init Theme Core
	 Core.init();

	 //Init jquery Date Picker
	 $('.datepicker').datepicker()
	 
	 //Init jquery Date Range Picker
	 $('input[name="daterange"]').daterangepicker();
	 
	 //Init jquery Color Picker
	 $('.colorpicker').colorpicker() 
	 $('.rgbapicker').colorpicker() 
	 
	 //Init jquery Time Picker
	 $('.timepicker').timepicker();
	  
	 //Init jquery Tags Manager 
	 $(".tm-input").tagsManager({
        tagsContainer: '.tag-container',
		prefilled: ["Miley Cyrus", "Apple", "Wow This is a really Long tag", "Na uh"],
		tagClass: 'tm-tag-info',
     });

	 //Init jquery spinner init - default  
	 $(".checkbox").uniform();
 	 $(".radio").uniform();

	//Init jquery spinner init - default
	$("#chosen-list1").chosen();
	$("#chosen-list2").chosen(); 
	  
	//Init jquery spinner init - default
	$("#spinner1").spinner();
	
	//Init jquery spinner init - currency 
	$("#spinner2").spinner({
      min: 5,
      max: 2500,
      step: 25,
      start: 1000,
      //numberFormat: "C"
    });
	
	//Init jquery spinner init - decimal  
	$( "#spinner3" ).spinner({
      step: 0.01,
      numberFormat: "n"
    });
	
	//Init jquery time spinner
    $.widget( "ui.timespinner", $.ui.spinner, {
		options: {
		  // seconds
		  step: 60 * 1000,
		  // hours
		  page: 60
		},
		_parse: function( value ) {
		  if ( typeof value === "string" ) {
			// already a timestamp
			if ( Number( value ) == value ) {
			  return Number( value );
			}
			return +Globalize.parseDate( value );
		  }
		  return value;
		},
	 
		_format: function( value ) {
		  return Globalize.format( new Date(value), "t" );
		}
	  });
    $( "#spinner4" ).timespinner();

	//Init jquery masked inputs
	$('.date').mask('99/99/9999');
	$('.time').mask('99:99:99');
	$('.date_time').mask('99/99/9999 99:99:99');
	$('.zip').mask('99999-999');
	$('.phone').mask('(999) 999-9999');
	$('.phoneext').mask("(999) 999-9999 x99999");
	$(".money").mask("999,999,999.999"); 
	$(".product").mask("999.999.999.999"); 
	$(".tin").mask("99-9999999");
	$(".ssn").mask("999-99-9999");
	$(".ip").mask("9ZZ.9ZZ.9ZZ.9ZZ");
	$(".eyescript").mask("~9.99 ~9.99 999");
	$(".custom").mask("9.99.999.9999");
	
});
 
</script>
</body>

</html>
