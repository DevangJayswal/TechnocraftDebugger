<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Registration</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/bootstrap1.min.css">
<!-- Font CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/css.css">

<!-- Core CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/glyphicons.min.css">

<!-- Plugin CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/tagmanager.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/bootstrap-switch.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/datepicker.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/daterangepicker.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/fullcalendar.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/datatables.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/animate.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/bootstrap-editable.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/chosen.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/bootstrap-timepicker.min.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/colorpicker.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/pages.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/plugins.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/responsive.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/TableTools.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/custom.css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>

<body class="wizard-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>

<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>

 <%--  <%@ include file="sidebar.jsp" %> --%>
  <!-- Start: Content -->
  <section id="content">
  	
    <div id="topbar">
      <ol class="breadcrumb">
        <li><a href="<%=request.getContextPath()%>/Company/index.jsp"><i class="fa fa-home"></i></a></li>
        <li><a href="<%=request.getContextPath()%>/Company/index.jsp">Home</a></li>
        <li class="active">Company Registration</li>
      </ol>
    </div>
    <div class="container">
    <div class="row">
      <div class="col-md-10 col-md-offset-1">
        <div class="progress hidden">
          <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 0%;"></div>
        </div>
        <div class="panel">
          <div class="panel-heading">
            <div class="panel-title"> <i class="fa fa-flask"></i>Company Registration</div>
            <div class="panel-btns pull-right"> <span class=" panel-title-sm">Validation</span>
              <div class="make-switch" id="switch1" data-on="warning" data-off="success">
                <input type="checkbox" id="switch2" checked>
              </div>
            </div>
          </div>
          <div class="panel-body">
            <form class="cmxform" id="commentForm" method="post" action="<%= request.getContextPath() %>/Company_Reg_Controller">
             
              <div id="rootwizard">
                <div class="wizard-wrapper" align="center">
                  <ul class="wizard-steps">
                    <li>
                      <div class="wizard-icon"><i class="fa fa-pencil"></i> </div>
                      <a href="#tab1" data-toggle="tab">First</a></li>
                    <li>
                      <div class="wizard-icon"><i class="fa fa-user"></i> </div>
                      <a href="#tab2" data-toggle="tab">Second</a></li>
                    <li>
                      <div class="wizard-icon"><i class="fa fa-lock"></i> </div>
                      <a href="#tab3" data-toggle="tab">Third</a></li>
                    <li>
                	  <div class="wizard-icon"><i class="fa fa-lock"></i> </div>
                      <a href="#tab4" data-toggle="tab">Fourth</a></li>
                  </ul>
                </div>
             	<a:forEach items="${sessionScope.user_mst}" var="user">
                	<a:forEach items="${sessionScope.usrprofile}" var="upro">
                <div class="row" align="center">
                  <div class="col-md-8 col-md-offset-2">
                    <div class="tab-content border-none">
                      <div class="tab-pane" id="tab1">
                        <!-- <p class="alert alert-success">Would be hidden when <b>newsletter</b> isn't selected, but is visible here for the demo</p> -->
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicons glyphicons-building"></i> </span>
                            <input class="form-control" type="text" name="c_name" value="${upro.c_name}" placeholder="Company Name" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicons glyphicons-envelope"></i> </span>
                            <input class="form-control" type="email" name="c_email" value="${upro.c_email}" placeholder="Company Email" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicons glyphicons-phone"></i> </span>
                            <input class="form-control" type="text" name="c_number" value="${upro.c_number}" placeholder="Contact Number" required>
                          </div>
                        </div>
                        <!-- <div class="form-group">
                          <input type="checkbox" class="checkbox" id="agree" name="agree"/>
                          <label for="agree">Please agree to our policy</label>
                        </div> -->
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicons glyphicons-road"></i> </span>
                            <input class="form-control" type="text" name="c_address" value="${upro.c_address}" placeholder="Company Address" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="fa fa-globe"></i> </span>
                            <input class="form-control" type="text" name="c_web_address" value="${upro.c_web_address}" placeholder="Company Web Address" required>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab2">
                        <!-- <p class="alert alert-warning">Would be hidden when <b>newsletter</b> isn't selected, but is visible here for the demo</p> -->
                        <div class="form-group">
							<label for="country">Country</label>
							<select name="country" class="form-control">
								<a:forEach items="${sessionScope.con_list}" var="i">
									<a:if test="${upro.country.country_id==i.country_id }">
										<option value="${i.country_id}">${i.country_name}</option>
									</a:if>
								</a:forEach>
							</select>
               			</div>
                        <div class="form-group">
							<label for="state">State</label>
							<select name="state" class="form-control">
								<a:forEach items="${sessionScope.st_list}" var="j">
																<a:if test="${upro.state.state_id==j.state_id }">
																	<option value="${j.state_id}">${j.state_name }</option>
																</a:if>
															</a:forEach>
							</select>
                		</div>
						<div class="form-group">
							<label for="city">City</label>
							<select name="city" class="form-control">
								<a:forEach items="${sessionScope.ci_list}" var="k">
															<a:if test="${upro.city.city_id==k.city_id }">
																<option value="${k.city_id}">${k.city_name}</option>
															</a:if>
														</a:forEach>
							</select>
                		</div>
                		<div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicons glyphicons-pin"></i> </span>
                            <input class="form-control" type="text" name="c_pincode" value="${upro.c_pincode}" placeholder="Pin Code" required>
                          </div>
                        </div>
                      </div>
                      <div class="tab-pane" id="tab3">
                        <!-- <p class="alert alert-info">Would be hidden when <b>newsletter</b> isn't selected, but is visible here for the demo</p> -->
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="glyphicons glyphicons-user"></i> </span>
                            <input class="form-control" type="text" name="c_username" value="${upro.user_id.user_name}" placeholder="User Name" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key"></i> </span>
                            <input class="form-control" type="password" name="c_pass" value="${upro.user_id.passwd}" placeholder="Password" required>
                          </div>
                        </div>
                        <div class="form-group">
                          <div class="input-group"> <span class="input-group-addon"><i class="fa fa-key"></i> </span>
                            <input class="form-control" type="password" name="c_confirm_pass" placeholder="Confirm Password" required>
                          </div>
                        </div>
                      </div>
                      
                      <div class="tab-pane" id="tab4">
                      	<div class="input-file">
                        	<img src="User/doc/${sessionScope.image}" alt="user_image" width="28" height="28" />
                        </div>
                      </div>
                      	<input type="hidden" name="id" value="${upro.c_id}">
						<input type="hidden" name="uid" value="${user.user_id}">
                      	<input type="hidden" name="flag" value="update">
                      	<input class="submit btn btn-blue" name="submit" type="submit" value="Submit" style="display:none;" />
                      </a:forEach>
                </a:forEach>
                      <ul class="pager wizard">
                        <li class="previous first" style="display:none;"><a href="#">First</a></li>
                        <li class="previous"><a href="#">Previous</a></li>
                        <li class="next last" style="display:none;"><a href="#">Last</a></li>
                        <li class="next"><a href="#">Next</a></li>
                        <!-- <li class="save" style="display:none;"><a href="#">Save</a></li> -->
                        
                        
                      	
                      	
                      </ul>
                    </div>
            		</form>
                  </div>
                </div>
                
              </div>
            
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-8 col-md-offset-2"> </div>
      </div>
    </div>
   </div> 
  </section>
  <!-- End: Content --> 
	<div align="center">
		<p>&copy; 2013 Technocraft Debuger . All Rights Reserved.  1995 - 2014</p>
	</div>
<!-- Core Javascript - via CDN --> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery-ui.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 

<!-- Plugins --> 
<script type="text/javascript" src="js/jquery.validate.js"></script> 
<script type="text/javascript" src="js/jquery.bootstrap.wizard.js"></script> 
<script type="text/javascript" src="js/bootstrap-switch.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="js/uniform.min.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/custom.js"></script> 
<script type="text/javascript">
 jQuery(document).ready(function() {

	  // Init Theme Core 	  
	 Core.init();
	
	  //var validateCheck 
	  var $validator = $("#commentForm").validate({
		  errorPlacement: function(error, element) {
			element.parent().parent().append( error );
		  }
	  });
	  
	  // init bootstrap form wizard
	  $('#rootwizard').bootstrapWizard({
		  'tabClass': '',
		  
		  'onNext': function(tab, navigation, index) {
				  var $valid = $("#commentForm").valid();
				  var $total = navigation.find('li').length;
				  var $current = index+1;
				  var $percent = ($current/$total) * 100;
				  var $cur = index;			
				  var valSwitch = $('#switch1').children();
				  
			  if (valSwitch.hasClass('switch-on')) {
				  
				  if(!$valid) {
					  $validator.focusInvalid();
					  return false;
				  }
				  else {
					  $('ul.wizard-steps li:nth-child(' + $cur + ')').addClass('passed');
					  $('#rootwizard').find('.progress-bar').animate({width:$percent+'%'});
				  }	
			  }
			  else {
				  $('ul.wizard-steps li:nth-child(' + $cur + ')').addClass('passed');
				  $('#rootwizard').find('.progress-bar').animate({width:$percent+'%'});
			  }
  
			  if ($current == $total) {
				  $('input.submit').show();
			  }
		  },
	  
		  'onPrevious': function(tab, navigation, index) {	
			  var $valid1 = $("#commentForm").valid();			
			  var $total = navigation.find('li').length;
			  var $current = index+1;
			  var $percent = ($current/$total) * 100;
			  var valSwitch1 = $('#switch1').children();
			  
			  if ($current == 0) {
				  return false;
				  
			  }
			  else if (valSwitch1.hasClass('switch-on')) {
			  
				  if (!$valid1) {
					  $validator.focusInvalid();
					  return false;
				  }
				  else {
					  $('#rootwizard').find('.progress-bar').animate({width:$percent+'%'});
				  }
			  }				
		  },
		  'onTabClick': function(tab, navigation, index) {
				  return false;
		  }
		  
	  });	
	
 });
</script>
</body>

</html>
