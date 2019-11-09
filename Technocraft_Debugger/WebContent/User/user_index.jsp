<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
 
    <title>Tecnocraft Debuger</title> 
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
    <script src="js/modernizr.js"></script>


	<!-- Pay Pal -->
	



    <!--[if lte IE 9]>
        <script src="js/html5.js"></script>
        <script src="js/respond.js"></script>
    <![endif]-->

    <!-- styles for IE -->
    <!--[if lte IE 8]>
        <link rel="stylesheet" href="<%=request.getContextPath() %>/User/css/ie.css" type="text/css" media="screen" />            
    <![endif]-->

    <!-- Skins Changer-->
    <script type="text/javascript" src="<%=request.getContextPath() %>/User/js/jsapi.js"></script>
	
	<!--<script type="text/javascript" src="www.google.com/jsapi"></script>-->
   
  </head>
  <body> 
	<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
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
                <li class="wide">Wide</li>
                <li class="boxed">Boxed</li> 
                <li class="boxed-margin active">Boxed Margin</li>               
            </ul>
            <span>WEBSITE TYPE</span>
           <ul class="layout-style">      
                <li class="active"><a href="index.html">Corporate</a></li>
                <li><a href="index-creative.html">Creative</a></li>
                <li><a href="index-one-page.html" >One Page</a></li>                
            </ul>  
            <div class="patterns" style="display:block;">
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
                    <li class="bg9"></li>
                    <li class="bg10"></li> 
                    <li class="bg11"></li>                   
                </ul>  
            </div>
    </div>
    <!-- End Theme-options -->
    
    <!-- layout-->
    <div id="layout" class="layout-Wide-margin">

        <!-- Info Head -->
        <section class="info-head">  
            <div class="container">
                <ul>  
                    <li><i class="fa fa-headphones"></i> 01800034567</li>
                    <li><i class="fa fa-comment"></i> <a href="#">Live chat</a></li>
                    <li><i class="fa fa-globe"></i> <a href="#">Language<i class="fa fa-angle-down"></i></a></li>
                </ul> 
            </div>            
        </section>
        <!-- Info Head -->
		<%@ include file="topbar.jsp" %>
        <%@ include file="header.jsp" %>
		

        <!-- Slide -->           
        <section class="camera_wrap camera_white_skin" id="slide">

            <!-- Item Slide style_one no picture--> 
            <div  data-src="<%=request.getContextPath() %>/User/images/4(1).jpg">
                <div class="style_one">
                    <div class="container">
                        <div class="row">                                
                            <div class="col-md-8">
                                <h1 class="animated bounceInRight delay1">
                                    
                                    <span>
                                        <span>  </span> 
                                    </span>
                                </h1>
                                <%-- <p class="lead animated bounceInUp delay2">We develop original products, innovative and  quality high.</p>
                                 <a  class="btn btn-lg btn-primary animated bounceInUp delay3" href="#">View More</a> --%>
                            </div>
                        </div>  
                    </div>                                                                                         
                </div>
            </div>
            <!-- End Item Slide style_one no picture-->  

            <!-- Item Slide style_one--> 
            <div  data-src="<%=request.getContextPath() %>/User/images/fz69hd.jpg">
                <div class="style_one">
                    <div class="container">
                        <div class="row">
                              <!-- Item Boxes Info -->
<!--                               <div class="col-md-4 animated bounceInDown delay1">
                                <div class="boxes-info">
                                    <h3>FULLY RESPONSIVE<i class="fa fa-thumbs-up"></i></h3>
                                    <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                                    <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                                </div>
                              </div>
                              End Item Boxes Info

                              Item Boxes Info
                              <div class="col-md-4 animated bounceInDown delay2">
                                <div class="boxes-info">
                                    <h3>RETINA DISPLAY<i class="fa fa-apple"></i></h3>
                                    <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                                    <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                                </div>
                              </div>
                              End Item Boxes Info

                              Item Boxes Info
                              <div class="col-md-4 animated bounceInDown delay3">
                                <div class="boxes-info">
                                    <h3>BOOTSTRAP 3.0<i class="fa fa-android"></i></h3>
                                    <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                                    <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                                </div>
                              </div> -->
                              <!-- End Item Boxes Info -->
                          </div>
                    </div>                                                                                         
                </div>
            </div>
            <!-- End Item Slide style_one -->  

            <!-- Item Slide style_one--> 
            <div  data-src="<%=request.getContextPath() %>/User/images/online-exam.jpg">
                <div class="style_one">
                    <div class="container">
                        <div class="row">                                
                            <%-- <div class="col-md-8">
                                <h1 class="animated bounceInRight delay1">
                                    CORPORATE WEBSITE
                                    <span>
                                        <span> RESPONSIVE </span> DESING
                                    </span>
                                </h1>
                                <p class="lead animated bounceInUp delay2">We develop original products, innovative and  quality high.</p>
                                <a  class="btn btn-lg btn-primary animated bounceInUp delay3" href="#">View More</a>
                            </div> --%>
                            <div class="col-md-4">
                                <img src="<%=request.getContextPath() %>/User/images/1.png" alt="" class="img-responsive animated bounceInDown delay4">
                            </div>
                        </div>  
                    </div>                                                                                         
                </div>
            </div>
            <!-- End Item Slide style_one -->  

            <!-- Item Slide style_two--> 
            <div  data-src="<%=request.getContextPath() %>/User/images/3(1).jpg">
                <%-- <div class="style_two"> 
                    <h1 class="animated bounceInDown delay1">
                        CLEAN AND EASY
                        <span>
                            BASED  ON BOOTSTRAP 3.0
                            <span class="border"></span>
                        </span>
                    </h1>
                    <p class="lead animated bounceInUp delay2">We develop original products, innovative and  quality high.</p>
                     <a class="btn btn-lg btn-primary animated bounceInUp delay3" href="#">View More</a>
                </div> --%>
            </div>
            <!-- End Item Slide style_two --> 


        </section>   
        <!-- End Slide --> 

	<a:if test="${sessionScope.uName == null}">
        <!-- box-action -->
       
        <section class="box-action">
            <div class="container"> 
                <div class="title">
                    <p class="lead">Get Job Easily From Our Site</p>
                </div>
                <div class="button">
                    <a href="<%= request.getContextPath() %>/User_Reg_Controller?flag=load" target="_blank">REGISTER NOW</a>
                    <span class="arrow_box_action"></span>
                </div>
            </div>
        </section>
         
        <!-- End box-action-->
	</a:if>
        <!-- Services -->
        <section class="paddings services position-relative">
            <div class="container">
                
                <i class="fa fa-cogs icon-section top right"></i>                

                <!-- Title Heading --> 
                <div class="titles-heading">
                    <div class="line"></div>
                     <h1>Job & Exams
                        <span>
                          <i class="fa fa-star"></i>  
                          Apply For Job And Exam
                          <i class="fa fa-star"></i>  
                        </span>
                     </h1>
                </div> 
                <!-- End Title Heading --> 

              <!-- Row fuid-->
              <div class="row padding-top">
                 <!-- Item service-->
                 <a:forEach items="${sessionScope.job}" var="job">
                 	<a:if test="${job.job_status eq '1'}">
                  <div class="col-md-4">
                      <div class="item-service border-right">
                          <div class="row head-service">
                         	  <div class="col-md-2">
                                  <i class="fa fa-star"></i>                             
                              </div>
                              
                              
                              <div class="col-md-10"> 
                                  <h3><a href="<%=request.getContextPath() %>/Job_Detail_Controller?flag=job_detail&id=${job.job_id}">${job.job_title}</a></h3>
                              </div>
                          </div>                          
                          
                          	<p>${job.job_description}</p>
                      </div>
                  </div>      
                  </a:if>
                  </a:forEach>
                  
                  <div class="row">
                 <!-- Item service-->
                 <a:forEach items="${sessionScope.exam}" var="exam"> 
                  <a:if test="${exam.exam_status eq '1'}">
                  <div class="col-md-4">
                      <div class="item-service border-right">
                          <div class="row head-service">
                              <div class="col-md-2">
                                  <i class="fa fa-thumbs-up"></i>                    
                              </div>
                              <div class="col-md-10">
                              	<h3><a href="<%=request.getContextPath() %>/Exam_Detail_Controller?flag=exam_detail&id=${exam.exam_id}">${exam.exam_name}</a></h3>  
                              </div>
                          </div>                          
                          <p>${exam.exam_desc}</p>
                      </div>
                  </div>  
                  </a:if>
                  </a:forEach>      
                  <!-- End Item service-->
                  <!-- End Item service-->

                  <%-- <!-- Item service-->
                  <div class="col-md-4">
                      <div class="item-service border-right">
                          <div class="row head-service">
                              <div class="col-md-2">
                                 <i class="fa fa-fire"></i>                            
                              </div>
                              <div class="col-md-10">
                                  <h4>Ultra Hot Design</h4>
                                  <h5>tristique senectus malesuada</h5>
                              </div>
                          </div>                          
                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                      </div>
                  </div>      
                  <!-- End Item service-->

                  <!-- Item service-->
                  <div class="col-md-4">
                      <div class="item-service">
                          <div class="row head-service">
                              <div class="col-md-2">
                                  <i class="fa fa-cogs"></i>                    
                              </div>
                              <div class="col-md-10">
                                  <h4>Free Updates and Support</h4>
                                  <h5>tristique senectus malesuada</h5>
                              </div>
                          </div>                          
                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                      </div>
                  </div>      
                  <!-- End Item service-->
                 
              </div>
              <!-- End Row fuid-->

              <!-- Row fuid-->
              <div class="row">
                 <!-- Item service-->
                  <div class="col-md-4">
                      <div class="item-service border-right">
                          <div class="row head-service">
                              <div class="col-md-2">
                                  <i class="fa fa-thumbs-up"></i>                    
                              </div>
                              <div class="col-md-10">
                              <a:forEach items="${sessionScope.exam}" var="exam"> 
                                  <h4>${exam.exam_name}</h4>
                              </a:forEach>    
                                  <h5>tristique senectus malesuada</h5>
                              </div>
                          </div>                          
                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                      </div>
                  </div>      
                  <!-- End Item service-->

                  <!-- Item service-->
                  <div class="col-md-4">
                      <div class="item-service border-right">
                          <div class="row head-service">
                              <div class="col-md-2">
                                  <i class="fa fa-plane"></i>                             
                              </div>
                              <div class="col-md-10">
                                  <h4>Flexible Solutions</h4>
                                  <h5>tristique senectus malesuada</h5>
                              </div>
                          </div>                          
                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                      </div>
                  </div>      
                  <!-- End Item service-->

                  <!-- Item service-->
                  <div class="col-md-4">
                      <div class="item-service">
                          <div class="row head-service">
                              <div class="col-md-2">
                                    <i class="fa fa-pencil"></i>                            
                              </div>
                              <div class="col-md-10">
                                  <h4>Original Design</h4>
                                  <h5>tristique senectus malesuada</h5>
                              </div>
                          </div>                          
                          <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                      </div>
                  </div>      
                  <!-- End Item service--> --%>
                 
              </div>
              <!-- End Row fuid-->
               
            </div>
            <!-- End Container-->
        </section>
        <!-- End Services-->


        <!-- Services Slide -->
        <section class="section-gray paddings borders animation-services">
           
                <!-- Slide Services  -->
                <ul id="slide-services">
                    
                    <!-- Item Slide Services  -->
                    <li>
                        <div class="container">
                            <div class="row">
                               <div class="col-md-5 image-animations padding-top">
                                   <img src="<%=request.getContextPath() %>/User/images/1(2).png" alt="" class="image-big">
                                   <ul class="icons">
                                       <li class="one delay1"><img src="<%=request.getContextPath() %>/User/images/1(3).png" alt=""></li>
                                       <li class="two delay2"><img src="<%=request.getContextPath() %>/User/images/1(4).png" alt=""></li>
                                       <li class="three delay1"><img src="<%=request.getContextPath() %>/User/images/1(5).png" alt=""></li>
                                       <li class="four delay1"><img src="<%=request.getContextPath() %>/User/images/1(6).png" alt=""></li>
                                   </ul>
                               </div>
                               <div class="col-md-7 padding-top-mini">
                                  <!-- feature-element  -->
                                   <ul class="feature-element">
                                      <!-- Item feature-element  -->
                                      <li>       
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="line-feature"><i class="fa fa-angle-left"></i></div>
                                                <i class="fa fa-mobile cirle-feature"></i>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="text-feature">
                                                <h4>Computer Based Job & Exam</h4>
                                                As technology is becoming more and more important in our daily lives, there is a growing demand for skilled professionals who can offer quality technical support.
												</div>
                                            </div>
                                        </div>   
                                      </li>
                                      <!-- End Item feature-element  -->

                                      <!-- Item feature-element  -->
                                      <li>       
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="line-feature"><i class="fa fa-angle-left"></i></div>
                                                <i class="fa fa-hand-o-right cirle-feature"></i>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="text-feature">
                                                <h4>Mechanical Based Job & Exam</h4>
                                                Most industries rely on a form of mechanical systems and mechanical engineering is thought to be one of the most diverse of all engineering disciplines.
                                                </div>
                                            </div>
                                        </div>   
                                      </li>
                                      <!-- End Item feature-element  -->

                                      <!-- Item feature-element  -->
                                      <li>       
                                        <div class="row">
                                            <div class="col-md-5">
                                                <div class="line-feature"><i class="fa fa-angle-left"></i></div>
                                                <i class="fa fa-bookmark cirle-feature"></i>
                                            </div>
                                            <div class="col-md-7">
                                                <div class="text-feature">
                                                <h4>Electrical Based Job & Exam</h4>
                                                Electrical technicians help create, maintain and repair the electronic components and equipment used in any equipment or device that involves electricity.
                                                </div>
                                            </div>
                                        </div>   
                                      </li>
                                      <!-- End Item feature-element  -->

                                   </ul>
                                   <!-- End feature-element  -->
                                   
                               </div>
                           </div> 
                       </div> 
                    </li>
                    <!-- End Item Slide Services  -->                   

                    <!-- Item Slide Services  -->
                    <li>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 padding-top-mini">
                                   <h2 class="title-subtitle">
                                        Technocraft Debugger is incredibly beautiful and fully responsive.
                                        <span>The fastest way to grow your business with the leader in Technology.</span>
                                   </h2>
                                    <p class="delay2">Job descriptions are necessary for most people in work. A job description defines a person's role and accountability. Without a job description it is usually very difficult for a person to properly commit to, or be held accountable for, a role. This is especially so in large organizations.</p>
                                   
                                    <a class="btn btn-lg btn-primary delay4" href="#">View More</a>
                                </div>
                                <div class="col-md-6">
                                   <img src="<%=request.getContextPath() %>/User/images/1(7).jpg" alt="" class="img-responsive" />
                                </div>
                           </div> 
                        </div> 
                    </li>
                    <!-- End Item Slide Services  -->

                    <!-- Item Slide Services  -->
                    <li>
                        <div class="container">
                            <div class="row">

                                <div class="col-md-6">

                                    <div class="row">

                                        <!-- Item Work-->
                                        <div class="col-md-6">
                                            <div class="item-work">
                                                <div class="hover">
                                                    <img src="<%=request.getContextPath() %>/User/images/1(7).jpg" alt="" />                               
                                                     <a href="<%=request.getContextPath() %>/User/images/1(7).jpg" class="fancybox" title="Zoom Image"><div class="overlay"></div></a>
                                                </div>                                   
                                                <div class="info-work">
                                                    <h4>Jekas Responsive Page</h4>
                                                </div>  
                                            </div>
                                        </div>
                                        <!-- End Item Work-->
                                                            
                                        <!-- Item Work-->
                                        <div class="col-md-6">
                                             <div class="item-work">
                                                <div class="hover">
                                                    <img src="<%=request.getContextPath() %>/User/images/1(8).jpg" alt=""/>                               
                                                     <a href="<%=request.getContextPath() %>/User/images/1(8).jpg" class="fancybox" title="Zoom Image"><div class="overlay"></div></a>
                                                </div>                                   
                                                <div class="info-work">
                                                    <h4> Mycv - Html5</h4>
                                                </div>  
                                            </div>
                                        </div>  
                                        <!-- End Item Work-->
                                    </div>

                                    <div class="row">
                                         <!-- Item Work-->
                                        <div class="col-md-6">
                                            <div class="item-work">
                                                <div class="hover">
                                                    <img src="<%=request.getContextPath() %>/User/images/3(2).jpg" alt=""/>                               
                                                     <a href="<%=request.getContextPath() %>/User/images/3(2).jpg" class="fancybox" title="Zoom Image"><div class="overlay"></div></a>
                                                </div>                                   
                                                <div class="info-work">
                                                    <h4> MegaHost - Hosting</h4>
                                                </div>  
                                            </div>
                                        </div>
                                        <!-- End Item Work-->

                                         <!-- Item Work-->
                                        <div class="col-md-6">
                                            <div class="item-work">
                                                <div class="hover">
                                                    <img src="<%=request.getContextPath() %>/User/images/4(2).jpg" alt=""/>                               
                                                     <a href="<%=request.getContextPath() %>/User/images/4(2).jpg" class="fancybox" title="Zoom Image"><div class="overlay"></div></a>
                                                </div>                                   
                                                <div class="info-work">
                                                    <h4> Studio - Landing Page</h4>
                                                </div>  
                                            </div>
                                        </div>
                                        <!-- End Item Work-->
                                    </div>

                                </div>

                                 <div class="col-md-6 padding-top-mini">
                                   <h2 class="title-subtitle">
                                        Technocraft Debugger is fully Retina Desing.
                                        <span>The fastest way to grow your business with the leader in Technology.</span>
                                   </h2>
                                    <p class="delay2">The process of writing job descriptions is actually quite easy and straight-forward. Many people tend to start off with a list of 20-30 tasks, which is okay as a start, but this needs refining to far fewer points, around 8-12 is the ideal.</p>
                                    
                                    <ul class="list"> 
                                        <li><i class="fa fa-check"></i> Communicating.</li>
                                        <li><i class="fa fa-check"></i> Planning and Organizing.</li>
                                        <li><i class="fa fa-check"></i> Managing onformation or general administration support. </li>
                                        <li><i class="fa fa-check"></i> Monitoring and Reporting. </li>
                                        <li><i class="fa fa-check"></i> Self-Development. </li>
                                    </ul>                                    
                                </div>


                           </div> 
                        </div> 
                    </li>
                    <!-- End Item Slide Services  -->
              
                </ul>  
                <!-- End Slide Services  -->      
         
        </section>
        <!-- End Services Slide-->
       


        <!-- Sponsors -->
        <section class="sponsors">
            <div class="overflow-sponsors">
                <div class="container paddings">

                   <h2>We have  earned the trust of <span> 25,869 </span>customers , including  these fine  companies</h2>
                   
                    <!-- Sponsors -->
                    <ul id="sponsors">
						
                        <!-- Sponsor -->
                        <a:forEach items="${sessionScope.CompanyReg}" var="comreg">
                        <li data-toggle="tooltip" title data-original-title="${comreg.c_web_address}">
                            <a href="https://${comreg.c_web_address}" target="_blank">${comreg.c_name}</a>
                        </li> 
                        </a:forEach>
                        <%--  
                        <!-- Item Sponsor -->

                        <!-- Sponsor -->
                        <li data-toggle="tooltip" title data-original-title="Tooltip Hover">
                            <a href="#"><img src="<%=request.getContextPath() %>/User/images/log(2).png" alt=""></a>
                        </li>  
                        <!-- Item Sponsor -->

                        <!-- Sponsor -->
                        <li data-toggle="tooltip" title data-original-title="Tooltip Hover">
                            <a href="#"><img src="<%=request.getContextPath() %>/User/images/log(3).png" alt=""></a>
                        </li>  
                        <!-- Item Sponsor -->

                        <!-- Sponsor -->
                        <li data-toggle="tooltip" title data-original-title="Tooltip Hover">
                            <a href="#"><img src="<%=request.getContextPath() %>/User/images/log(4).png" alt=""></a>
                        </li>  
                        <!-- Item Sponsor -->

                        <!-- Sponsor -->
                        <li data-toggle="tooltip" title data-original-title="Tooltip Hover">
                            <a href="#"><img src="<%=request.getContextPath() %>/User/images/log(5).png" alt=""></a>
                        </li>  
                        <!-- Item Sponsor -->

                        <!-- Sponsor -->
                        <li data-toggle="tooltip" title data-original-title="Tooltip Hover">
                            <a href="#"><img src="<%=request.getContextPath() %>/User/images/log(6).png" alt=""></a>
                        </li>  
                        <!-- Item Sponsor -->

                        <!-- Sponsor -->
                        <li data-toggle="tooltip" title data-original-title="Tooltip Hover">
                            <a href="#"><img src="<%=request.getContextPath() %>/User/images/log(4).png" alt=""></a>
                        </li>  
                        <!-- Item Sponsor -->     
						
 --%>                    </ul>
                    <!-- End Sponsors --> 
					
                    <div class="circle">
                        <i class="fa fa-thumbs-up"></i>
                    </div>

                </div>
            </div>
        </section>
        <!-- End Sponsors -->

        <!-- post-testimonials -->
        <section class="paddings post-testimonials">
            <div class="container">
               <div class="row">  

                    <!-- Post --> 
                    <div class="col-md-6">
                        <h3>Latest Job & Posts</h3>
                         <!-- Box -->
                        <ul class="box">
                            <!-- Item Post --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="date"><span><i class="fa fa-calendar-o"></i>Sep</span>15</div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Computer</h4>
                                        <p>Job for computer students. </p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item Post --> 

                             <!-- Item Post --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="date"><span><i class="fa fa-calendar-o"></i>Aug</span>20</div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Electrical</h4>
                                        <p>Job for electrical stduents.</p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item Post --> 

                            <!-- Item Post --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="date"><span><i class="fa fa-calendar-o"></i>Jan</span>10</div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Mechanical</h4>
                                        <p>Exam for mechanical students.</p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item Post --> 

                            <!-- Item Post --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="date"><span><i class="fa fa-calendar-o"></i>Nov</span>05</div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Civil</h4>
                                        <p>Exam for civil engineers students.</p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item Post --> 

                            <!-- Item Post --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="date"><span><i class="fa fa-calendar-o"></i>Feb</span>28</div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Computer</h4>
                                        <p>Exam for computer students.</p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item Post --> 

                        </ul>
                        <!-- End Box -->
                    </div>
                    <!-- End Post --> 

                    <!-- Testimonial --> 
                    <div class="col-md-6">
                        <h3>Recent Users</h3>
                        <!-- Box -->
                        <ul class="box">
                            
                            <!-- Item testimonial --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="photo">
                                        <img src="<%=request.getContextPath() %>/User/images/1.jpg" alt="">
                                    </div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-9">
                                    <div class="name">
                                        <h4>Federic Gordon
                                            <span>Fedy</span>
                                        </h4>                                        
                                    </div>
                                    <p>Successfully applied for computer job & pass out exams.</p>
                                </div>
                            </li>
                            <!-- End Item testimonial --> 

                            <!-- Item testimonial --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="photo">
                                        <img src="<%=request.getContextPath() %>/User/images/2.jpg" alt="">
                                    </div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-9">
                                    <div class="name">
                                        <h4>Ricky Jackson
                                            <span>Jonny</span>
                                        </h4>                                        
                                    </div>
                                    <p>Successfully applied for electrical job & pass out exams.</p>
                                </div>
                            </li>
                            <!-- End Item testimonial --> 

                            <!-- Item testimonial --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="photo">
                                        <img src="<%=request.getContextPath() %>/User/images/3.jpg" alt="">
                                    </div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-9">
                                    <div class="name">
                                        <h4>Michale Rooter
                                            <span>Root</span>
                                        </h4>                                        
                                    </div>
                                    <p>Successfully applied for mechanical job & pass out exams.</p>
                                </div>
                            </li>
                            <!-- End Item testimonial --> 

                            <!-- Item testimonial --> 
                            <li class="row">
                                <!-- Date --> 
                                <div class="col-md-3">
                                    <div class="photo">
                                        <img src="<%=request.getContextPath() %>/User/images/man1.png" alt="">
                                    </div>
                                </div>
                                <!-- End Date --> 
                                <div class="col-md-9">
                                    <div class="name">
                                        <h4>Cameron White
                                            <span>Cam</span>
                                        </h4>                                        
                                    </div>
                                    <p>Only applied for job.</p>
                                </div>
                            </li>
                            <!-- End Item testimonial --> 

                        </ul>
                        <!-- End Box -->
                    </div>
                    <!-- End Testimonial --> 

               </div>                
            </div>
        </section>
        <!-- End post-testimonials -->

         <!-- Boxes Info -->
        <section class="boxes">
            <div class="overflow-boxes">
                <div class="container paddings">
                   
                  <div class="row">
                      <!-- Item Boxes Info -->
                      <a:forEach items="${sessionScope.package1}" var="i">
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3><a href="<%=request.getContextPath() %>/Package_Detail_Controller?flag=pack_detail&id=${i.pack_id}">${i.pack_name}</a><i class="fa fa-thumbs-up"></i></h3>
                            <h5>${i.pack_price}</h5>
                            <p>${i.pack_validity}</p>
                        </div>
                      </div>
                      </a:forEach>
                      <!-- End Item Boxes Info -->

                      <!-- Item Boxes Info -->
                      <!-- <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>CORPORATE<i class="fa fa-star"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
                      End Item Boxes Info

                      Item Boxes Info
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>CREATIVE<i class="fa fa-apple"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
                      End Item Boxes Info

                      Item Boxes Info
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>UNIQUE<i class="fa fa-android"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
 -->                      <!-- End Item Boxes Info -->
                  </div>

                </div>
            </div>
        </section>
        <!-- End Boxes Info -->

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