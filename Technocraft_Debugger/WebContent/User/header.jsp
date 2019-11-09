<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
<!-- Header-->
        <header class="animated fadeInDown delay1">           
            <div class="container">
                <div class="row">

                    <!-- Logo-->
                    <div class="col-md-3 logo">
                        <a href="<%=request.getContextPath()%>/User/user_index.jsp" title="Return Home">                            
                            <!-- Technocraft Debugger --><img src="<%=request.getContextPath() %>/User/images/mylogo.png" height="75px"> 
                        </a>
                    </div>
                    <!-- End Logo-->
                    <%-- <a href="<%=request.getContextPath() %>/login?flag=logout">Sign Out</a> --%>                      
                    <!-- Nav-->
                    <nav class="col-md-9">
                        <!-- Menu-->
                        <div class="padding-top">
                        <ul id="menu" class="sf-menu row padding-top">
   						
                            <li>
                                <a href="<%=request.getContextPath()%>/User/user_index.jsp">HOME </a>
                            </li>
                            
                        <a:forEach items="${sessionScope.category}" var="cat"> 
                            <li><a href="#">${cat.cat_name}<i class="fa fa-angle-down"></i></a>
                                <ul>
                                <a:forEach items="${sessionScope.subcategory}" var="subcat">                                  
                                    <a:if test="${subcat.c.cat_name == cat.cat_name}">
                                    	<a:if test="${cat.cat_name eq 'JOB'}">
                                    		<li><a href="<%= request.getContextPath()%>/sub_cat_detail_Controller?flag=job_list&id=${subcat.sub_cat_id}">${subcat.sub_cat_name}</a></li>
                                    	</a:if>
                                    	<a:if test="${cat.cat_name eq 'EXAM'}">
                                    		<li><a href="<%= request.getContextPath()%>/sub_cat_detail_Controller?flag=exam_list&id=${subcat.sub_cat_id}">${subcat.sub_cat_name}</a></li>
                                    	</a:if>
                                    </a:if>
                                </a:forEach>
                                </ul>
                                
                            </li>
                         </a:forEach>
                         
                         <li><a href="<%= request.getContextPath()%>/User/about.jsp">ABOUT</a></li>
                            <%-- <li>
                                <a href="feature-princing-tables.html">FEATURES <i class="fa fa-angle-down"></i></a>
                                <ul>  
                                    <li>
                                        <a href="#">Sliders Options<i class="fa fa-angle-right"></i></a>
                                        <ul>
                                            <li><a href="index.html">Camera Slider Advance Captions</a></li>
                                             <li><a href="index-one-page.html">Camera Slider Simple Captions</a></li>
                                            <li><a href="index-alternative.html">Flex Slider ( Video option)</a></li>
                                        </ul>
                                    </li>  
                                    <li>
                                        <a href="#">Pages <i class="fa fa-angle-right"></i></a>
                                        <ul>
                                            <li><a href="page-register.html">Register User</a></li>                              
                                            <li><a href="page-full-width.html">Full Width</a></li>
                                            <li><a href="page-left-sidebar.html">Left Sidebar</a></li>
                                            <li><a href="page-right-sidebar.html">Right Sidebar</a></li>
                                            <li><a href="page-404.html">404 Page</a></li>
                                            <li><a href="page-faq.html">FAQ</a></li>
                                            <li><a href="sitemap.html">Sitemap</a></li>
                                         </ul>
                                    </li> 
                                    <li>
                                        <a href="#">Headers <i class="fa fa-angle-right"></i></a>
                                        <ul>
                                            <li><a href="feature-header-1.html">Header Version 1</a></li>
                                            <li><a href="feature-header-2.html">Header Version 2</a></li>
                                            <li><a href="feature-header-3.html">Header Version 3</a></li>
                                        </ul>
                                    </li> 
                                    <li>
                                        <a href="#">Footers <i class="fa fa-angle-right"></i></a>
                                        <ul>
                                            <li><a href="feature-footer-1.html#footer">Footer Version 1</a></li>
                                            <li><a href="feature-footer-2.html#footer">Footer Version 2</a></li>
                                            <li><a href="feature-footer-3.html#footer">Footer Version 3</a></li>
                                        </ul>
                                    </li>                           
                                    <li><a href="feature-princing-tables.html">Princing Tables</a></li>
                                    <li><a href="feature-grid-system.html">Grind System</a></li>
                                    <li><a href="feature-typograpy.html">Tipograpy</a></li>
                                    <li><a href="feature-icons.html">Icons</a></li>
                                    <li><a href="feature-elements.html">Elements</a></li>
                                 </ul>
                            </li>   
                            <li>
                                <a href="work-4-columns.html">WORK <i class="fa fa-angle-down"></i></a>
                                <ul>                                  
                                    <li><a href="work-4-columns.html">4 Columns</a></li>
                                    <li><a href="work-3-columns.html">3 Columns</a></li>
                                    <li><a href="work-2-columns.html">2 Columns</a></li>
                                    <li><a href="single-work.html">Single Work</a></li>
                                </ul>
                            </li>                                
                                <li>
                                <a href="blog.html">BLOG <i class="fa fa-angle-down"></i></a>
                                <ul>                                  
                                    <li><a href="blog.html">Post</a></li>
                                    <li><a href="blog-post.html">Single Post</a></li>
                                </ul>
                            </li>    --%>                                                                     
                            <li><a href="<%= request.getContextPath()%>/User/contact.jsp">CONTACT</a></li>
                        </ul>
                        </div>
                        <!-- End Menu-->
                    </nav>
                    <!-- End Nav-->
                    
                </div><!-- End Row-->
            </div><!-- End Container-->
        </header>
        <!-- End Header-->