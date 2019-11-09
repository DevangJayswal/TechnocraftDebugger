<!DOCTYPE html>
<html>
<head>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Technocraft Debugger</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- Font CSS  -->
<link rel="stylesheet" type="text/css" href="http://fonts.googleapis.com/css?family=Open+Sans:400,600,700">

<!-- Core CSS  -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/glyphicons.min.css">


<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/theme.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/pages.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/plugins.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/responsive.css">

<!-- Boxed-Layout CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/boxed.css">

<!-- Demonstration CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/demo.css">

<!-- Your Custom CSS -->
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/css/custom.css">

<!-- Favicon -->
<link rel="shortcut icon" href="<%=request.getContextPath()%>/admin/images/favicon.ico">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>
<body> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
<%@ include file="header.jsp" %>
<!-- Start: Main -->
<div id="main"> 
  <%@ include file="sidebar.jsp" %>
  <!-- Start: Content -->
  <section id="content">
    <div id="topbar">
      <ol class="breadcrumb">
        <li><a href="<%=request.getContextPath()%>/admin/dashboard.html"><i class="fa fa-home"></i></a></li>
        <li><a href="<%=request.getContextPath()%>/admin/index.html">Home</a></li>
      </ol>
    </div>
    <div class="container">
      <div class="row">
        <div class="hidden-xs hidden-sm col-md-3">
          <div class="panel panel-visible">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-pencil"></i> Create Event </div>
            </div>
            <!-- <div class="panel-body">
              <div id="external-events">
                <div class='external-event' data-length="2">Example Event 2</div>
                <div class='external-event'>Example Event 2</div>
                <div class='external-event'>Example Event 3</div>
              </div>
            </div> -->
            <div class="panel-footer">
              <div id="create_event" class=" margin-top">
                <form id="create-event-form" action="<%= request.getContextPath() %>/Add_Event_Controller" method="post">
                  
                  <div class="form-group">
                    <input type="text" name="event_name" class="form-control event-name" placeholder="Event Name">
                  </div>
                  
                  <!-- <div class="form-group">
                    <input type="text" class="form-control colorpicker margin-top-none" placeholder="Select a Color" value="">
                  </div> -->
                  
                  <div class="form-group">
                    <textarea class="form-control event-desc" name="event_desc" placeholder="Event Description"></textarea>
                  </div>
                  
                  <div class="form-group">
                  <label for="event_time">Event Time</label>
                  		<div class="input-group"> <span class="input-group-addon"><i class="fa fa-calendar "></i> </span>
                          <input type="text" name="event_time" id="timepicker" class="form-control timepicker" placeholder="9:00 PM" >
                        </div>
                  </div>
                  
                  <div class="form-group">
					  	<label for="event_date">Event Date</label>
					  	<div class="input-group">
							<span class="input-group-addon"><i class="fa fa-calendar"></i> </span> 
							<input name="event_date" id="edate" class="form-control datepicker margin-top-none"  placeholder="11/11/2014">
						</div>
				  </div>
                  
                  <div class="form-group margin-bottom-none pull-right">
                    <input type="hidden" name="flag" value="insert">
                    <input type="submit" value="Create Event" class="submit btn btn-blue"></button>
                  </div>
                  
                  <div class="clearfix"></div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-9">
          <div class="panel panel-visible">
            <div class="panel-heading">
              <div class="panel-title"> <i class="fa fa-calendar"></i> Calendar </div>
            </div>
            <div class="panel-body">
              <div id='calendar'></div>
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
<script src="<%=request.getContextPath()%>/admin/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath()%>/admin/js/jquery-ui.min.js"></script> 
<script src="<%=request.getContextPath()%>/admin/js/bootstrap.min.js"></script> 

<!-- Plugins - Via CDN-->
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/fullcalendar.min.js"></script>
<!--<script type="text/javascript" src="vendor/plugins/calendar/fullcalendar.min.js"></script></script> -- Local Option -->

<!-- Plugins -->
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/gcal.js"></script><!-- Calendar Addon -->
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/jquery.validate.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/tagmanager.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-switch.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/daterangepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-datepicker.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/bootstrap-timepicker.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/globalize.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/chosen.jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/admin/js/moment.min.js"></script>

<!-- Theme Javascript --> 
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/uniform.min.js"></script> 
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/admin/js/custom.js"></script> 
<script type="text/javascript">
 jQuery(document).ready(function() {

	// Init Theme Core 	
	Core.init();
	
	// Init Calendar Plugin
	var date = new Date();
	var d = date.getDate();
	var m = date.getMonth();
	var y = date.getFullYear();
	
	$('#calendar').fullCalendar({
		header: {
			left: 'prev,next today',
			center: 'title',
			right: 'month,agendaWeek,agendaDay'
		},
		editable: true,
		droppable: true, // this allows things to be dropped onto the calendar !!!
		drop: function(date, allDay, jsEvent, ui ) { // this function is called when something is dropped
		
			// retrieve the dropped element's stored Event Object
			var originalEventObject = $(this).data('eventObject');
			
			// we need to copy it, so that multiple events don't have a reference to the same object
			var copiedEventObject = $.extend({}, originalEventObject);
			
			// assign it the date that was reported
			copiedEventObject.start = date;
			copiedEventObject.allDay = allDay;
		
			// render the event on the calendar
			// the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
			$('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
			
			// is the "remove after drop" checkbox checked?
			// if so, remove the element from the "Draggable Events" list
			$(this).remove();
			
		},
		events: [
	   <a:forEach items="${sessionScope.eventlist}" var="event" varStatus="status" >
			{
				title: '${event.event_name}',
				start: '${event.event_date}',
				//color: '#008aaf '
			}
			<a:if test="${status.index<sessionScope.eventlist.size()-1}">
			,
			</a:if>
		</a:forEach>	
			/*{
				title: 'Long Event',
				start: new Date(y, m, d-5),
				end: new Date(y, m, d-3)
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: new Date(y, m, d+3, 16, 0),
				allDay: false
			},
			{
				id: 999,
				title: 'Repeating Event',
				start: new Date(y, m, d+10, 16, 0),
				allDay: false
			},
			{
				title: 'Meeting',
				start: new Date(y, m, d, 10, 30),
				allDay: false,
				color: '#0070ab'
			},
			{
				title: 'Lunch',
				start: new Date(y, m, d, 12, 0),
				end: new Date(y, m, d, 14, 0),
				allDay: false,
				color: '#0070ab'
			},
			{
				title: 'Birthday Party',
				start: new Date(y, m, d+1, 19, 0),
				end: new Date(y, m, d+1, 22, 30),
				allDay: false
			},
			{
				title: 'Mandatory!',
				start: new Date(y, m, 22),
				color: '#d10011'
			} */
		]
	});
	
	// Init external calendar events
	function FCexternals() {
	  $('#external-events div.external-event').each(function(index) {
					  
		  // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
		  // it doesn't need to have a start or end
		  var eventObject = {
			  title: $.trim($(this).text()), // use the element's text as the event title
			  color: ($(this).attr('color')),
		  };

		  // store the Event Object in the DOM element so we can get to it later
		  $(this).data('eventObject', eventObject);

		  // make the event draggable using jQuery UI
		  $(this).draggable({
			  zIndex: 999,
			  revert: true,      // will cause the event to go back to its
			  revertDuration: 0  //  original position after the drag
		  });
		  
	  });
	}

	var count = 0;
	
	// Populate custom external event with form data then
	// run externals() to repopulate event object
	$(".create-event-form").click(function( event ) {
		event.preventDefault();
		count += 1;
		var color = $("#create-event-form .colorpicker").val(),
			title1 = $("#create-event-form input").val();
			
			if (title1 === "" ) {var title1 = "Example Title";}

		
		$("#external-events").append("<div class='external-event' color='" + color + "' style='background:" + color + "'>" + title1 + "</div>");
		title1 = $("#create-event-form input").val("");
		FCexternals();				
	});

	FCexternals();
	 
	// Init Colorpicker Plugin
	$('.colorpicker').colorpicker();
	
	
	//date range picker & Time picker
	//Init jquery Date Picker
	 $('.datepicker').datepicker()
	 
	 //Init jquery Date Range Picker
	 //$('input[name="event_date"]').daterangepicker();
	 
	 //Init jquery Color Picker
	 $('.colorpicker').colorpicker() 
	 $('.rgbapicker').colorpicker() 
	 
	 //Init jquery Time Picker
	 $('.timepicker').timepicker();
	  
	 //Init jquery Tags Manager 
	 $(".tm-input").tagsManager({
      tagsContainer: '.tag-container',
		prefilled: ["Miley Cyrus", "Apple", "Wow This is a really Long tag", "Na uh"],
		tagClass: 'tm-tag-info',
   });

	 //Init jquery spinner init - default  
	 $(".checkbox").uniform();
	 $(".radio").uniform();

	//Init jquery spinner init - default
	$("#chosen-list1").chosen();
	$("#chosen-list2").chosen(); 
	  
	//Init jquery spinner init - default
	$("#spinner1").spinner();
	
	//Init jquery spinner init - currency 
	$("#spinner2").spinner({
    min: 5,
    max: 2500,
    step: 25,
    start: 1000,
    //numberFormat: "C"
  });
	
	//Init jquery spinner init - decimal  
	$( "#spinner3" ).spinner({
    step: 0.01,
    numberFormat: "n"
  });
	
	//Init jquery time spinner
  $.widget( "ui.timespinner", $.ui.spinner, {
		options: {
		  // seconds
		  step: 60 * 1000,
		  // hours
		  page: 60
		},
		_parse: function( value ) {
		  if ( typeof value === "string" ) {
			// already a timestamp
			if ( Number( value ) == value ) {
			  return Number( value );
			}
			return +Globalize.parseDate( value );
		  }
		  return value;
		},
	 
		_format: function( value ) {
		  return Globalize.format( new Date(value), "t" );
		}
	  });
  $( "#spinner4" ).timespinner();

	//Init jquery masked inputs
	$('.date').mask('99/99/9999');
	$('.time').mask('99:99:99');
	$('.date_time').mask('99/99/9999 99:99:99');
	$('.zip').mask('99999-999');
	$('.phone').mask('(999) 999-9999');
	$('.phoneext').mask("(999) 999-9999 x99999");
	$(".money").mask("999,999,999.999"); 
	$(".product").mask("999.999.999.999"); 
	$(".tin").mask("99-9999999");
	$(".ssn").mask("999-99-9999");
	$(".ip").mask("9ZZ.9ZZ.9ZZ.9ZZ");
	$(".eyescript").mask("~9.99 ~9.99 999");
	$(".custom").mask("9.99.999.9999");
	

 });

</script>
</body>

</html>
