<!DOCTYPE html>
<html>
<head>
<%@taglib prefix="a" uri="http://java.sun.com/jstl/core_rt" %>
<!-- Meta, title, CSS, favicons, etc. -->
<meta charset="utf-8">
<title>Technocraft Debugger</title>
<meta name="keywords" content="HTML5 Bootstrap 3 Admin Template UI Theme" />
<meta name="description" content="Stardom - A Responsive HTML5 Admin UI Template Theme">
<meta name="author" content="Holladay">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
</head>

<body class="pricing-tables-page"> <script> var boxtest = localStorage.getItem('boxed'); if (boxtest === 'true') {document.body.className+=' boxed-layout';} </script>
<%@include file="header.jsp" %> 
<!-- Start: Main -->
<div id="main"> 
  <%@include file="sidebar.jsp" %>
  <!-- Start: Content -->
  <section id="content">
    <div id="topbar">
      <ol class="breadcrumb">
        <li><a href="dashboard.html"><i class="fa fa-home"></i></a></li>
        <li><a href="index.html">Home</a></li>
      </ol>
    </div>
    <div class="container">
      <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
          <div class="pricing-tables margin-top-lg text-center row">
          <a:forEach items="${sessionScope.package1}" var="i">
            <div class="col-sm-4 col-md-3 hero-plan">
              <div class="pricing-plan margin-none">
                <div class="pricing-title btn-blue4">
                  <h3>${i.pack_type}</h3>
                  <span class="pricing-subtitle">${i.pack_name}</span> </div>
                <div class="pricing-info"> <span class="currency-sign">$</span>
                  <h2>${i.pack_price}</h2>
                  <h6>Per Month</h6>
                </div>
                <div class="pricing-features">
                  <ul>
                    <li><i class="fa fa-hdd-o"></i> <b>Description</b><br>${i.pack_desc}</li>
                    <li><i class="fa fa-exchange"></i> <b>Validity</b><br>${i.pack_validity}</li>
                  </ul>
                </div>
                
                <%-- <script  src="js/paypal-button.min.js?merchant=technocraftdebugger@gmail.com" 
    											data-button="buynow" 
 											   	data-name="${pack.pack_name}"
    											data-quantity="1" 
											    data-amount="${pack.pack_price}" 
											    data-currency="USD" 
											    data-shipping="0" 
											    data-tax="0" 
											    data-env="sandbox"
							></script>  --%>
							<script 
    data-env="sandbox" 
    data-callback="user_index.jsp" 
    data-tax="0" 
    data-shipping="0"  
    data-amount="${pack.pack_price}" 
    data-quantity="1" 
    data-name="${pack.pack_name}" 
    data-button="buynow" src="https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=technocraftdebugger@gmail.com"
></script>
							</div>
            </div>
            </a:forEach>
            
            <%-- <div class="col-sm-4 col-md-3 hero-plan">
              <div class="pricing-plan margin-none">
                <div class="pricing-title btn-blue">
                  <h3>Standard</h3>
                  <span class="pricing-subtitle">Most Popular</span> </div>
                <div class="pricing-info"> <span class="currency-sign">$</span>
                  <h2>59</h2>
                  <h6>Per Month</h6>
                </div>
                <div class="pricing-features">
                  <ul>
                    <li><i class="fa fa-hdd-o"></i> <b>2GB</b> Disk Space</li>
                    <li><i class="fa fa-exchange"></i> <b>20GB</b> Bandwidth</li>
                    <li><i class="fa fa-refresh"></i> <b>5</b> Email Accounts</li>
                  </ul>
                </div>
                <a class="btn btn-blue" href="#">Sign up</a> </div>
            </div>
            <div class="col-sm-4 col-md-3 hero-plan">
              <div class="pricing-plan margin-none">
                <div class="pricing-title btn-green">
                  <h3>Standard</h3>
                  <span class="pricing-subtitle">Most Popular</span> </div>
                <div class="pricing-info"> <span class="currency-sign">$</span>
                  <h2>59</h2>
                  <h6>Per Month</h6>
                </div>
                <div class="pricing-features">
                  <ul>
                    <li><i class="fa fa-hdd-o"></i> <b>2GB</b> Disk Space</li>
                    <li><i class="fa fa-exchange"></i> <b>20GB</b> Bandwidth</li>
                    <li><i class="fa fa-refresh"></i> <b>5</b> Email Accounts</li>
                  </ul>
                </div>
                <a class="btn btn-green" href="#">Sign up</a> </div>
            </div>
            <div class="hidden-sm col-md-3 hero-plan">
              <div class="pricing-plan margin-none">
                <div class="pricing-title btn-alert">
                  <h3>Standard</h3>
                  <span class="pricing-subtitle">Most Popular</span> </div>
                <div class="pricing-info"> <span class="currency-sign">$</span>
                  <h2>59</h2>
                  <h6>Per Month</h6>
                </div>
                <div class="pricing-features">
                  <ul>
                    <li><i class="fa fa-hdd-o"></i> <b>2GB</b> Disk Space</li>
                    <li><i class="fa fa-exchange"></i> <b>20GB</b> Bandwidth</li>
                    <li><i class="fa fa-refresh"></i> <b>5</b> Email Accounts</li>
                  </ul>
                </div>
                <a class="btn btn-alert" href="#">Sign up</a> </div>
            </div> --%>
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
<script src="js/bootstrap.min.js"></script> 

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
