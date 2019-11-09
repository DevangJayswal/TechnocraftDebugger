<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Add Questions</title>
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
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
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
              <div class="panel-title"> <i class="fa fa-pencil"></i>Add Questions</div>
            </div>
            <div class="panel-body">
              <div class="alert alert-info"></div>
              <form class="cmxform" id="signupForm" method="post" action="<%= request.getContextPath() %>/Add_questions_controller">
			  
               	<div class="form-group">
					<label for="select_cat">Category</label>
					<select name="Cat" class="form-control">
					<a:forEach items="${sessionScope.list1 }" var="i">
						<option value="${i.cat_id }">${i.cat_name }</option>
					</a:forEach>
					</select>
                </div>
				
				 <div class="form-group">
					<label for="select_sub_cat">Sub Category</label>
					<select name="Sub_Cat" class="form-control">
					<a:forEach items="${sessionScope.list2 }" var="i">
						<option value="${i.sub_cat_id }">${i.sub_cat_name }</option>
					</a:forEach>
					</select>
                </div>
				
				<div class="form-group">
					<label for="select_exam">Exam</label>
					<select name="Exam" class="form-control">
						<a:forEach items="${sessionScope.list3 }" var="i">
							<option value="${i.exam_id }">${i.exam_name }</option>
						</a:forEach>
					</select>
                </div>

				
                <div class="form-group">
                  <label for="question">Question</label>
                  <input id="question" name="question" type="text" class="form-control" placeholder="Question" required />
                </div>
				
				<div class="form-group">
                  <label for="ans1">Answer 1</label>
                  <input id="ans1" name="ans1" type="text" class="form-control" placeholder="Answer 1" required />
                </div>
				
				<div class="form-group">
                  <label for="ans2">Answer 2</label>
                  <input id="ans2" name="ans2" type="text" class="form-control" placeholder="Answer 2" required />
                </div>
				
				<div class="form-group">
                  <label for="ans3">Answer 3</label>
                  <input id="ans3" name="ans3" type="text" class="form-control" placeholder="Answer 3" required />
                </div>
				
				<div class="form-group">
                  <label for="ans4">Answer 4</label>
                  <input id="ans4" name="ans4" type="text" class="form-control" placeholder="Answer 4" required />
                </div>
				
				<div class="form-group">
                  <label for="correct_ans">Correct Answer</label>
                  <input id="correct_ans" name="correct_ans" type="text" class="form-control" placeholder="Correct Answer" required />
                </div>

				<div class="form-group">
                  <label for="question_marks">Question Marks</label>
                  <input id="question_marks" name="question_marks" type="text" class="form-control" placeholder="Question Marks" required />
                </div>
                
                <br>
				<div class="form-group" align="center">
					<span>Or</span> <br> <a
						href="<%=request.getContextPath()%>/Add_questions_controller?flag=upload&user=Admin"><label
						for="upload_file">Upload Your File</label></a>
				</div>
									<!-- <div class="form-group">
                  <input class="submit btn btn-blue" type="file" value="Upload" />
                </div> -->
				
                <div class="form-group">
                	<input type="hidden" name="flag" value="insert" />
                	<input type="hidden" name="user" value="Admin" />
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
