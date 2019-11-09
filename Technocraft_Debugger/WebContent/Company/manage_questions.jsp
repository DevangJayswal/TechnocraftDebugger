<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Manage Questions</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<%-- <!-- Font CSS  -->
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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/css/custom.css"> --%>

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

<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt"%>

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
    		<span style="color: red;">
            		${sessionScope.deleteflag}
					<a:remove var="deleteflag" scope="session"/>
			</span>
      <div class="row">
        <div class="col-md-12">
          <div class="panel panel-visible">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-table"></i>Manage Questions</div>
            </div>
            <div class="panel-body">
            
            
            
              <table class="table table-striped table-bordered table-hover" id="datatable">
                <thead>
                  <tr>
                    <th>Questin Id</th>
                    <th class="hidden-xs">Question</th>
                    <th>Correct Answer</th>
                    
                    <th class="text-center hidden-xs">Actions</th>
                  </tr>
                </thead>
				
                <tbody>
                <% int j=1; %>
                <a:forEach items="${sessionScope.list }" var="i">
                  <tr>
                    <td><% out.print(j); j++; %></td>
                    <td class="hidden-xs"><span class="xedit">${i.question }</span></td>
                    <td class="hidden-xs hidden-sm"><span class="xedit">${i.correct_ans }</span></td>
                    
                    <td class="hidden-xs text-center">
                    	<div class="btn-group">
                        	<!-- <button type="button" class="btn btn-info btn-gradient"> <span class="glyphicons glyphicons-cogwheels"></span> </button> -->
                        	<button type="button" class="btn btn-success btn-gradient" onclick="fn('<%=request.getContextPath() %>/Add_questions_controller?flag=edit&user=company&id=${i.question_id}')"> <span class="glyphicons glyphicons-cogwheels"></span> </button>
                        	<button type="button" class="btn btn-danger btn-gradient dropdown-toggle" data-toggle="dropdown" onclick="fn('<%= request.getContextPath()%>/Add_questions_controller?flag=delete&user=company&id=${i.question_id}')"> <span class="glyphicons glyphicons-bin"></span> </button>
                      		<%-- <ul class="dropdown-menu checkbox-persist pull-right text-left" role="menu">
                        	  <li><a><i class="fa fa-user"></i> View Profile </a></li>
                        	  <li><a><i class="fa fa-envelope-o"></i> Message </a></li>
                       	 	</ul> --%>
                      	</div>
                    
                    	<%-- <a href="<%=request.getContextPath() %>/Add_questions_controller?flag=edit&id=${i.question_id}">Edit</a>/<a href="<%= request.getContextPath()%>/Add_questions_controller?flag=delete&id=${i.question_id}">Delete</a> --%>
                   </td>
                  </tr>
                 </a:forEach>
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
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/TableTools.min.js"></script><!-- Datatable TableTools Addon -->
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/ZeroClipboard.js"></script> 

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/custom.js"></script> 
<script type="text/javascript">
function fn(x)
{
	window.location.href=x;	
}
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
			"sSwfPath": "extra/copy_csv_xls_pdf.swf"
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
