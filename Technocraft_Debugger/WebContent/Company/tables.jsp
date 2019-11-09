<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Tables</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/css.css">

<!-- Core CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/glyphicons.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/pages.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/plugins.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/responsive.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/custom.css">

<!-- Favicon -->
<link rel="shortcut icon" href="<%=request.getContextPath() %>/admin/images/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="<%=request.getContextPath() %>/admin/js/html5shiv.js"></script>
  <script src="<%=request.getContextPath() %>/admin/js/respond.min.js"></script>
<![endif]-->
</head>

<body> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
<%@ include file="themepreview.jsp" %>

<%@ include file="header.jsp" %>
<!-- Start: Main -->
<div id="main"> 
<%@ include file="sidebar.jsp" %>
  <!-- Start: Content -->
  <section id="content">
    <div id="topbar">
      <ol class="breadcrumb">
       	<li><a href="<%=request.getContextPath() %>/admin/index.jsp"><i class="fa fa-home"></i></a></li>
        <li><a href="<%=request.getContextPath() %>/admin/index.jsp">Home</a></li>
      </ol>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-md-6">
          <div class="row">
            <!--<div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <i class="fa fa-table"></i> Basic Table </div>
                </div>
                <div class="panel-body">
                  <table class="table">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <i class="fa fa-table"></i> Striped Table </div>
                </div>
                <div class="panel-body">
                  <table class="table table-striped">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <i class="fa fa-table"></i> Colored Table </div>
                </div>
                <div class="panel-body">
                  <table class="table table-hover">
                    <thead>
                      <tr class="active">
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr class="success">
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr class="warning">
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr class="danger">
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="row">
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <i class="fa fa-table"></i> On-Hover Table </div>
                </div>
                <div class="panel-body">
                  <table class="table table-hover">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="col-md-12">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <i class="fa fa-table"></i> Condensed Table </div>
                </div>
                <div class="panel-body">
                  <table class="table table-condensed">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                      </tr>
                      <tr>
                        <td>4</td>
                        <td>Todd</td>
                        <td>the Lion</td>
                        <td>@rawr</td>
                      </tr>
                      <tr>
                        <td>5</td>
                        <td>Cynthia</td>
                        <td>the Dino</td>
                        <td>@mewo</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>-->
            <div class="col-md-12" style="margin:0px auto">
              <div class="panel">
                <div class="panel-heading">
                  <div class="panel-title"> <i class="fa fa-table"></i> Bordered Table </div>
                </div>
                <div class="panel-body">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th>#</th>
                        <th>User Name</th>
                        <th>Email Id</th>
                        <th>Action</th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>1</td>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                      </tr>
                      <tr>
                        <td>2</td>
                        <td>Jacob</td>
                        <td>Thornton</td>
                        <td>@fat</td>
                      </tr>
                      <tr>
                        <td>3</td>
                        <td>Larry</td>
                        <td>the Bird</td>
                        <td>@twitter</td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>
      <!--<div class="clearfix"></div>
      <div class="row">
        <div class="col-md-12">
          <div class="panel">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-table"></i> Responsive Table </div>
            </div>
            <div class="panel-body">
              <div class="table-responsive">
                <table class="table table-bordered">
                  <thead>
                    <tr>
                      <th>#</th>
                      <th>Table heading</th>
                      <th>Table heading</th>
                      <th>Table heading</th>
                      <th>Table heading</th>
                      <th>Table heading</th>
                      <th>Table heading</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>1</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                    </tr>
                    <tr>
                      <td>2</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                    </tr>
                    <tr>
                      <td>3</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                      <td>Table cell</td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
        <div class="clearfix"></div>
      </div>-->
    </div>
  </section>
  <!-- End: Content --> 
</div>
<!-- End: Main --> 

<!-- Core Javascript - via CDN --> 
<script src="<%=request.getContextPath() %>/admin/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/jquery-ui.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/custom.js"></script> 
<script type="text/javascript">
 jQuery(document).ready(function() {

	// Init Theme Core 	  
	Core.init();
		
 });
	
</script>
</body>

</html>
