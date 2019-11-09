<!DOCTYPE html>
<html lang="en">
  <head>
  
    <meta charset="utf-8">
    <title>Tecnocraft Debuger | Give Feedback</title> 
    <meta name="keywords" content="HTML5 Template" />
    <meta name="description" content="Technocraft Debugger">
    <meta name="author" content="iwthemes.com">   

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Theme CSS -->
    <link href="css/style.css" rel="stylesheet" media="screen">

    <!-- Skins Theme -->
    <link href="<%= request.getContextPath()%>/User/css/blue.css" rel="stylesheet" media="screen" class="skin">

    <!-- Favicons -->
    <link rel="shortcut icon" href="<%= request.getContextPath()%>/User/images/favicon.png">
    <link rel="apple-touch-icon" href="<%= request.getContextPath()%>/User/images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<%= request.getContextPath()%>/User/images/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<%= request.getContextPath()%>/User/images/apple-touch-icon-114x114.png">  

    <!-- Head Libs -->
    <script src="<%= request.getContextPath()%>/User/js/modernizr.js"></script>

    <!--[if lte IE 9]>
        <script src="js/html5shiv.js"></script>
        <script src="js/respond.js"></script>
    <![endif]-->

    <!-- styles for IE -->
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />            
    <![endif]-->

    <!-- Skins Changer-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/jsapi.js"></script>
   
  </head>
  <body> 

    <!-- Themez-options -->
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

         <!-- Login Client -->
        <div class="jBar">
          <div class="container">            
              <div class="row">    

                  <div class="col-md-10">
                     <div class="row padding-top-mini">
                        <!-- Item service-->
                        <div class="col-md-4">
                            <div class="item-service border-right">
                                <div class="row head-service">
                                    <div class="col-md-2">
                                        <i class="fa fa-check-square"></i>                             
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Login or create new account.</h5>
                                    </div>
                                </div>  
                                <p>Pellentesque habitant morbi fames ac turpis egestas. Vestibulum tortor quam. Pellentesque habitant</p>
                            </div>
                        </div>      
                        <!-- End Item service-->

                        <!-- Item service-->
                        <div class="col-md-4">
                            <div class="item-service border-right">
                                <div class="row head-service">
                                    <div class="col-md-2">
                                        <i class="fa fa-star"></i>                             
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Review your order.</h5>
                                    </div>
                                </div>  
                                <p>Pellentesque habitant morbi fames ac turpis egestas. Vestibulum tortor quam Pellentesque habitant.</p>
                            </div>
                        </div>      
                        <!-- End Item service-->

                        <!-- Item service-->
                        <div class="col-md-4">
                            <div class="item-service border-right">
                                <div class="row head-service">
                                    <div class="col-md-2">
                                        <i class="fa fa-credit-card"></i>                             
                                    </div>
                                    <div class="col-md-10">
                                        <h5>Payment And FREE shipment.</h5>
                                    </div>
                                </div>  
                                <p>Pellentesque habitant morbi fames ac turpis egestas. Vestibulum tortor quam. Pellentesque habitant</p>
                            </div>
                        </div>      
                        <!-- End Item service-->
                     </div>
                  </div>

                  <div class="col-md-2">
                      <h5>Client Login</h5>
                      <form>
                          <input type="email" placeholder="Username" required>
                          <input type="password" placeholder="Password" required>
                          <input type="submit" class="btn btn-primary" value="sign in">
                          <span>Or</span>                       
                          <input type="submit" class="btn btn-primary" value="Register">
                      </form>
                  </div>

                            
                  <span class="jTrigger downarrow"><i class="fa fa-minus"></i></span>
              </div>
          </div>
      </div>
      <span class="jRibbon jTrigger up" title="Login"><i class="fa fa-plus"></i></span>
      <div class="line"></div>
      <!-- End Login Client -->

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
                                 <li><a href="#"><img src="<%= request.getContextPath()%>/User/images/spanish.png" alt="">Spanish</a></li>
                                 <li><a href="#"><img src="<%= request.getContextPath()%>/User/images/english.png" alt="">English</a></li>
                                 <li><a href="#"><img src="<%= request.getContextPath()%>/User/images/frances.png" alt="">Frances</a></li>
                                 <li><a href="#"><img src="<%= request.getContextPath()%>/User/images/portugues.png" alt="">Portuguese</a></li>
                            </ul>
                          </li>                      
                        </ul>
                    </li>
                </ul> 
            </div>            
        </section>
        <!-- Info Head -->

	<%@ include file="header.jsp" %>
        <!-- Title Section -->           
        <section class="title-section">
            <div class="container">
                <!-- crumbs --> 
                <div class="row crumbs">
                   <div class="col-md-12">
                        <a href="<%= request.getContextPath()%>/User/user_index.jsp">Home</a> / Feedback
                   </div>
                </div>
                <!-- End crumbs --> 

                <!-- Title - Search--> 
                <div class="row title">
                    <!-- Title --> 
                    <div class="col-md-9">
                        <h1>Feedback
                            <span class="subtitle-section">
                               Give Feedback
                                <span class="left"></span>
                                <span class="right"></span>
                            </span>
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
                

                 <div class="row register padding-top-mini">
                    <form action="<%= request.getContextPath() %>/User_Feedback_Controller" method="post">
                        <div class="col-md-10">
                            <div class="row">
                                <div class="col-md-4">
                                    <input placeholder="User Name" type="text" name="fb_username"required>
                                </div>
                                <div class="col-md-4">
                                    <input placeholder="Your Email" type="email" name="fb_email" required>
                                </div>
                            </div>
							
							
							<div class="register">
								<div class="col-md-4">
									<textarea style="width:620px" id="message" placeholder="Enter Your Message Here" name="fb_message" class="row" required ></textarea> 
								</div>
							</div>
							<div class="col-md-12">
								<input type="hidden" name="flag" value="insert">
								<input type="submit" class="btn btn-primary" value="Submit">
							</div>
                        </div>
                        
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
    <script src="js/jquery.min.js"></script>
     <!-- jQuery local-->    
    <script>window.jQuery || document.write('<script src="js/jquery.js"><\/script>')</script>    
    <!--Nav-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/tinynav.js"></script> 
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/superfish.js"></script>  
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/hoverIntent.js"></script> 
    <script src="<%= request.getContextPath()%>/User/js/jquery.sticky.js" type="text/javascript"></script>                                           
    <!--Totop-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/jquery.ui.totop.js" ></script>  
    <!--Slide-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/camera.js" ></script>      
    <script type='text/javascript' src='<%= request.getContextPath()%>/User/js/jquery.easing.1.3.min.js'></script>  
    <!--FlexSlider-->
    <script src="<%= request.getContextPath()%>/User/js/jquery.flexslider.js"></script> 
    <!--Ligbox--> 
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/jquery.fancybox.js"></script> 
    <!-- carousel.js-->
    <script src="<%= request.getContextPath()%>/User/js/carousel.js"></script>  
    <!-- Twitter Feed-->
    <script src="<%= request.getContextPath()%>/User/js/jquery.tweet.js"></script> 
    <!-- flickr Feed-->
    <script src="<%= request.getContextPath()%>/User/js/jflickrfeed.min.js"></script>  
    <!--Scroll-->   
    <script src="<%= request.getContextPath()%>/User/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <!-- Nicescroll -->
    <script src="<%= request.getContextPath()%>/User/js/jquery.nicescroll.js"></script>
    <!-- Maps -->
    <script src="<%= request.getContextPath()%>/User/js/gmap3.js"></script>
    <!-- Filter -->
    <script src="<%= request.getContextPath()%>/User/js/jquery.isotope.js" type="text/javascript"></script>
    <!--Theme Options-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/theme-options.js"></script>
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/jquery.cookies.js"></script>                                
    <!-- Bootstrap.js-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/bootstrap.js"></script>
    <!--MAIN FUNCTIONS-->
    <script type="text/javascript" src="<%= request.getContextPath()%>/User/js/main.js"></script>
    <!-- ======================= End JQuery libs =========================== -->
        
    </body>
</html>