<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Add Package</title>
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
              <div class="panel-title"> <i class="fa fa-pencil"></i>Add Package</div>
            </div>
            <div class="panel-body">
				<div class="alert alert-info"></div>
              <form class="cmxform" id="signupForm" method="post" action="<%= request.getContextPath() %>/Add_package_controller">
			  	<a:forEach items="${sessionScope.list}" var="i">
                <div class="form-group">
					<label for="pack_type">Package Type</label>
					<input id="pack_type" name="pack_type" value="${i.pack_type}" type="text" class="form-control" placeholder="Pack Type" required />
				</div>

                <div class="form-group">
                  <label for="pack_name">Pack Name</label>
                  <input id="pack_name" name="pack_name" value="${i.pack_name}" type="text" class="form-control" placeholder="Pack Name" required />
                </div>
				
                <div class="form-group">
                  <label for="pack_desc">Package Description</label>
                  <textarea id="pack_desc" name="pack_desc" class="form-control" required >${i.pack_desc }</textarea>
                </div>
				
				<div class="form-group">
                  <label for="pack_price">Package Price</label>
                  <%-- <input id="pack_price" name="pack_price" value="${i.pack_price}" type="text" class="form-control" placeholder="Package Price" required /> --%>
                  		<div class="input-group"> <span class="input-group-addon"><i class="fa fa-usd"></i> </span>
                         	 <input type="text" name="pack_price" value="${i.pack_price}" id="maskedMoney" class="form-control money" maxlength="10" autocomplete="off" placeholder="000.000.000.000" required/> 
 	              	 	</div>
                </div>
				
				<div class="form-group">
                  <label for="pack_validity">Package Validity</label>
                  <%-- <input id="pack_validity" name="pack_validity" value="${i.pack_validity}" type="text" class="form-control" placeholder="Package Validity" required /> --%>
                  		<div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar"></i> </span>
                        	  <input type="text" name="pack_validity" value="${i.pack_validity}" id="datepicker" class="form-control datepicker margin-top-none" placeholder="23/9/2013">
                        </div>
                </div>
				
                <div class="form-group">
                		<input class="submit btn btn-blue" type="submit" value="Edit">
						<input type="hidden" name="flag" value="update">
						<input class="submit btn btn-blue" type="hidden" name="id" value="${i.pack_id}">
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
