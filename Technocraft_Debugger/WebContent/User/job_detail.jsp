<!DOCTYPE html>
<html lang="en">
 <%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %> 
<!-- Mirrored from html.iwthemes.com/Technocraft Debugger/services.html by HTTrack Website Copier/3.x [XR&CO'2013], Thu, 10 Apr 2014 15:20:27 GMT -->
<head>
    <meta charset="utf-8">
    <title>Tecnocraft Debuger | Job Details</title> 
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
        <link rel="stylesheet" href="<%=request.getContextPath() %>/User/ie.css" type="text/css" media="screen" />            
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
                <li><a class="colorbox blue" href="servicesca00.html?theme=blue" title="Blue Skin"></a></li>
                <li><a class="colorbox red" href="services0e99.html?theme=red" title="Red Skin"></a></li>
                <li><a class="colorbox yellow" href="services2746.html?theme=yellow" title="Yellow Skin"></a></li>
                <li><a class="colorbox green" href="servicesaf91.html?theme=green" title="Green Skin"></a></li>
                <li><a class="colorbox orange" href="servicesceb0.html?theme=orange" title="Orange Skin"></a></li>
                <li><a class="colorbox purple" href="services938c.html?theme=purple" title="Purple Skin"></a></li>
                <li><a class="colorbox pink" href="servicesa820.html?theme=pink" title="Pink Skin"></a></li>
                <li><a class="colorbox cocoa" href="services6788.html?theme=cocoa" title="Cocoa Skin"></a></li>
            </ul>
            <span>LAYOUT STYLE</span>
            <ul class="layout-style">      
                <li class="wide active">Wide</li>
                <li class="boxed">Boxed</li> 
                <li class="boxed-margin">Boxed Margin</li>               
            </ul>
            <span>WEBSITE TYPE</span>
           <ul class="layout-style">      
                <li class="active"><a href="index-2.html">Corporate</a></li>
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

		<%@ include file="topbar.jsp" %>
		<%@ include file="header.jsp" %>

       <!-- Title Section -->           
        <section class="title-section">
            <div class="container">
                <!-- crumbs --> 
                <div class="row crumbs">
                   <div class="col-md-12">
                        <a href="<%= request.getContextPath()%>/User/user_index.jsp">Home</a> / Job
                   </div>
                </div>
                <!-- End crumbs --> 

                <!-- Title - Search--> 
                <div class="row title">
                    <!-- Title --> 
                    <div class="col-md-9">
                        <h1>Job
                            <span class="subtitle-section">
                                Job Detail
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
                
                <!-- info-title-section - optional --> 
                <div class="row info-title-section">
                    <div class="col-md-2 incon-title">
                       <i class="fa fa-cogs"></i>
                    </div>
                    <div class="col-md-10">
                       <!-- <p>Interact with our system and apply for job eaisly.</p> -->
                    </div>
                </div>
                <!-- End info-title-section - optional --> 

            </div>
        </section>   
        <!-- End Title Section --> 


      
        <!-- box-action -->
        <section class="box-action">
            <div class="container">
                <div class="title">
                    <p class="lead">Purchase Any Package At Our Cost Eaisly !</p>
                </div>
                <div class="button">
                    <a href="<%=request.getContextPath()%>/User/package.jsp" target="_blank">PURCHASE NOW</a>
                    <span class="arrow_box_action"></span>
                </div>
            </div>
        </section>
        <!-- End box-action-->


        <!-- Services -->
        <section class="paddings services">
            <div class="container">
                
                <i class="fa fa-cogs icon-section right"></i>

                <!-- Title Heading --> 
                <div class="titles-heading">
                    <div class="line"></div>
                     <h1>Job Description
                        <span>
                          <i class="fa fa-star"></i>  
                          Apply For Job
                          <i class="fa fa-star"></i>  
                        </span>
                     </h1>
                </div> 
                <!-- End Title Heading --> 

              <!-- Row fuid-->
              
              <div class="row padding-top">
                 <!-- Item service-->
                 
                 <a:forEach items="${sessionScope.job_detail}" var="list">
                  <div class="col-md-4">
                      <div class="item-service border-right">
                          <div class="row head-service">
                              <div class="col-md-2">
                                  <i class="fa fa-star"></i>                             
                              </div>
                             <%--  <table border="1px">
                              <tr><td>Job Title :</td><td>${list.job_title}</td></tr>
                              <tr><td>Job Description :</td><td>${list.job_description}</td></tr>
                              <tr><td>Job Skills :</td><td>${list.job_skills}</td></tr>
                              <tr><td>Job Salary :</td><td>${list.job_salary}</td></tr>
                              <tr><td>Job Address :</td><td>${list.job_address}</td></tr>
                              <tr><td>Company Name :</td><td>${list.company_name}</td></tr>
                              <tr><td>Company Email :</td><td>${list.comapny_email}</td></tr>
                              <tr><td>Reference Name : </td><td>${list.ref_name}</td></tr>
                              <tr><td>Reference Number :</td><td>${list.ref_number}</td></tr>
                              <tr><td> 10% : </td><td>${list.ten_per}</td></tr>
                              <tr><td>12% :</td><td>${list.twelve_per}</td></tr>
                              <tr><td>Graduation% :</td><td>${list.graduation}</td></tr>
                              <tr><td>Application Date :</td><td>${list.app_date}</td></tr>
                              <tr><td>Interview Date :</td><td>${list.inter_date}</td></tr>
                              </table> --%>
                              <div class="col-md-10">
                             	   Job Title : <h4>${list.job_title}</h4>
                             	 <%--  <a:set value="${list.job_title}" var="q" scope="session"></a:set> --%>
                                  Job Description : <h4>${list.job_description}</h4>
                                  Job Skills : <h4>${list.job_skills}</h4>
                                  Job Salary : <h4>${list.job_salary}</h4>
                                  Job Address : <h4>${list.job_address}</h4>
                                  Company Name : <h4>${list.company_name}</h4>
                                  Company Email : <h4>${list.comapny_email}</h4>
                                  Reference Name : <h4>${list.ref_name}</h4>
                                  Reference Number : <h4>${list.ref_number}</h4>
                                  10% : <h4>${list.ten_per}</h4>
                                  12% : <h4>${list.twelve_per}</h4>
                                  Graduation% : <h4>${list.graduation}</h4>
                                  Application Date : <h4>${list.app_date}</h4>
                                  Interview Date : <h4>${list.inter_date}</h4>
                                </div>
                     		</div>
                     		<input type="hidden" name="flag" value="Apply">
                  			<center><a href="<%=request.getContextPath() %>/Apply_Controller?flag=Job_Apply&id=${list.job_id}&jobtitle=${list.job_title}"><input type="submit" class="btn btn-primary" value="Apply"></a></center>                          
                         </div>
                  	  </div>
                  </a:forEach>   
                  <!-- End Item service-->
                  
                  

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
                                    <p class="delay2">Technocraft Debugger explains about an online application which can provide free and effective communication between job provider and job seeker without any middle persons involved in the recruitment process. In current scenario, there is a rat race in each professional field. It is true for the job market too.</p>
                                   
                                    <a class="btn btn-lg btn-primary delay4" href="#">View More</a>
                                </div>
                                <div class="col-md-6">
                                   <img src="<%=request.getContextPath() %>/User/images/1(7).jpg" alt="" class="img-responsive">
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
                                    <p class="delay2">Technocraft Debugger portal helps both the job seekers and recruiters finding the right organization or the employees. In the case of job seekers, according to their educational qualification, experience and their preferences, website shows the list of companies to the job seeker. And, to the recruiters, provides the suitable candidates from a pool of lakhs.</p>
                                    
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

                    <!-- Item Slide Services  -->
                    <li>
                        <div class="container">
                            <div class="row">
                                <div class="col-md-6 padding-top-mini">
                                   <h2 class="title-subtitle">
                                        Video Demo Title Services
                                        <span>Subtitle demo title.</span>
                                   </h2>
                                    <p class="delay2">Our website will provide online video, so that it's very easy to interact with our system and user can easily refer their exam and job related videos. </p>
                                   
                                    <a class="btn btn-lg btn-primary delay4" href="#">View More</a>
                                </div>
                                 <div class="col-md-6">
                                   <iframe  src="http://www.youtube.com/embed/m9o7XzRaBCM"></iframe>
                                </div>
                           </div> 
                        </div> 
                    </li>
                    <!-- End Item Slide Services  -->
              
                </ul>  
                <!-- End Slide Services  -->      
         
        </section>
        <!-- End Services Slide-->


        <!-- post-testimonials -->
        <%--<section class="paddings post-testimonials shadow-top">
            <div class="container">
               <div class="row">  
                    <!-- More services --> 
                    <div class="col-md-6">
                        <h3>More Services</h3>
                         <!-- Box -->
                        <ul class="box">

                            <!-- Item More-service --> 
                            <li class="row">
                                <!-- Image Services --> 
                                <div class="col-md-3">
                                    <div class="image-more-service">
                                        <i class="fa fa-android"></i>
                                    </div>
                                </div>
                                <!-- End Image Services --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Android Apps</h4>
                                        <p>Lorem ipsum ea cum , pri no natum clita. </p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item More-service --> 

                             <!-- Item More-service --> 
                            <li class="row">
                                <!-- Image Services --> 
                                <div class="col-md-3">
                                    <div class="image-more-service">
                                        <i class="fa fa-apple"></i>
                                    </div>
                                </div>
                                <!-- End Image Services --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Mac Apps</h4>
                                        <p>Lorem ipsum ea cum , pri no natum clita. </p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item More-service --> 

                             <!-- Item More-service --> 
                            <li class="row">
                                <!-- Image Services --> 
                                <div class="col-md-3">
                                    <div class="image-more-service">
                                        <i class="fa fa-windows"></i>
                                    </div>
                                </div>
                                <!-- End Image Services --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Windows Phone Apps</h4>
                                        <p>Lorem ipsum ea cum , pri no natum clita. </p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item More-service --> 

                             <!-- Item More-service --> 
                            <li class="row">
                                <!-- Image Services --> 
                                <div class="col-md-3">
                                    <div class="image-more-service">
                                        <i class="fa fa-desktop"></i>
                                    </div>
                                </div>
                                <!-- End Image Services --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Retina web Desing</h4>
                                        <p>Lorem ipsum ea cum , pri no natum clita. </p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item More-service --> 

                            <!-- Item More-service --> 
                            <li class="row">
                                <!-- Image Services --> 
                                <div class="col-md-3">
                                    <div class="image-more-service">
                                        <i class="fa fa-thumbs-o-up"></i>
                                    </div>
                                </div>
                                <!-- End Image Services --> 
                                <div class="col-md-7">
                                    <div class="info">
                                        <h4>Full Support</h4>
                                        <p>Lorem ipsum ea cum , pri no natum clita. </p>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="link">
                                       <a href="#" title="Read More"><i class="fa fa-chevron-right"></i></a>
                                    </div>
                                </div>
                            </li>
                            <!-- End Item More-service --> 


                        </ul>
                        <!-- End Box -->
                    </div>
                    <!-- End More services --> 

                    <!-- Testimonial --> 
                    <div class="col-md-6">
                        <h3>Recent Testimonials</h3>
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
                                            <span>Front End</span>
                                        </h4>                                        
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>
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
                                        <h4>Federic Gordon
                                            <span>Front End</span>
                                        </h4>                                        
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>
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
                                        <h4>Federic Gordon
                                            <span>Front End</span>
                                        </h4>                                        
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>
                                </div>
                            </li>
                            <!-- End Item testimonial --> 

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
                                            <span>Front End</span>
                                        </h4>                                        
                                    </div>
                                    <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. </p>
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
 --%>        <!-- End post-testimonials -->
 
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
    

         <!-- Boxes Info -->
        <section class="boxes">
            <div class="overflow-boxes">
                <div class="container paddings">
                   
                  <div class="row">
                      <!-- Item Boxes Info -->
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>BUSINNESS<i class="fa fa-thumbs-up"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
                      <!-- End Item Boxes Info -->

                      <!-- Item Boxes Info -->
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>CORPORATE<i class="fa fa-star"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
                      <!-- End Item Boxes Info -->

                      <!-- Item Boxes Info -->
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>CREATIVE<i class="fa fa-apple"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
                      <!-- End Item Boxes Info -->

                      <!-- Item Boxes Info -->
                      <div class="col-md-3">
                        <div class="boxes-info">
                            <h3>UNIQUE<i class="fa fa-android"></i></h3>
                            <h5>THIS IS AN EXAMPLE OF BOX SUBTITLE</h5>
                            <p>Pellentesque habitant morbi senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam.</p>
                        </div>
                      </div>
                      <!-- End Item Boxes Info -->
                  </div>

                </div>
            </div>
        </section>
        <!-- End Boxes Info -->
       
        <!-- Important Info -->
        <section class="paddings important-info pattern-important-info">
            <div class="container">
               <div class="row">   
                    <div class="col-md-9">
                        <h1><span>Technocraft Debugger</span> is incredibly beautiful and fully responsive.</h1>
                        <p class="lead">We bring a personal and effective approach to every project we work on, which is why our clients love us and why they keep coming back.”</p>
                        <a  class="btn btn-lg" href="#">View More</a>
                    </div>
                    <div class="col-md-3">
                        <i class="fa fa-css3"></i>
                    </div>
               </div>                
            </div>
        </section>
        <!-- End Important Info -->      

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

<!-- Mirrored from html.iwthemes.com/Technocraft Debugger/services.html by HTTrack Website Copier/3.x [XR&CO'2013], Thu, 10 Apr 2014 15:20:43 GMT -->
</html>