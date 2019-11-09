<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Technocraft Debugger | Image Upload</title>

<script type="text/javascript">
currentg1 = 2; // This is input files added by default.
maxg1 = 5;
ming1 = 1;

function g1_app_child(){
    if(currentg1<maxg1)
    {
        var div = document.createElement("div");
        div.id = 'divfiles'+currentg1;
        /*div.style.width = "100px";
        div.style.height = "100px";
        div.style.background = "red";
        div.style.color = "white";*/
        div.innerHTML = '<input type="file" name="files['+currentg1+']" id="file'+currentg1+'" value="" />';
        document.getElementById('outer_div').appendChild(div);
        currentg1++;
        return false;
    }
    else
    {
        alert('Maximum '+maxg1+' Files are Allowed.');
        return false;
    }
}

function g1_delchild()
{
    if(currentg1>ming1)
    {
        cnt = currentg1-1;
        element = document.getElementById('divfiles'+cnt);
        element.parentNode.removeChild(element);
        currentg1--;
        return false;
    }
    else
    {
        alert('Minimum '+ming1+' Files are Allowed.');
        return false;
    }
}
</script>

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
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/responsive1.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/TableTools.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/Company/css/custom.css">
</head>
<body>
<form action="<%=request.getContextPath() %>/ImageUploadServlet?usertype=company" method="post" enctype="multipart/form-data">

				<div class="form-group">
								
									<div class="fileinput fileinput-new" data-provides="fileinput">
										<input type="hidden">
										<!-- <div class="fileinput-new thumbnail"
											style="width: 200px; height: 150px;" data-trigger="fileinput">
											<img src="images/200x150.gif" alt="...">
										</div>  -->
										<a href="#" style="width:120px;" class="btn btn-orange fileinput-exists" data-dismiss="fileinput">Remove</a>
										<input class="submit btn btn-blue" style="width:120px" name="submit" type="submit" value="Upload File">
										<input type="hidden" name="user" value="company">
											
										<br><br>
										
										<div class="fileinput-preview fileinput-exists thumbnail"
											style="max-width: 200px; max-height: 150px; "></div>
										<div>
											<span class="btn btn-blue btn-file"> <span
												class="fileinput-new">Select image</span>
												<input type="file" name="files[0]" id="file0" value="" accept="image/*" />
												<!-- <input type="file" name="..." accept="image/*"> -->
											</span> 
											<br>
										</div>
									</div>
								</div>
	</form>
	
<!-- Core Javascript - via CDN -->
<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/bootstrap.min.js"></script>

<!-- Plugins -->
<script src="js/fileinput.js" id="script-resource-8"></script> <!--  from neon -->

<!-- Theme Javascript -->
<script type="text/javascript" src="js/uniform.min.js"></script>
<script type="text/javascript" src="js/main.js"></script>
<script type="text/javascript" src="js/custom.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function() {

		// Init Theme Core 	  
		Core.init();

	});
</script>
</body>
</html>