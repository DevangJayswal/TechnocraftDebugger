<!-- Start: Sidebar -->
  <aside id="sidebar">
    <div id="sidebar-search">
      <form role="search">
        <input type="text" class="search-bar form-control" placeholder="Search">
        <i class="fa fa-search field-icon-right"></i>
        <button type="submit" class="btn btn-default hidden"></button>
      </form>
      <div class="sidebar-toggle"> <i class="fa fa-bars"></i> </div>
    </div>
    <div id="sidebar-menu">
      <ul class="nav sidebar-nav">
        <li class="active"><a href="<%=request.getContextPath()%>/Add_Event_Controller?flag=load"><span class="glyphicons glyphicons-star"></span><span class="sidebar-title">Home</span></a> </li>
        
        <li> <a class="accordion-toggle menu-open" href="#sideOne"><span class="glyphicons glyphicons-settings"></span><span class="sidebar-title">Category</span><span class="caret"></span></a>
          <ul id="sideOne" class="nav sub-nav">
            <li><a href="<%=request.getContextPath()%>/admin/add_category.jsp"><span style="width: 15px;" class="glyphicons glyphicons-edit"></span>Add Category</a></li>
            <li><a href="<%=request.getContextPath()%>/Add_cat_controller?flag=search"><span style="width: 15px;" class="glyphicons glyphicons-edit"></span>Manage Category</a></li>
            <li><a href="<%=request.getContextPath()%>/Add_cat_controller?flag=load"><span class="glyphicons glyphicons-magic"></span>Sub Category</a></li>
            <li><a href="<%=request.getContextPath()%>/Add_sub_cat_controller?flag=search"><span style="width: 15px;" class="glyphicons glyphicons-edit"></span>Manage Sub Category</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="<%=request.getContextPath()%>#sideOne"><span class="glyphicons glyphicons-adjust_alt"></span><span class="sidebar-title">Job</span><span class="caret"></span></a>
          <ul id="sideOne" class="nav sub-nav">
            <li><a href="<%=request.getContextPath()%>/Add_job_controller?flag=load&user=Admin"><span class="glyphicons glyphicons-macbook"></span>Add Job</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_job_controller?flag=search&user=Admin"><span class="glyphicons glyphicons-macbook"></span>Manage Job</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideTwo"><span class="glyphicons glyphicons-vcard"></span><span class="sidebar-title">Exam</span><span class="caret"></span></a>
          <ul id="sideTwo" class="nav sub-nav">
            <li><a href="<%=request.getContextPath() %>/Add_exam_controller?flag=load&user=Admin"><span class="glyphicons glyphicons-edit"></span> Add Exam</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_exam_controller?flag=search&user=Admin"><span class="glyphicons glyphicons-link"></span>Manage Exam</a></li>
          </ul>
        </li>
        <!-- <li> <a class="accordion-toggle" href="#sideThree"><span class="glyphicons glyphicons-table"></span><span class="sidebar-title">Tables</span><span class="caret"></span></a>
          <ul id="sideThree" class="nav sub-nav">
            <li><a href="tables.jsp"><span class="glyphicons glyphicons-justify"></span> Tables</a></li>
            <li><a href="datatables.jsp"><span class="glyphicons glyphicons-list"></span> DataTables</a></li>
          </ul>
        </li> -->
        <li> <a class="accordion-toggle" href="#sideThree"><span class="glyphicons glyphicons-cargo"></span><span class="sidebar-title">Package</span><span class="caret"></span></a>
          <ul id="sideFour" class="nav sub-nav">
            <li><a href="<%=request.getContextPath() %>/Add_package_controller?flag=load"><span class="glyphicons glyphicons-cloud"></span>Add Package</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_package_controller?flag=search"><span class="glyphicons glyphicons-cloud"></span>Manage Package</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideFour"><span class="glyphicons glyphicons-magic"></span><span class="sidebar-title">Qualification</span><span class="caret"></span></a>
          <ul id="sideFive" class="nav sub-nav">
            <li><a href="<%=request.getContextPath()%>/admin/add_qualification.jsp"><span class="glyphicons glyphicons-flash"></span>Add Qualification</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_qualification_controller?flag=search&user=Admin"><span class="glyphicons glyphicons-flash"></span>Manage Qualification</a></li>
          </ul>
        </li>
          <li> <a class="accordion-toggle" href="#sideFive"><span class="glyphicons glyphicons-warning_sign"></span><span class="sidebar-title">Questions</span><span class="caret"></span></a>
           <ul id="sideSix" class="nav sub-nav">
             <li><a href="<%=request.getContextPath() %>/Add_questions_controller?flag=load&user=Admin"><span class="glyphicons glyphicons-edit"></span> Add Questions</a></li>
             <li><a href="<%=request.getContextPath() %>/Add_questions_controller?flag=search&user=Admin"><span class="glyphicons glyphicons-global"></span>Manage Questions</a></li>
           </ul>
         </li>
          
        <li> <a class="accordion-toggle" href="#sideSix"><span class="glyphicons glyphicons-book_open"></span><span class="sidebar-title">Feedback</span><span class="caret"></span></a>
          <ul id="sideSeven" class="nav sub-nav">
            <li><a href="<%=request.getContextPath()%>/admin/add_feedback.jsp"><span class="glyphicons glyphicons glyphicons-print"></span>Add Feedback</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_feedback_controller?flag=search"><span class="glyphicons glyphicons glyphicons-print"></span>Manage Feedback</a></li>
          </ul>
        </li>
        
        <li> <a class="accordion-toggle" href="#sideSeven"><span class="glyphicons glyphicons-group"></span><span class="sidebar-title">Users</span><span class="caret"></span></a>
          <ul id="sideSeven" class="nav sub-nav">
            <%-- <li><a href="<%=request.getContextPath()%>/admin/add_feedback.jsp"><span class="glyphicons glyphicons glyphicons-print"></span>Add Feedback</a></li> --%>
            <li><a href="<%=request.getContextPath() %>/User_Reg_Controller?flag=search"><span class="glyphicons glyphicons-user"></span>Manage User</a></li>
            <li><a href="<%=request.getContextPath() %>/Company_Reg_Controller?flag=search"><span class="glyphicons glyphicons-bank"></span>Manage Company</a></li>
          </ul>
        </li>
        
        <li> <a class="accordion-toggle" href="#sideEight"><span class="glyphicons glyphicons-globe"></span><span class="sidebar-title">Address</span><span class="caret"></span></a>
          <ul id="sideEight" class="nav sub-nav">
            <li><a href="<%=request.getContextPath() %>/Add_city_controller?flag=load"><span class="glyphicons glyphicons-edit"></span> Add City</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_city_controller?flag=search"><span class="glyphicons glyphicons-edit"></span> Manage City</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_country_controller?flag=load"><span class="glyphicons glyphicons-power"></span> Add State</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_state_controller?flag=search"><span class="glyphicons glyphicons-power"></span> Manage State</a></li>
            <li><a href="<%=request.getContextPath()%>/admin/add_country.jsp"><span class="glyphicons glyphicons-lock"></span> Add Country</a></li>
            <li><a href="<%=request.getContextPath() %>/Add_country_controller?flag=search"><span class="glyphicons glyphicons-lock"></span> Manage Country</a></li>
          </ul>
        </li>
      </ul>
  </div>
  </aside>

  <!-- End: Sidebar -->