<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Add Job</title>
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
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>
<%@ include file="header.jsp" %>
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
              <div class="panel-title"> <i class="fa fa-pencil"></i> Add Job </div>
            </div>
            <div class="panel-body">
              <div class="alert alert-info"></div>
              <form class="cmxform" id="signupForm" method="post"  action="<%= request.getContextPath() %>/Add_job_controller">
			<a:forEach items="${sessionScope.list5}" var="a">              
                <div class="form-group">
					<label for="cat">Select Category</label>
					<select name="cat" class="form-control">
						<a:forEach items="${sessionScope.list2}" var="i">
							<a:if test="${a.a.cat_id==i.cat_id}" >
								<option value="${i.cat_id}" selected="selected">${i.cat_name}</option>
							</a:if>
							<a:if test="${a.a.cat_id!=i.cat_id}">
								<option value="${i.cat_id}">${i.cat_name}</option>
							</a:if>
						</a:forEach>
					</select>
                </div>
					
				<div class="form-group">
					<label for="subcat">Select Sub Category</label>
					<select name="subcat" class="form-control">
						<a:forEach items="${sessionScope.list3}" var="j">
							<a:if test="${a.b.sub_cat_id==j.sub_cat_id}" >
								<option value="${j.sub_cat_id}" selected="selected">${j.sub_cat_name}</option>
							</a:if>
							<a:if test="${a.b.sub_cat_id!=j.sub_cat_id}" >
								<option value="${j.sub_cat_id}">${j.sub_cat_name}</option>
							</a:if>
						</a:forEach>
					</select>
                </div>
                <div class="form-group">
                  <label for="Job Title">Job Title</label>
                  <input id="job_title" name="job_title" type="text" value="${a.job_title}" class="form-control" placeholder="Job Title" required />
                </div>
                <div class="form-group">
                  <label for="Job Description">Job Description</label>
                  <textarea id="job_description" name="job_description" class="form-control" required >${a.job_description}</textarea>
                </div>
                <div class="form-group">
                  <label for="job_skills">Skills</label>
                  <input id="job_skills" name="job_skills" type="text" value="${a.job_skills}" class="form-control" placeholder="Skills" required />
                </div>
                <div class="form-group">
                  <label for="salary">Salary</label>
                  <%-- <input id="salary" name="job_salary" type="text" value="${a.job_salary}" class="form-control" placeholder="Salary" required/> --%>
                  		<div class="input-group"> <span class="input-group-addon"><i class="fa fa-usd"></i> </span>
                          	<input type="text" name="job_salary" id="maskedMoney" value="${a.job_salary}" class="form-control money" maxlength="10" autocomplete="off" placeholder="000.000.000.000" required/> 
 	              	 	</div>
                </div>
					
				<div class="form-group">
                  <label for="Address">Address</label>
                  <textarea id="address" name="job_address" class="form-control" required >${a.job_address}</textarea>
				</div>
				
				<div class="form-group">
					<label for="country">Country</label>
					<select name="country" class="form-control">
						<a:forEach items="${sessionScope.list1}" var="k">
							<a:if test="${a.c.country_id==k.country_id}" >
								<option value="${k.country_id}" selected="selected">${k.country_name}</option>
							</a:if>
							<a:if test="${a.c.country_id!=k.country_id}">
								<option value="${k.country_id}">${k.country_name}</option>
							</a:if>
						</a:forEach>
					</select>
                </div>
				
				<div class="form-group">
					<label for="state">State</label>
					<select name="state" class="form-control">
						<a:forEach items="${sessionScope.list}" var="l">
							<a:if test="${a.d.state_id==l.state_id}" >
								<option value="${l.state_id}" selected="selected">${l.state_name}</option>
							</a:if>
							<a:if test="${a.d.state_id!=l.state_id}">
								<option value="${l.state_id}">${l.state_name}</option>
							</a:if>
						</a:forEach>
					</select>
                </div>
				
				<div class="form-group">
					<label for="city">City</label>
					<select name="city" class="form-control">
						<a:forEach items="${sessionScope.list4}" var="m">
							<a:if test="${a.e.city_id==m.city_id}" >
								<option value="${m.city_id}" selected="selected">${m.city_name}</option>
							</a:if>
							<a:if test="${a.e.city_id!=m.city_id}">
								<option value="${m.city_id}">${m.city_name}</option>
							</a:if>
						</a:forEach>
					</select>
                </div>
				
				<div class="form-group">
                  <label for="company_name">Company Name</label>
                  <input id="company_name" name="company_name" type="text" value="${a.company_name}" class="form-control" placeholder="Company Name" required />
                </div>

				<div class="form-group">
                  <label for="company_email">Email</label>
                  <%-- <input id="comapany_email" name="company_email" type="email" value="${a.comapny_email}" class="form-control" placeholder="Email ID" required/> --%>
                  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-envelope-o"></i> </span>
                    <input type="text" name="company_email" value="${a.comapny_email}" class="form-control product" autocomplete="off" placeholder="Email Address">
                  </div>
                </div>
				
				<div class="form-group">
                  <label for="ref_name">Reference Name</label>
                  <input id="ref_name" name="ref_name" type="text" value="${a.ref_name}" class="form-control" placeholder="Reference Name" required/>
                </div>

				<div class="form-group">
                  <label for="ref_num">Reference Number</label>
                  <%-- <input id="ref_num" name="ref_number" type="tel" value="${a.ref_number}" class="form-control" placeholder="Reference Number" pattern="[0-9]{10,10}" autocomplete="off"  maxlength="10" required/> --%>
                  		<div class="input-group"> <span class="input-group-addon"><i class="fa fa-phone"></i> </span>
                        	 <input type="text" name="ref_number" value="${a.ref_number}" id="maskedPhone" class="form-control phone" maxlength="10" autocomplete="off" placeholder="(999) 999-9999">
                        </div>
                </div>
				
				<div class="form-group">
					  <label for="ten_per">Percentage Obtained in 10th.</label>
					  <input id="ten_per" name="ten_per" type="text" value="${a.ten_per}" class="form-control" placeholder="10 %" required/>
				</div>
				
				<div class="form-group">
					  <label for="twelve_per">Percentage Obtained in 12th. </label>
					  <input id="twelve_per" name="twelve_per" type="text" value="${a.twelve_per}" class="form-control" placeholder="12 %" required/>
				</div>

				<div class="form-group">
					  <label for="graduation">Percentage Obtained in Graduation</label>
					  <input id="graduation" name="graduation" type="text" value="${a.graduation}" class="form-control" placeholder="Graduation %" required/>
				</div>

				<div class="form-group">
					  <label for="app_date">Application Date</label>
					  <%-- <input id="app_date" name="app_date" type="date" value="${a.app_date}" class="form-control" placeholder="Application Date" required/> --%>
					  	<div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar "></i> </span>
                        	  <input type="date" name="app_date" value="${a.app_date}" id="datepicker_2" class="form-control margin-top-none" placeholder="10/25/2013 - 10/25/2013" name="daterange">
                        </div>
				</div>
				<div class="form-group">
					  <label for="inter_date">Interview Date</label>
					  <%-- <input id="inter_date" name="inter_date" type="date" value="${a.inter_date}" class="form-control" placeholder="Interview Date" required/> --%>
					  <div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar "></i> </span>
                          <input type="date" name="inter_date" value="${a.inter_date}" id="datepicker_2" class="form-control margin-top-none" placeholder="10/25/2013 - 10/25/2013" name="daterange">
                      </div>
				</div>
				
                <div class="form-group">
                  <input type="checkbox" class="checkbox" id="agree1" name="agree" />
                  <label for="agree1">Please agree to our policy</label>
                </div>
				
                <div class="form-group">
	                    <input class="submit btn btn-blue" type="submit" value="Edit">
						<input type="hidden" name="flag" value="update">
						<input type="hidden" name="user" value="Admin">
						<input class="submit btn btn-blue" type="hidden" name="id" value="${a.job_id}">
                </div>
			</a:forEach>			
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
<!-- Core Javascript - via CDN --> 
<script src="<%=request.getContextPath() %>/admin/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/jquery-ui.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.min.js"></script> 

<!-- Plugins --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/tagmanager.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-switch.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/daterangepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-datepicker.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/globalize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/moment.min.js"></script>

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/custom.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function() {

	 // Init Theme Core
	 Core.init();

	 //Init jquery Date Picker
	 $('.datepicker').datepicker()
	 
	 //Init jquery Date Range Picker
	 $('input[name="app_date"]').daterangepicker();
	 $('input[name="inter_date"]').daterangepicker();
	 
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
