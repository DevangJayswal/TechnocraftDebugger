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

<!-- Favicon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/Company/images/favicon.ico">

<!-- Start: Header -->
<header class="navbar navbar-fixed-top">
  <div class="pull-left"> <a class="navbar-brand" href="dashboard.html">
    <div class="navbar-logo"><img src="<%=request.getContextPath()%>/Company/images/technocraft_debugger.gif" class="img-responsive" alt="logo"/></div>
    </a> </div>
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse-1"></button>
  <div class="pull-right header-btns">
    <div class="messages-menu">
      <button type="button" class="btn btn-sm dropdown-animate" data-toggle="dropdown"> <span class="glyphicon glyphicon-comment"></span> <b>4</b> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Messages <span class="pull-right glyphicons glyphicons-comment"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-avatar"><img src="<%=request.getContextPath()%>/Company/images/2.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Maggie</b> - <small class="text-muted">12 minutes ago</small><br />
                Great work Yesterday!</div>
            </li>
            <li>
              <div class="item-avatar"><img src="<%=request.getContextPath()%>/Company/images/3.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Robert</b> - <small class="text-muted">3 hours ago</small><br />
                Is the Titan Project still on?</div>
            </li>
            <li>
              <div class="item-avatar"><img src="<%=request.getContextPath()%>/Company/images/1.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Cynthia</b> - <small class="text-muted">14 hours ago</small><br />
                Don't forget about the staff meeting tomorrow</div>
            </li>
            <li>
              <div class="item-avatar"><img src="<%=request.getContextPath()%>/Company/images/4.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Matt</b> - <small class="text-muted">2 days ago</small><br />
                Thor Project cancelled, Sorry.</div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="<%=request.getContextPath()%>/Company/messages.html">View All Messages <i class="fa fa-caret-right"></i> </a></li>
      </ul>
    </div>
    <div class="alerts-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-bell"></span> <b>3</b> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Alerts <span class="pull-right glyphicons glyphicons-bell"></span></li>
        <li>
          <ul class="dropdown-items">
              <div class="item-icon"><i style="color: #0066ad;" class="fa fa-facebook"></i> </div>
            <li>
              <div class="item-message"><a href="#">Facebook likes reached <b>8,200</b></a></div>
            </li>
            <li>
              <div class="item-icon"><i style="color: #5cb85c;" class="fa fa-check"></i> </div>
              <div class="item-message"><a href="#">Robert <b>completed task</b> - Client SEO Revamp</a></div>
            </li>
            <li>
              <div class="item-icon"><i style="color: #f0ad4e" class="fa fa-user"></i> </div>
              <div class="item-message"><a href="#"><b>Marko</b> logged 12 hours</a></div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="#">View All Alerts <i class="fa fa-caret-right"></i> </a></li>
      </ul>
    </div>
    <div class="tasks-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-tag"></span> <b>7</b> </button>
      <ul class="dropdown-menu dropdown-checklist checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Tasks <span class="pull-right glyphicons glyphicons-tag"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-icon"><i class="fa fa-pencil"></i> </div>
              <div class="item-message text-slash"><a>Try Clicking me!</a></div>
              <div class="item-label"><span class="label label-danger">Urgent</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-phone"></i> </div>
              <div class="item-message text-slash"><a>Contact Client and request Approval</a></div>
              <div class="item-label"><span class="label label-info">Normal</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-flask"></i> </div>
              <div class="item-message text-slash"><a>Find new Python Developer </a></div>
              <div class="item-label"><span class="label label-success">Completed</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-facebook"></i> </div>
              <div class="item-message text-slash"><a>Update Facebook Page with Halloween Pictures</a></div>
              <div class="item-label"><span class="label label-primary">In Progress</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-group"></i> </div>
              <div class="item-message text-slash"><a>Organize next Staff Meeting</a></div>
              <div class="item-label"><span class="label label-success">Completed</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
            <li>
              <div class="item-icon"><i class="fa fa-plane"></i> </div>
              <div class="item-message text-slash"><a>Interview new applicant</a></div>
              <div class="item-label"><span class="label label-warning">Moderate</span></div>
              <div class="item-checkbox">
                <input class="checkbox row-checkbox" type="checkbox">
              </div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="#">View All Tasks <i class="fa fa-caret-right"></i> </a></li>
      </ul>
    </div>
    <div class="btn-group user-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-user"></span> <b><%=session.getAttribute("uName")%></b> </button>
      <button type="button" class="btn btn-sm dropdown-toggle padding-none" data-toggle="dropdown"> <img src="User/doc/${sessionScope.image}" alt="user_image" width="28" height="28" /> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Your Account <span class="pull-right glyphicons glyphicons-user"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-icon"><i class="fa fa-envelope-o"></i> </div>
              <a class="item-message" href="<%=request.getContextPath()%>/Company_Reg_Controller?flag=load">Registration</a> </li>
            <li>
              <div class="item-icon"><i class="fa fa-calendar"></i> </div>
              <a class="item-message" href="<%=request.getContextPath()%>/Company/calendar.html">Calendar</a> </li>
            <li class="border-bottom-none">
              <div class="item-icon"><i class="fa fa-cog"></i> </div>
              <a href="<%=request.getContextPath() %>/Company_Reg_Controller?flag=cproedit&id=${sessionScope.userID}">Profile Settings</a> </li>
            <li class="padding-none">
              <div class="dropdown-lockout"><i class="fa fa-lock"></i> <a href="<%=request.getContextPath()%>/Company/screen-lock.jsp">Screen Lock</a></div>
              <div class="dropdown-signout"><i class="fa fa-sign-out"></i> <a href="<%=request.getContextPath()%>/Company/login.jsp">Sign Out</a></div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</header>
<!-- End: Header --> 