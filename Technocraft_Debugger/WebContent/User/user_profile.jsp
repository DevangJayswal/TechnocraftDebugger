<!DOCTYPE html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <title>Technocraft Debuger | User Profile</title> 
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Technocraft Debugger">
    <meta name="author" content="iwthemes.com">   

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Theme CSS -->
    <link href="<%=request.getContextPath() %>/User/css/style.css" rel="stylesheet" media="screen">
	<link href="<%=request.getContextPath() %>/User/css/bootstrap1.min.css" rel="stylesheet" media="screen">
    <!-- Skins Theme -->
    <link href="<%=request.getContextPath() %>/User/css/blue.css" rel="stylesheet" media="screen" class="skin">

    <!-- Favicons -->
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/User/images/favicon.ico">
    <link rel="apple-touch-icon" href="<%=request.getContextPath() %>/User/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<%=request.getContextPath() %>/User/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<%=request.getContextPath() %>/User/images/apple-touch-icon-114x114.png">  

    <!-- Head Libs -->
    <script src="<%=request.getContextPath() %>/User/js/modernizr.js"></script>

    <!--[if lte IE 9]>
        <script src="<%=request.getContextPath() %>/User/js/html5shiv.js"></script>
        <script src="<%=request.getContextPath() %>/User/js/respond.js"></script>
    <![endif]-->

    <!-- styles for IE -->
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/User/css/ie.css" type="text/css" media="screen" />            
    <![endif]-->

    <!-- Skins Changer-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/jsapi.js"></script>
   
  </head>
  <body>
   
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>

	<a:if test="${ msg eq 'false' }">
		Your Mail Address is already register. Please Enter another mail address.
	</a:if>
    
    <!-- layout-->
    <div id="layout">
        <!-- Info Head -->
        <section class="info-head">  
            <div class="container">
                <ul>  
                    <li><i class="fa fa-headphones"></i> 01800034567</li>
                    <li><i class="fa fa-comment"></i> <a href="#">Live chat</a></li>
                    <li>
                        <ul>
                          <li class="dropdown">
                            <i class="fa fa-globe"></i> 
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                                Language<i class="fa fa-angle-down"></i>
                            </a>
                             <ul class="dropdown-menu">  
                                 <li><a href="#"><img src="<%=request.getContextPath() %>/User/images/spanish.png" alt="">Spanish</a></li>
                                 <li><a href="#"><img src="<%=request.getContextPath() %>/User/images/english.png" alt="">English</a></li>
                                 <li><a href="#"><img src="<%=request.getContextPath() %>/User/images/frances.png" alt="">Frances</a></li>
                                 <li><a href="#"><img src="<%=request.getContextPath() %>/User/images/portugues.png" alt="">Portuguese</a></li>
                            </ul>
                          </li>                      
                        </ul>
                    </li>
                </ul> 
            </div>            
        </section>
        <!-- Info Head -->
        
	   <%@include file="topbar.jsp" %>
       <%@ include file="header.jsp" %>
		

        <!-- Title Section -->           
        <section class="title-section">
            <div class="container">
                <!-- crumbs --> 
                <div class="row crumbs">
                   <div class="col-md-12">
                        <a href="<%=request.getContextPath()%>/User/user_index.jsp">Home</a> / <a href="#">Features</a> / <a href="#">Pages </a> / Register User
                   </div>
                </div>
                <!-- End crumbs --> 

                <!-- Title - Search--> 
                <div class="row title">
                    <!-- Title --> 
                    <div class="col-md-9">
                        <h1>Register User
                            <span class="subtitle-section">
                               Pages Styles
                                <span class="left"></span>
                                <span class="right"></span>
                            </span>
                            <span class="line-title"></span>
                        </h1>
                    </div>
                    <!-- End Title--> 

                    <!-- Search--> 
                    <div class="col-md-3">
                        <form class="search" action="#" method="Post">
                            <div class="input-group">
                                <input class="form-control" placeholder="Search..." name="email"  type="email" required="required">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="submit" name="subscribe" >Go!</button>
                                </span>
                            </div>
                        </form>  
                    </div>
                    <!-- End Search--> 
                </div>
                <!-- End Title -Search --> 
              
            </div>
        </section>   
        <!-- End Title Section --> 

        <!-- Section area -->
        <section class="paddings">
            <div class="container">
                

                 <div class="row register padding-top-mini">
               
                    <form action="<%= request.getContextPath() %>/User_Reg_Controller" method="post">
                    	<a:forEach items="${sessionScope.user_mst}" var="user">
                    	      			
		                       <div class="col-md-2 custom_input_file">
		                            <div class="custom-input_file">
		                                <img height="200px" width="200px" src="User/doc/${sessionScope.image}" alt="user_image" />
		                            </div>
		                        </div>
		                       <!-- <div class="col-md-5"> 
		                        	<div class="input-file">
		                        		<iframe class="form-control100" style="height:200px; width:945px" src="image_upload.jsp" width="100%" height="250"> </iframe>
		                        		<input type="hidden" name="mode" value="1"/>
		                       	 	</div>
		                        </div> -->
		                        
		                        <br><br>
		                        <br><br>
		                        <a:forEach items="${sessionScope.usrprofile}" var="upro">
		                        	<a:if test="${user.user_id==upro.user_mst_id.user_id}">
				                        <div class="col-md-10">
				                           <div class="row">
				                                <div class="col-md-4">
				                                    <input placeholder="Your Name" type="text" name="u_name" value="${upro.u_name}" required>
				                                </div>
				                                <div class="col-md-4">
				                                    <input placeholder="Your Email" type="email" name="u_email" value="${upro.u_email}" required>
				                                </div>
				                                <div class="col-md-4">
				                                    <input placeholder="Mobile Number" type='tel' pattern="[0-9]{10,10}" name="u_number" value="${upro.u_number}"  autocomplete="off"  maxlength="10" required>
				                                </div>
				                            </div>
									
											<div class="row padding_top_mini">
										
												<div class="col-md-4">
													<select name="country" class="form-control" name="country">
														<a:forEach items="${sessionScope.con_list}" var="i">
															<a:if test="${upro.country.country_id==i.country_id }">
																<option value="${i.country_id}">${i.country_name}</option>
															</a:if>
														</a:forEach>
													</select>
												</div>
										
												<div class="col-md-4">
													<select name="state" class="form-control" name="state">
															<a:forEach items="${sessionScope.st_list}" var="j">
																<a:if test="${upro.state.state_id==j.state_id }">
																	<option value="${j.state_id}">${j.state_name }</option>
																</a:if>
															</a:forEach>
													</select>
												</div>
												
												<div class="col-md-4">
													<select name="city" class="form-control" name="city">
														<a:forEach items="${sessionScope.ci_list}" var="k">
															<a:if test="${upro.city.city_id==k.city_id }">
																<option value="${k.city_id}">${k.city_name}</option>
															</a:if>
														</a:forEach>
													</select>
												</div>
											</div>
											<br>
				                            <div class="row padding_top_mini">
											
												<div class="col-md-4">
													<input placeholder="Address" type="text" name="u_address" value="${upro.u_address}" required>
												</div>
						
					                                <div class="col-md-4">
					                                    <input placeholder="Username" type="text" name="u_username" value="${upro.user_mst_id.user_name}" required>
					                                </div>
													
					                                <div class="col-md-4">
					                                    <input placeholder="Password" type="text" value="${upro.user_mst_id.passwd}" pattern=".{6,16}" title="Please Enter 5 to 10 " name="u_pass" required>
					                                </div>
				                            </div>
																		
											<div class="row padding_top_mini">
				                                <div class="col-md-4">
				                                    <input placeholder="Pincode" type="tel" value="${upro.u_pincode}" pattern=".{6,16}" autocomplete="off"  maxlength="6" name="u_pincode" title="Password Did Not Match" required>
				                                </div>
				                                <div class="col-md-4">
				                                    <input type="date" placeholder="DOB" value="${upro.u_dob}" name="u_dob" required>
				                                </div>                                
				                            </div>
											
											<div class="register">
												Gender : &nbsp;&nbsp;
												<input type="radio" name="u_gender" value="male" style="width:0px; height:0px" checked="checked"/>Male &nbsp;&nbsp;&nbsp
												<input type="radio" name="u_gender" value="female" style="width:0px; height:0px"/>Female							
											</div>
											<div class="col-md-12">
												<input type="hidden" name="id" value="${upro.u_id}">
												<input type="hidden" name="uid" value="${user.user_id}">
				                        		<input type="hidden" name="flag" value="update">
				                            	<input type="submit" class="btn btn-primary" value="Submit">
				                        	</div>
		                        	</div>
		                        	
		                        	</a:if>
                        	</a:forEach>
                      </a:forEach>
                    </form>
                    
             </div>


            </div>
            <!-- End Container-->
        </section>
        <!-- End Section area-->
   

       <%@ include file="footer.jsp" %>

    </div>
    <!-- End layout-->

    <!-- ======================= JQuery libs =========================== -->
    <!-- Always latest version of jQuery-->
    <script src="<%=request.getContextPath() %>/User/js/jquery.min.js"></script>
     <!-- jQuery local-->    
    <script>window.jQuery || document.write('<script src="<%=request.getContextPath() %>/User/js/jquery.js"><\/script>')</script>    
    <!--Nav-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/tinynav.js"></script> 
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/superfish.js"></script>  
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/hoverIntent.js"></script> 
    <script src="<%=request.getContextPath() %>/User/js/jquery.sticky.js" type="text/javascript"></script>                                           
    <!--Totop-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/jquery.ui.totop.js" ></script>  
    <!--Slide-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/camera.js" ></script>      
    <script type='text/javascript' src='<%=request.getContextPath() %>/User/js/jquery.easing.1.3.min.js'></script>  
    <!--FlexSlider-->
    <script src="<%=request.getContextPath() %>/User/js/jquery.flexslider.js"></script> 
    <!--Ligbox--> 
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/jquery.fancybox.js"></script> 
    <!-- carousel.js-->
    <script src="<%=request.getContextPath() %>/User/js/carousel.js"></script>  
    <!-- Twitter Feed-->
    <script src="<%=request.getContextPath() %>/User/js/jquery.tweet.js"></script> 
    <!-- flickr Feed-->
    <script src="<%=request.getContextPath() %>/User/js/jflickrfeed.min.js"></script>  
    <!--Scroll-->   
    <script src="<%=request.getContextPath() %>/User/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Nicescroll -->
    <script src="<%=request.getContextPath() %>/User/js/jquery.nicescroll.js"></script>
    <!-- Maps -->
    <script src="<%=request.getContextPath() %>/User/js/gmap3.js"></script>
    <!-- Filter -->
    <script src="<%=request.getContextPath() %>/User/js/jquery.isotope.js" type="text/javascript"></script>
    <!--Theme Options-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/theme-options.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/jquery.cookies.js"></script>                                
    <!-- Bootstrap.js-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/bootstrap.js"></script>
    <!--MAIN FUNCTIONS-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/main.js"></script>
    <!-- ======================= End JQuery libs =========================== -->
        
    </body>
</html>