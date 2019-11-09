<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
  <head>
  
    <meta charset="utf-8">
    <title>Technocraft Debuger | Login</title> 
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Technocraft Debugger">
    <meta name="author" content="iwthemes.com">   

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Theme CSS -->
    <link href="<%=request.getContextPath() %>/User/css/style.css" rel="stylesheet" media="screen">

    <!-- Skins Theme -->
    <link href="<%=request.getContextPath() %>/User/css/blue.css" rel="stylesheet" media="screen" class="skin">

    <!-- Favicons -->
    <link rel="shortcut icon" href="<%=request.getContextPath() %>/User/images/favicon.png">
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

    <!-- Theme-options -->
    <div id="theme-options">
            <div class="title">Theme Options<span title="Theme Options"><i class="fa fa-cogs right"></i></span></div>
            <span>COLORS</span>
            <ul id="colorchanger">      
                <li><a class="colorbox blue" href="?theme=blue" title="Blue Skin"></a></li>
                <li><a class="colorbox red" href="?theme=red" title="Red Skin"></a></li>
                <li><a class="colorbox yellow" href="?theme=yellow" title="Yellow Skin"></a></li>
                <li><a class="colorbox green" href="?theme=green" title="Green Skin"></a></li>
                <li><a class="colorbox orange" href="?theme=orange" title="Orange Skin"></a></li>
                <li><a class="colorbox purple" href="?theme=purple" title="Purple Skin"></a></li>
                <li><a class="colorbox pink" href="?theme=pink" title="Pink Skin"></a></li>
                <li><a class="colorbox cocoa" href="?theme=cocoa" title="Cocoa Skin"></a></li>
            </ul>
            <span>LAYOUT STYLE</span>
            <ul class="layout-style">      
                <li class="wide active">Wide</li>
                <li class="boxed">Boxed</li> 
                <li class="boxed-margin">Boxed Margin</li>               
            </ul>
            <span>WEBSITE TYPE</span>
           <ul class="layout-style">      
                <li class="active"><a href="index.html">Corporate</a></li>
                <li><a href="index-creative.html">Creative</a></li>
                <li><a href="index-one-page.html" >One Page</a></li>                
            </ul>  
            <div class="patterns">
                <span>BACKGROUND PATTERNS</span>
                <ul class="backgrounds">
                    <li class="bgnone" title="None - Default"></li>
                    <li class="bg1"></li>
                    <li class="bg2"></li>
                    <li class="bg3"></li>
                    <li class="bg4 "></li>
                    <li class="bg5"></li> 
                    <li class="bg6"></li>
                    <li class="bg7"></li>
                    <li class="bg8"></li>
                    <li class="bg9 "></li>
                    <li class="bg10"></li> 
                    <li class="bg11"></li>                   
                </ul>  
            </div>
    </div>
    <!-- End Theme-options -->
    
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
                        <a href="<%=request.getContextPath() %>/User/user_index.jsp">Home</a> /Login
                   </div>
                </div>
                <!-- End crumbs --> 

                <!-- Title - Search--> 
                <div class="row title">
                    <!-- Title --> 
                    <div class="col-md-9">
                        <h1>Login
                          <!--   <span class="subtitle-section">
                               Pages Styles
                                <span class="left"></span>
                                <span class="right"></span>
                            </span> -->
                            <span class="line-title"></span>
                        </h1>
                    </div>
                    <!-- End Title--> 

                    <!-- Search--> 
                    <!-- <div class="col-md-3">
                        <form class="search" action="#" method="Post">
                            <div class="input-group">
                                <input class="form-control" placeholder="Search..." name="email"  type="email" required="required">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="submit" name="subscribe" >Go!</button>
                                </span>
                            </div>
                        </form>  
                    </div> -->
                    <!-- End Search--> 
                </div>
                <!-- End Title -Search --> 
              
            </div>
        </section>   
        <!-- End Title Section --> 

        <!-- Section area -->
        <section class="paddings">
            <div class="container">
                <a:if test="${sessionScope.msg!=null}">
					<h2 class="col-md-12" style="background-color:  red!IMPORTANT;">${sessionScope.msg}</h2>
           		<a:remove var="msg" scope="session"/>
           		</a:if>

                 <div class="row register padding-top-mini">
                    <form action="<%= request.getContextPath() %>/Verification" method="post">
                        <div class="col-md-2 custom_input_file">
                            <i class="fa fa-picture-o"></i>
                            <!-- <div class="custom-input_file">
                                <input type="file"  class="input_file" />
                                Upload photo Agent
                            </div> -->
                        </div>
                        <div class="col-md-10">
                            <div class="row padding_top_mini">
                            	
                                <div class="col-md-4">
                                    <input placeholder="Username" type="text" name="u_uname" required>
                                </div>
								
                                <div class="col-md-4">
                                    <input placeholder="Password" type="password" pattern=".{6,16}" title="Please Enter 5 to 10 " name="u_pass" required>
                                </div>
                            </div>
						</div>				
						<div class="col-md-12">
                        	<input type="hidden" name="login" value="true">
                            <input type="submit" class="btn btn-primary" value="Submit">
                        </div>
                    </form>
                    <a href="<%=request.getContextPath()%>/User_Reg_Controller?flag=load">Registration |</a>
                    <a href="<%=request.getContextPath()%>/User/forgotPassword.jsp">Forgot Password | </a>
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