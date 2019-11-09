
        <!-- Login Client -->
        <%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
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
                                <p>Login into our system at anytime. Register into our system for job or exam.</p>
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
                                        <h5>Purchase Package</h5>
                                    </div>
                                </div>  
                                <p>Purchase package at our cost. Our system provides different packages. </p>
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
                                        <h5>Job & Exam</h5>
                                    </div>
                                </div>  
                                <p>Refer our site for to apply for job and give exams.</p>
                            </div>
                        </div>      
                        <!-- End Item service-->
                     </div>
                  </div>
				
				<a:if test="${sessionScope.uName == null}">
                  <div class="col-md-2">
                      <h5>Client Login</h5>
                      <form method="post" action="aaa">
                          <input type="text" placeholder="Username" name="username" required>
                          <input type="password" placeholder="Password" name="password" required>
                          <input type="hidden" name="login" value="true">
                          <input type="submit" class="btn btn-primary" value="Login">
                          <span>Or</span>                       
                          <a href="<%=request.getContextPath()%>/User_Reg_Controller?flag=load"><input type="button" class="btn btn-primary" value="Register"></a>
                      </form>
                  </div>
                 </a:if>
               
                  <a:if test="${sessionScope.uName!=null}">
                  		<div class="col-md-2">
                            <a href="<%=request.getContextPath() %>/User_Reg_Controller?flag=uproedit&id=${sessionScope.userID}">
                            <div class="col-md-2">
                            	<img height="80px" width="80px" src="User/doc/${sessionScope.image}" alt="user_image" />
                            </div>
                            <div class="col-md-10">
                                <h5><%=session.getAttribute("uName")%></h5>
                            </div>  
                            </a>
                            <div class="col-md-10">                              
                        		<a href="<%=request.getContextPath() %>/login?flag=logoutuser">Sign Out</a>
                        	</div>
                        </div>
                  	</a:if>
                 
				           
                  <span class="jTrigger downarrow"><i class="fa fa-minus"></i></span>
              </div>
          </div>
      </div>
      <span class="jRibbon jTrigger up" title="Login"><i class="fa fa-plus"></i></span>
      <div class="line"></div>
      <!-- End Login Client -->

