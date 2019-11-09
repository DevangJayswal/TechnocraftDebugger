<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Data Tables</title>
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

<!-- Plugin CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/datatables.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/bootstrap-editable.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/chosen.min.css" />

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

<body class="datatables-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
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
        <div class="col-md-12">
          <div class="panel panel-visible">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-table"></i> Editable Data Table</div>
            </div>
            <div class="panel-body">
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
<script src="<%=request.getContextPath() %>/admin/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/jquery-ui.min.js"></script> 
<script src="<%=request.getContextPath() %>/admin/js/bootstrap.min.js"></script> 

<!-- Plugins - Via CDN -->
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.dataTables.min.js"></script>
<!--<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.dataTables.min.js"></script> Local Option -->

<!-- Plugins -->
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/datatables.js"></script><!-- Datatable Bootstrap Addon -->
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-editable.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/chosen.jquery.min.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/custom.js"></script> 
<script type="text/javascript">
jQuery(document).ready(function() {

  Core.init();

  $('#datatable').dataTable( {
	"aoColumnDefs": [{ 'bSortable': false, 'aTargets': [ -1 ] }],
	"oLanguage": { "oPaginate": {"sPrevious": "", "sNext": ""} },
	"iDisplayLength": 6,
	"aLengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
  });	
  
  $("select[name='datatable_length']").chosen();	
  $.fn.editable.defaults.mode = 'popup';
  $('.xedit').editable();

});
</script>
</body>

</html>
