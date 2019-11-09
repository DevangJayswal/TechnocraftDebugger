﻿<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Stardom - A Responsive HTML5 Admin UI Template Theme</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS  -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700">

<!-- Core CSS  -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/glyphicons.min.css">

<!-- Plugin CSS -->
<link rel="stylesheet" type="text/css" href="css/datatables.min.css">
<link rel="stylesheet" type="text/css" href="css/TableTools.css"><!-- Datatables TableTools Addon-->
<link rel="stylesheet" type="text/css" href="css/bootstrap-editable.css">
<link rel="stylesheet" type="text/css" href="css/chosen.min.css" />

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="css/theme.css">
<link rel="stylesheet" type="text/css" href="css/pages.css">
<link rel="stylesheet" type="text/css" href="css/plugins.css">
<link rel="stylesheet" type="text/css" href="css/responsive.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="css/custom.css">

<!-- Favicon -->
<link rel="shortcut icon" href="img/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>

<body class="datatables-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
<!-- Start: Theme Preview Pane -->
<div id="skin-toolbox">
  <div class="skin-toolbox-toggle"> <i class="fa fa-flask"></i> </div>
  <div class="skin-toolbox-panel">
    <h4 class="padding-left-sm">Theme Options</h4>
    <form id="skin-toolbox-form">
      <div class="form-group">
        <label class="checkbox-inline">
          <input id="header-option" class="checkbox" type="checkbox" checked>
          Fixed <b>Header</b> </label>
      </div>
      <div class="form-group">
        <label class="checkbox-inline">
          <input id="sidebar-option" class="checkbox" type="checkbox">
          Fixed <b>Sidebar</b> </label>
      </div>
      <div class="form-group">
        <label class="checkbox-inline option-disabled">
          <input id="breadcrumb-option" class="checkbox" type="checkbox" disabled>
          Fixed <b>Breadcrumbs</b> </label>
      </div>
      <hr class="short" style="margin: 7px 10px;" />
      <div class="form-group">
        <label class="checkbox-inline">
          <input id="breadcrumb-hidden" class="checkbox" type="checkbox">
          Hide <b>Breadcrumbs</b> </label>
      </div>
      <div class="form-group margin-bottom-lg">
        <label class="checkbox-inline">
          <input id="searchbar-hidden" class="checkbox" type="checkbox">
          Hide <b>Search Bar</b> </label>
      </div>
      <h4 class="padding-left-sm">Layout Options</h4>
      <div class="form-group">
        <label class="radio-inline">
          <input class="radio" type="radio" name="optionsRadios" id="fullwidth-option" checked>
          Fullwidth </label>
      </div>
      <div class="form-group">
        <label class="radio-inline">
          <input class="radio" type="radio" name="optionsRadios" id="boxed-option">
          Boxed Layout</label>
      </div>
      <hr class="short"/>
      <div class="form-group"> <a href="customizer.html" id="customizer-link" class="btn btn-warning btn-gradient btn-block padding-bottom padding-top">CUSTOMIZER</a> </div>
    </form>
  </div>
</div>
<!-- End: Theme Preview Pane --> 

<!-- Start: Header -->
<header class="navbar navbar-fixed-top">
  <div class="pull-left"> <a class="navbar-brand" href="dashboard.html">
    <div class="navbar-logo"><img src="img/logos/logo-red.png" class="img-responsive" alt="logo"/></div>
    </a> </div>
  <div class="pull-right header-btns">
    <div class="messages-menu">
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicon glyphicon-comment"></span> <b>4</b> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Recent Messages <span class="pull-right glyphicons glyphicons-comment"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-avatar"><img src="img/avatars/header/2.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Maggie</b> - <small class="text-muted">12 minutes ago</small><br />
                Great work Yesterday!</div>
            </li>
            <li>
              <div class="item-avatar"><img src="img/avatars/header/3.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Robert</b> - <small class="text-muted">3 hours ago</small><br />
                Is the Titan Project still on?</div>
            </li>
            <li>
              <div class="item-avatar"><img src="img/avatars/header/1.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Cynthia</b> - <small class="text-muted">14 hours ago</small><br />
                Don't forget about the staff meeting tomorrow</div>
            </li>
            <li>
              <div class="item-avatar"><img src="img/avatars/header/4.jpg" class="img-responsive" alt="avatar" /></div>
              <div class="item-message"><b>Matt</b> - <small class="text-muted">2 days ago</small><br />
                Thor Project cancelled, Sorry.</div>
            </li>
          </ul>
        </li>
        <li class="dropdown-footer"><a href="#">View All Messages <i class="fa fa-caret-right"></i> </a></li>
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
            <li>
              <div class="item-icon"><i style="color: #0066ad;" class="fa fa-facebook"></i> </div>
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
      <button type="button" class="btn btn-sm dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-user"></span> <b>Holladay</b> </button>
      <button type="button" class="btn btn-default btn-gradient btn-sm dropdown-toggle padding-none" data-toggle="dropdown"> <img src="img/avatars/header/header-login.png" alt="user avatar" width="28" height="28" /> </button>
      <ul class="dropdown-menu checkbox-persist" role="menu">
        <li class="menu-arrow">
          <div class="menu-arrow-up"></div>
        </li>
        <li class="dropdown-header">Your Account <span class="pull-right glyphicons glyphicons-user"></span></li>
        <li>
          <ul class="dropdown-items">
            <li>
              <div class="item-icon"><i class="fa fa-envelope-o"></i> </div>
              <a class="item-message" href="messages.html">Messages</a> </li>
            <li>
              <div class="item-icon"><i class="fa fa-calendar"></i> </div>
              <a class="item-message" href="calendar.html">Calendar</a> </li>
            <li class="border-bottom-none">
              <div class="item-icon"><i class="fa fa-cog"></i> </div>
              <a class="item-message" href="customizer.html">Settings</a> </li>
            <li class="padding-none">
              <div class="dropdown-lockout"><i class="fa fa-lock"></i> <a href="screen-lock.html">Screen Lock</a></div>
              <div class="dropdown-signout"><i class="fa fa-sign-out"></i> <a href="login.html">Sign Out</a></div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</header>
<!-- End: Header --> 
<!-- Start: Main -->
<div id="main"> 
  <!-- Start: Sidebar -->
  <aside id="sidebar">
    <div id="sidebar-search">
      <form role="search">
        <input type="text" class="search-bar form-control" placeholder="Search">
        <i class="fa fa-search field-icon-right"></i>
        <button type="submit" class="btn btn-default hidden"></button>
      </form>
      <div class="sidebar-toggle"> <span class="glyphicon glyphicon-resize-horizontal"></span> </div>
    </div>
    <div id="sidebar-menu">
      <ul class="nav sidebar-nav">
        <li> <a class="accordion-toggle" href="#sideEight"><span class="glyphicons glyphicons-show_lines"></span><span class="sidebar-title">Multi Level Nav</span><span class="caret"></span></a>
          <ul id="sideEight" class="nav sub-nav">
            <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #1</a></li>
            <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #2</a></li>
            <li><a class="accordion-toggle" href="#sideEight-sub"><span class="glyphicons glyphicons-show_lines"></span>2nd Level Nav<span class="caret"></span></a>
              <ul id="sideEight-sub" class="nav sub-nav">
                <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #1</a></li>
                <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #2</a></li>
                <li><a class="accordion-toggle" href="#sideEight-sub-2"><span class="glyphicons glyphicons-show_lines"></span>3rd Level Nav<span class="caret"></span></a>
                  <ul id="sideEight-sub-2" class="nav sub-nav">
                    <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #1</a></li>
                    <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #2</a></li>
                    <li><a class="accordion-toggle" href="#sideEight-sub-2"><span class="glyphicons glyphicons-show_lines"></span>4th Level Nav<span class="caret"></span></a>
                      <ul id="sideEight-sub-2" class="nav sub-nav">
                        <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #1</a></li>
                        <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #2</a></li>
                        <li><a href="#"><span class="glyphicons glyphicons-ok_2"></span> Item #3</a></li>
                      </ul>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li> <a href="dashboard.html"><span class="glyphicons glyphicons-star"></span><span class="sidebar-title">Dashboard</span></a> </li>
        <li> <a class="accordion-toggle" href="#resources"><span class="glyphicons glyphicons-settings"></span><span class="sidebar-title">Resources</span><span class="caret"></span></a>
          <ul id="resources" class="nav sub-nav">
            <li><a href="customizer.html"><span class="glyphicons glyphicons-edit"></span> Theme Customizer</a></li>
            <li><a href="skin-demo.html"><span class="glyphicons glyphicons-magic"></span> Demo Style Switcher </a></li>
            <li><a href="documentation/index.html"><span class="glyphicons glyphicons-book"></span> Documentation </a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideOne"><span class="glyphicons glyphicons-adjust_alt"></span><span class="sidebar-title">UI Elements</span><span class="caret"></span></a>
          <ul id="sideOne" class="nav sub-nav">
            <li><a href="portlets.html"><span class="glyphicons glyphicons-sort"></span> Portlets</a></li>
            <li><a href="buttons.html"><span class="glyphicons glyphicons-macbook"></span> Buttons</a></li>
            <li><a href="typography.html"><span class="glyphicons glyphicons-font"></span> Typography</a></li>
            <li><a href="elements.html"><span class="glyphicons glyphicons-paperclip"></span> Elements</a></li>
            <li><a href="charts.html"><span class="glyphicons glyphicons-stats"></span> Charts</a></li>
            <li><a href="tabs.html"><span class="glyphicons glyphicons-adjust"></span> Tabs</a></li>
            <li><a href="grid.html"><span class="glyphicons glyphicons-show_big_thumbnails"></span> Grid</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideTwo"><span class="glyphicons glyphicons-vcard"></span><span class="sidebar-title">Form Elements</span><span class="caret"></span></a>
          <ul id="sideTwo" class="nav sub-nav">
            <li><a href="forms.html"><span class="glyphicons glyphicons-link"></span> Form Elements</a></li>
            <li><a href="validation.html"><span class="glyphicons glyphicons-ok"></span> Form Validation</a></li>
            <li><a href="wizard.html"><span class="glyphicons glyphicons-magic"></span> Form Wizard</a></li>
            <li><a href="editors.html"><span class="glyphicons glyphicons-pencil"></span> Editors</a></li>
            <li><a href="editable.html"><span class="glyphicons glyphicons-edit"></span> Inline Editing</a></li>
            <li><a href="xedit.html"><span class="glyphicons glyphicons-check"></span> X-editable</a></li>
          </ul>
        </li>
        <li class="active"> <a class="accordion-toggle menu-open" href="#sideThree"><span class="glyphicons glyphicons-table"></span><span class="sidebar-title">Tables</span><span class="caret"></span></a>
          <ul id="sideThree" class="nav sub-nav">
            <li><a href="tables.html"><span class="glyphicons glyphicons-justify"></span> Tables</a></li>
            <li class="active"><a href="datatables.html"><span class="glyphicons glyphicons-list"></span> DataTables</a></li>
            <li><a href="pricing-tables.html"><span class="glyphicons glyphicons-usd"></span> Pricing Tables</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideFour"><span class="glyphicons glyphicons-cargo"></span><span class="sidebar-title">File Managers</span><span class="caret"></span></a>
          <ul id="sideFour" class="nav sub-nav">
            <li><a href="treeview.html"><span class="glyphicons glyphicons-tree_conifer"></span> TreeView</a></li>
            <li><a href="upload-tools.html"><span class="glyphicons glyphicons-cloud-upload"></span> File Uploaders</a></li>
            <li><a href="dynamic-gallery.html"><span class="glyphicons glyphicons-picture"></span> Dynamic Gallery</a></li>
            <li><a href="image-tools.html"><span class="glyphicons glyphicons-camera"></span> Image Tools</a></li>
            <li><a href="nestable.html"><span class="glyphicons glyphicons-sampler"></span> Nestable</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideFive"><span class="glyphicons glyphicons-magic"></span><span class="sidebar-title">Extras</span><span class="caret"></span></a>
          <ul id="sideFive" class="nav sub-nav">
            <li><a href="icons.html"><span class="glyphicons glyphicons-flash"></span> Icons</a></li>
            <li><a href="animations.html"><span class="glyphicons glyphicons-fire"></span> Animations</a></li>
            <li><a href="sliders.html"><span class="glyphicons glyphicons-retweet"></span> Sliders</a></li>
            <li><a href="sketchpad.html"><span class="glyphicons glyphicons-vector_path_square"></span> Sketchpad</a></li>
          </ul>
        </li>
          <li> <a class="accordion-toggle" href="#sideSix"><span class="glyphicons glyphicons-globe"></span><span class="sidebar-title">Maps</span><span class="caret"></span></a>
           <ul id="sideSix" class="nav sub-nav">
             <li><a href="maps.html"><span class="glyphicons glyphicons-global"></span> GMaps</a></li>
             <li><a href="map-window.html"><span class="glyphicons glyphicons-vector_path_square"></span> Window Map</a></li>
             <li><a href="maps-vector.html"><span class="glyphicons glyphicons-vector_path_circle"></span> Vector Maps</a></li>
           </ul>
         </li>
          <li> <a href="widgets.html"><span class="glyphicons glyphicons-restart"></span><span class="sidebar-title">Widgets</span></a> </li>
        <li> <a class="accordion-toggle" href="#sideSeven"><span class="glyphicons glyphicons-book_open"></span><span class="sidebar-title">Pages</span><span class="caret"></span></a>
          <ul id="sideSeven" class="nav sub-nav">
            <li><a href="invoice-page.html"><span class="glyphicons glyphicons glyphicons-print"></span> Printable Invoice</a></li>
            <li><a href="timeline.html"><span class="glyphicons glyphicons-film"></span> Timeline</a></li>
            <li><a href="gallery.html"><span class="glyphicons glyphicons-picture"></span> Gallery</a></li>
            <li><a href="calendar.html"><span class="glyphicons glyphicons-calendar"></span> Calendar</a></li>
            <li><a href="messages.html"><span class="glyphicons glyphicons-envelope"></span> Messages</a></li>
            <li><a href="profile.html"><span class="glyphicons glyphicons-user"></span> User Profile</a></li>
          </ul>
        </li>
        <li> <a class="accordion-toggle" href="#sideEight"><span class="glyphicons glyphicons-warning_sign"></span><span class="sidebar-title">Utility Pages</span><span class="caret"></span></a>
          <ul id="sideEight" class="nav sub-nav">
            <li><a href="faq.html"><span class="glyphicons glyphicons-edit"></span> Faq Page</a></li>
            <li><a href="login.html"><span class="glyphicons glyphicons-power"></span> Login Page</a></li>
            <li><a href="screen-lock.html"><span class="glyphicons glyphicons-lock"></span> Screen Lock</a></li>
            <li><a href="coming-soon.html"><span class="glyphicons glyphicons-road"></span> Coming Soon</a></li>
            <li><a href="404-page.html"><span class="glyphicons glyphicons-circle_remove"></span> 404 Page</a></li>
            <li><a href="500-page.html"><span class="glyphicons glyphicons-circle_exclamation_mark"></span> 500 Page</a></li>
            <li><a href="blank.html"><span class="glyphicons glyphicons-unchecked"></span> Blank Page</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </aside>
  <!-- End: Sidebar --> 
  <!-- Start: Content -->
  <section id="content">
    <div id="topbar">
      <ol class="breadcrumb">
        <li><a href="dashboard.html"><span class="glyphicon glyphicon-home"></span></a></li>
        <li><a href="index.html">Home</a></li>
        <li class="active">Datatables</li>
      </ol>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-visible">
            <div class="panel-heading">
              <div class="panel-title hidden-xs"> <span class="glyphicon glyphicon-tasks"></span> Editable Data Table</div>
            </div>
            <div class="panel-body padding-bottom-none">
              <table class="table table-striped table-bordered table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Editable</th>
                    <th class="hidden-xs">Creator</th>
                    <th>Labels</th>
                    <th class="visible-lg">Software license</th>
                    <th class="hidden-xs hidden-sm">Current layout engine</th>
                    <th>Cost (USD)</th>
                    <th class="text-center hidden-xs">Actions</th>
                  </tr>
                </thead>
                <tbody>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Henry Ford</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label label-info">CSS</span></td>
                    <td class="visible-lg">GNU GPLv3</td>
                    <td>FSkit</td>
                    <td>Free</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Roger Rights</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-orange2 margin-right-sm">HTML</span><span class="label btn-dark">Java</span></td>
                    <td class="visible-lg">GNU GPLv3</td>
                    <td>Webkit</td>
                    <td>License</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Goblin Jones</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-green">PHP</span></td>
                    <td class="visible-lg">CF2</td>
                    <td>FSkit</td>
                    <td>Contract</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">David Fleece</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-red">Python</span></td>
                    <td class="visible-lg">CC V2</td>
                    <td>Webkit</td>
                    <td>Free</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Mary Shark</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-blue2 margin-right-sm">Javascript</span><span class="label btn-green">PHP</span></td>
                    <td class="visible-lg">GNU GPLv3</td>
                    <td>FSkit</td>
                    <td>License</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Alexander Right</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-alert"> A Warm Heart</span></td>
                    <td class="visible-lg">GNU GPLv3</td>
                    <td>Webkit</td>
                    <td>Contract</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Peter Parker</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-blue6">NewEgg</span></td>
                    <td class="visible-lg">CC V2</td>
                    <td>FSkit</td>
                    <td>Free</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Florida Toss</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-dark">Skills</span></td>
                    <td class="visible-lg">CF2</td>
                    <td>Webkit</td>
                    <td>License</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">Cynthia Rodes</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-orange margin-right-sm">HTML</span><span class="label btn-green">PHP</span></td>
                    <td class="visible-lg">CF2</td>
                    <td>FSkit</td>
                    <td>Free</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">James Harvy</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-alert margin-right-sm">Patience</span><span class="label label-info">CSS</span></td>
                    <td class="visible-lg">CC V2</td>
                    <td>Webkit</td>
                    <td>License</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Uzbl</span></td>
                    <td class="hidden-xs"><span class="xedit">Hue Fontain</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-red2">Ice Cream</span></td>
                    <td class="visible-lg">GNU GPLv3</td>
                    <td>FSkit</td>
                    <td>License</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                  <tr>
                    <td><span class="xedit">Try Me!</span></td>
                    <td class="hidden-xs"><span class="xedit">George Michaels</span></td>
                    <td class="hidden-xs hidden-sm"><span class="label btn-brown">Dedication</span></td>
                    <td class="visible-lg">GNU GPLv3</td>
                    <td>Webkit</td>
                    <td>Contract</td>
                    <td class="hidden-xs text-center"><div class="btn-group">
                        <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-user"></span> </button>
                        <button type="button" class="btn btn-success btn-gradient"> <span class="glyphicon glyphicon-earphone"></span> </button>
                        <button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown"> <span class="glyphicons glyphicons-cogwheel"></span> </button>
                        <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                          <li><a><i class="fa fa-user"></i> View Profile </a></li>
                          <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                        </ul>
                      </div></td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- End: Content --> 
</div>
<!-- End: Main --> 

<!-- Core Javascript - via CDN --> 
<script src="js/jquery.min.js"></script> 
<script src="js/jquery-ui.min.js"></script> 
<script src="js/bootstrap.min.js"></script> <!-- Plugins - Via CDN -->
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<!--<script type="text/javascript" src="vendor/plugins/datatables/jquery.dataTables.min.js"></script> Local Option -->

<!-- Plugins -->
<script type="text/javascript" src="js/datatables.js"></script><!-- Datatable Bootstrap Addon -->
<script type="text/javascript" src="js/TableTools.min.js"></script><!-- Datatable TableTools Addon -->
<script type="text/javascript" src="js/ZeroClipboard.js"></script><!-- Datatable TableTools Addon -->
<script type="text/javascript" src="js/bootstrap-editable.js"></script> 
<script type="text/javascript" src="js/chosen.jquery.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="js/uniform.min.js"></script> 
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/custom.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function() {

  Core.init();

  // Init Datatables with Tabletools Addon	
  $('#datatable').dataTable( {
	"aoColumnDefs": [{ 'bSortable': false, 'aTargets': [ -1 ] }],
	"oLanguage": { "oPaginate": {"sPrevious": "", "sNext": ""} },
	"iDisplayLength": 6,
	"aLengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
	"sDom": 'T<"panel-menu dt-panelmenu"lfr><"clearfix">tip',
	"oTableTools": {
		"sSwfPath": "vendor/plugins/datatables/extras/TableTools/media/swf/copy_csv_xls_pdf.swf"
	}
  });	
  
  // Add Placeholder text to datatables filter bar
  $('.dataTables_filter input').attr("placeholder", "Enter Filter Terms Here....");
  
  // Manually Init Chosen on Datatables Filters
  $("select[name='datatable_length']").chosen();	
  
  // Init Xeditable Plugin
  $.fn.editable.defaults.mode = 'popup';
  $('.xedit').editable();

});
</script>
</body>

</html>