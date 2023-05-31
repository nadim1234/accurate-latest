<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <meta name="description" content="CRMS - Bootstrap Admin Template">
		<meta name="keywords" content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
        <meta name="author" content="Dreamguys - Bootstrap Admin Template">
        <meta name="robots" content="noindex, nofollow">
        <title>Accurate ERP - Shivansh Innovative Solution</title>
        
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="assets/css/font-awesome.min.css">

        <!-- Feathericon CSS -->
		<link rel="stylesheet" href="assets/css/feather.css">

		<!-- Datatable CSS -->
		<link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">

        <!--font style-->
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600&display=swap" rel="stylesheet">
		
		<!-- Lineawesome CSS -->
        <link rel="stylesheet" href="assets/css/line-awesome.min.css">

		<link rel="stylesheet" href="assets/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

        <!-- Select2 CSS -->
		<link rel="stylesheet" href="assets/css/select2.min.css">

		<!-- Theme CSS -->
        <link rel="stylesheet" href="assets/css/theme-settings.css">

		<link rel="stylesheet" href="assets/css/bootstrap-datetimepicker.min.css">

		<!-- Main CSS -->
        <link rel="stylesheet" href="assets/css/style.css" class="themecls">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
       
    </head>
    <body id="skin-color" class="inter">
		 
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header" id="heading">
			
				<!-- Logo -->
                <div class="header-left">
                    <a href="index.html" class="logo">
						<img src="assets/img/logo.png"  alt="Logo" class="sidebar-logo">
						<img src="assets/img/s-logo.png"  alt="Logo" class="mini-sidebar-logo">
					</a>
                </div>
				<!-- /Logo -->
				
				<a id="toggle_btn" href="javascript:void(0);">
					<span class="bar-icon">
						<span></span>
						<span></span>
						<span></span>
					</span>
				</a>
				
				<!-- Header Title -->
                <div class="page-title-box">
					<div class="top-nav-search">
							<a href="javascript:void(0);" class="responsive-search">
								<i class="fa fa-search"></i>
						   </a>
							<form action="search.html">
								<input class="form-control" type="text" placeholder="Search here">
								<button class="btn" type="submit"><i class="fa fa-search"></i></button>
							</form>
						</div>
                </div>
				<!-- /Header Title -->
				
				<a id="mobile_btn" class="mobile_btn" href="#sidebar"><i class="fa fa-bars"></i></a>
				
				<!-- Header Menu -->
				<ul class="nav user-menu">
				
					<!-- Search -->
					<li class="nav-item">
						
					</li>
					<!-- /Search -->
				
					<!-- Flag -->
					<li class="nav-item dropdown has-arrow flag-nav">
						<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#" role="button">
							<img src="assets/img/flags/us.png" alt="" height="20"> <span>English</span>
						</a>
						<div class="dropdown-menu dropdown-menu-right">
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="assets/img/flags/us.png" alt="" height="16"> English
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="assets/img/flags/fr.png" alt="" height="16"> French
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="assets/img/flags/es.png" alt="" height="16"> Spanish
							</a>
							<a href="javascript:void(0);" class="dropdown-item">
								<img src="assets/img/flags/de.png" alt="" height="16"> German
							</a>
						</div>
					</li>
					<!-- /Flag -->
				
					<!-- Notifications -->
					<li class="nav-item dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
							<i class="fa fa-bell"></i> <span class="badge rounded-pill">3</span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">Notifications</span>
								<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="activities.html">
											<div class="media d-flex">
												<span class="avatar flex-shrink-0">
													<img alt="" src="assets/img/profiles/avatar-02.jpg">
												</span>
												<div class="media-body flex-grow-1">
													<p class="noti-details"><span class="noti-title">John Doe</span> added new task <span class="noti-title">Patient appointment booking</span></p>
													<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="activities.html">
											<div class="media d-flex">
												<span class="avatar flex-shrink-0">
													<img alt="" src="assets/img/profiles/avatar-03.jpg">
												</span>
												<div class="media-body flex-grow-1">
													<p class="noti-details"><span class="noti-title">Tarah Shropshire</span> changed the task name <span class="noti-title">Appointment booking with payment gateway</span></p>
													<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="activities.html">
											<div class="media d-flex">
												<span class="avatar flex-shrink-0">
													<img alt="" src="assets/img/profiles/avatar-06.jpg">
												</span>
												<div class="media-body flex-grow-1">
													<p class="noti-details"><span class="noti-title">Misty Tison</span> added <span class="noti-title">Domenic Houston</span> and <span class="noti-title">Claire Mapes</span> to project <span class="noti-title">Doctor available module</span></p>
													<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="activities.html">
											<div class="media d-flex">
												<span class="avatar flex-shrink-0">
													<img alt="" src="assets/img/profiles/avatar-17.jpg">
												</span>
												<div class="media-body flex-grow-1">
													<p class="noti-details"><span class="noti-title">Rolland Webber</span> completed task <span class="noti-title">Patient and Doctor video conferencing</span></p>
													<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="activities.html">
											<div class="media d-flex">
												<span class="avatar flex-shrink-0">
													<img alt="" src="assets/img/profiles/avatar-13.jpg">
												</span>
												<div class="media-body flex-grow-1">
													<p class="noti-details"><span class="noti-title">Bernardo Galaviz</span> added new task <span class="noti-title">Private chat module</span></p>
													<p class="noti-time"><span class="notification-time">2 days ago</span></p>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="activities.html">View all Notifications</a>
							</div>
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- Message Notifications -->
					<li class="nav-item dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
							<i class="fa fa-comment"></i> <span class="badge rounded-pill">8</span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">Messages</span>
								<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="#">
											<div class="list-item">
												<div class="list-left">
													<span class="avatar">
														<img alt="" src="assets/img/profiles/avatar-09.jpg">
													</span>
												</div>
												<div class="list-body">
													<span class="message-author">Richard Miles </span>
													<span class="message-time">12:28 AM</span>
													<div class="clearfix"></div>
													<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="list-item">
												<div class="list-left">
													<span class="avatar">
														<img alt="" src="assets/img/profiles/avatar-02.jpg">
													</span>
												</div>
												<div class="list-body">
													<span class="message-author">John Doe</span>
													<span class="message-time">6 Mar</span>
													<div class="clearfix"></div>
													<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="list-item">
												<div class="list-left">
													<span class="avatar">
														<img alt="" src="assets/img/profiles/avatar-03.jpg">
													</span>
												</div>
												<div class="list-body">
													<span class="message-author"> Tarah Shropshire </span>
													<span class="message-time">5 Mar</span>
													<div class="clearfix"></div>
													<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="list-item">
												<div class="list-left">
													<span class="avatar">
														<img alt="" src="assets/img/profiles/avatar-05.jpg">
													</span>
												</div>
												<div class="list-body">
													<span class="message-author">Mike Litorus</span>
													<span class="message-time">3 Mar</span>
													<div class="clearfix"></div>
													<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="list-item">
												<div class="list-left">
													<span class="avatar">
														<img alt="" src="assets/img/profiles/avatar-08.jpg">
													</span>
												</div>
												<div class="list-body">
													<span class="message-author"> Catherine Manseau </span>
													<span class="message-time">27 Feb</span>
													<div class="clearfix"></div>
													<span class="message-content">Lorem ipsum dolor sit amet, consectetur adipiscing</span>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#">View all Messages</a>
							</div>
						</div>
					</li>
					<!-- /Message Notifications -->

					<li class="nav-item dropdown has-arrow main-drop">
						<a href="#" class="dropdown-toggle nav-link" data-bs-toggle="dropdown">
							<span class="user-img"><img src="assets/img/profiles/avatar-21.jpg" alt="">
							<span class="status online"></span></span>
							<span>Admin</span>
						</a>
						<div class="dropdown-menu">
							<a class="dropdown-item" href="profile.html">My Profile</a>
							<a class="dropdown-item" href="settings.html">Settings</a>
							<a class="dropdown-item" href="login.html">Logout</a>
						</div>
					</li>
				</ul>
				<!-- /Header Menu -->
				
				<!-- Mobile Menu -->
				<div class="dropdown mobile-user-menu">
					<a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="fa fa-ellipsis-v"></i></a>
					<div class="dropdown-menu dropdown-menu-right">
						<a class="dropdown-item" href="profile.html">My Profile</a>
						<a class="dropdown-item" href="settings.html">Settings</a>
						<a class="dropdown-item" href="login.html">Logout</a>
					</div>
				</div>
				<!-- /Mobile Menu -->
				
            </div>
			<!-- /Header -->
			
			<!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
                	<form action="search.html" class="mobile-view">
						<input class="form-control" type="text" placeholder="Search here">
						<button class="btn" type="button"><i class="fa fa-search"></i></button>
					</form>
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="nav-item nav-profile">
				              <a href="#" class="nav-link">
				                <div class="nav-profile-image">
				                  <img src="assets/img/profiles/avatar-17.jpg" alt="profile">
				                  
				                </div>
				                <div class="nav-profile-text d-flex flex-column">
				                  <span class="font-weight-bold mb-2">David Grey. H</span>
				                  <span class="text-white text-small">Project Manager</span>
				                </div>
				                <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
				              </a>
				            </li>
							<li class="menu-title"> 
								<span>Main</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather-home"></i> <span> Dashboard</span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="index.html">Deals Dashboard</a></li>
									<li><a href="projects-dashboard.html">Projects Dashboard</a></li>
									<li><a href="leads-dashboard.html">Leads Dashboard</a></li>
								</ul>
							</li>
							
							<li> 
								<a href="tasks.html"><i class="feather-check-square"></i> <span>Tasks</span></a>
							</li>
							<li> 
								<a href="contacts.html"><i class="feather-smartphone"></i> <span>Contacts</span></a>
							</li>
							<li> 
								<a href="companies.html"><i class="feather-database"></i> <span>Companies</span></a>
							</li>
							<li> 
								<a href="leads.html"><i class="feather-user"></i> <span>Leads</span></a>
							</li>
							
							<li> 
								<a href="deals.html"><i class="feather-radio"></i> <span>Deals</span></a>
							</li>
							<li> 
								<a href="projects.html"><i class="feather-grid"></i> <span>Projects</span></a>
							</li>
							<li> 
								<a href="reports.html"><i class="feather-bar-chart-2"></i> <span>Reports</span></a>
							</li>
							<li> 
								<a href="activities.html"><i class="feather-calendar"></i> <span>Activities</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather-grid"></i> <span> Blogs</span>
									<span class="menu-arrow"></span>
								</a>
								<ul class="sub-menus">
									<li><a href="blog.html" >All Blogs</a></li>
									<li><a href="add-blog.html">Add Blog</a></li>
									<li><a href="edit-blog.html">Edit Blog</a></li>
									<li><a href="blog-Categories.html">Categories</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather-clipboard"></i> <span>  Invoices </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="invoices.html" >Invoices List</a></li>
									<li><a href="invoice-grid.html" >Invoices Grid</a></li>
									<li><a href="add-invoice.html" class="active">Add Invoices</a></li>
									<li><a href="edit-invoice.html">Edit Invoices</a></li>
									<li><a href="view-invoice.html">Invoices Details</a></li>
									<li><a href="invoices-settings.html">Invoices Settings</a></li>
								</ul>
							</li>
							<li> 
								<a href="email.html"><i class="feather-mail"></i> <span>Email</span></a>
							</li>
							<li> 
								<a href="settings.html"><i class="feather-settings"></i> <span>Settings</span></a>
							</li>
							<li class="menu-title"> 
								<span>Pages</span>
							</li>
							
							<li class="submenu">
								<a href="#"><i class="feather-alert-triangle"></i> <span> Error Pages </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="error-404.html">404 Error </a></li>
									<li><a href="error-500.html">500 Error </a></li>
								</ul>
							</li>
							
							<li class="submenu">
								<a href="#"><i class="feather-list"></i> <span> Pages </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="faq.html"> FAQ </a></li>
									<li><a href="terms.html"> Terms </a></li>
									<li><a href="privacy-policy.html"> Privacy Policy </a></li>
									<li><a href="blank-page.html"> Blank Page </a></li>
								</ul>
							</li>
							<li class="menu-title"> 
								<span>UI Interface</span>
							</li>
							<li> 
								<a href="components.html"><i class="feather-layout"></i> <span>Components</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather feather-box"></i> <span>Elements </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="sweetalerts.html">Sweet Alerts</a></li>
									<li><a href="tooltip.html">Tooltip</a></li>
									<li><a href="popover.html">Popover</a></li>
									<li><a href="ribbon.html">Ribbon</a></li>
									<li><a href="clipboard.html">Clipboard</a></li>
									<li><a href="drag-drop.html">Drag & Drop</a></li>
									<li><a href="rangeslider.html">Range Slider</a></li>
									<li><a href="rating.html">Rating</a></li>
									<li><a href="toastr.html">Toastr</a></li>
									<li><a href="text-editor.html">Text Editor</a></li>
									<li><a href="counter.html">Counter</a></li>
									<li><a href="scrollbar.html">Scrollbar</a></li>
									<li><a href="spinner.html">Spinner</a></li>
									<li><a href="notification.html">Notification</a></li>
									<li><a href="lightbox.html">Lightbox</a></li>
									<li><a href="stickynote.html">Sticky Note</a></li>
									<li><a href="timeline.html">Timeline</a></li>
									<li><a href="horizontal-timeline.html">Horizontal Timeline</a></li>
									<li><a href="form-wizard.html">Form Wizard</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather feather-bar-chart-2"></i> <span> Charts </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="chart-apex.html">Apex Charts</a></li>
									<li><a href="chart-js.html">Chart Js</a></li>
									<li><a href="chart-morris.html">Morris Charts</a></li>
									<li><a href="chart-flot.html">Flot Charts</a></li>
									<li><a href="chart-peity.html">Peity Charts</a></li>
									<li><a href="chart-c3.html">C3 Charts</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather feather-award"></i> <span> Icons </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="icon-fontawesome.html">Fontawesome Icons</a></li>
									<li><a href="icon-feather.html">Feather Icons</a></li>
									<li><a href="icon-ionic.html">Ionic Icons</a></li>
									<li><a href="icon-material.html">Material Icons</a></li>
									<li><a href="icon-pe7.html">Pe7 Icons</a></li>
									<li><a href="icon-simpleline.html">Simpleline Icons</a></li>
									<li><a href="icon-themify.html">Themify Icons</a></li>
									<li><a href="icon-weather.html">Weather Icons</a></li>
									<li><a href="icon-typicon.html">Typicon Icons</a></li>
									<li><a href="icon-flag.html">Flag Icons</a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather-credit-card"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="form-basic-inputs.html">Basic Inputs </a></li>
									<li><a href="form-input-groups.html">Input Groups </a></li>
									<li><a href="form-horizontal.html">Horizontal Form </a></li>
									<li><a href="form-vertical.html"> Vertical Form </a></li>
									<li><a href="form-mask.html"> Form Mask </a></li>
									<li><a href="form-validation.html"> Form Validation </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="feather-box"></i> <span> Tables </span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li><a href="tables-basic.html">Basic Tables </a></li>
									<li><a href="data-tables.html">Data Table </a></li>
								</ul>
							</li>
							<li class="menu-title"> 
								<span>Extras</span>
							</li>
							
							<li class="submenu">
								<a href="javascript:void(0);"><i class="feather-command"></i> <span>Multi Level</span> <span class="menu-arrow"></span></a>
								<ul class="sub-menus">
									<li class="submenu">
										<a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
										<ul class="sub-menus">
											<li><a href="javascript:void(0);"><span>Level 2</span></a></li>
											<li class="submenu">
												<a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
												<ul class="sub-menus">
													<li><a href="javascript:void(0);">Level 3</a></li>
													<li><a href="javascript:void(0);">Level 3</a></li>
												</ul>
											</li>
											<li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);"> <span>Level 1</span></a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
			<div class="page-wrapper">
				<div class="content container-fluid">
			
					<!-- Page Header -->
					<div class="page-header invoices-page-header">
						<div class="row align-items-center">
							<div class="col">
								<ul class="breadcrumb invoices-breadcrumb">
									<li class="breadcrumb-item invoices-breadcrumb-item">
										<a href="invoices.html">
											<i class="fa fa-chevron-left"></i> Back to Invoice List
										</a>
									</li>
								</ul>
							</div>
							<div class="col-auto">
								<div class="invoices-create-btn">
									<a class="invoices-preview-link" href="#" data-bs-toggle="modal" data-bs-target="#invoices_preview"><i class="fa fa-eye"></i> Preview</a>
									<a  href="#" data-bs-toggle="modal" data-bs-target="#delete_invoices_details" class="btn delete-invoice-btn">
										Delete Invoice
									</a>
									<a href="#" data-bs-toggle="modal" data-bs-target="#save_invocies_details" class="btn save-invoice-btn">
										Save Draft
									</a>
								</div>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-md-12">
							<div class="card invoices-add-card">
								<div class="card-body">
									<!-- <form action="#"  class="invoices-form"> -->
										<div class="invoices-main-form">
											<div class="row">
												<div class="col-xl-4 col-md-6 col-sm-12 col-12">
													<div class="form-group">
														<label>Customer Name</label>
														<div class="form-group">
														     <input type="hidden" name="invoiceDO.customerName" id="custname"/>         
															 <select id="custnameselected" onchange ="custNameSelected();" class="select ">
																<s:iterator value="invoiceDO.customerList">
                                                                  <option value="<s:property value="customerId"/>"> 
                                                                   <s:property value="customerName"/> </option>
															    </s:iterator>
															 </select>
														</div>
														
													</div>
													<div class="form-group">
														<label>Po Number</label>
														<input class="form-control" id="poNumber" type="text" placeholder="Enter Reference Number" name="invoiceDO.poNo">
													</div>
												</div>
												<div class="col-xl-5 col-md-6 col-sm-12 col-12">
													<h4 class="invoice-details-title">Invoice details</h4>
													<div class="invoice-details-box">
														<div class="invoice-inner-head">
															<span>Invoice No. <a id="invoiceNo" href="#">
															<input type="text" style="border:none;cursor: pointer;" name="invoiceDO.invoiceNo" value="<s:property value="invoiceDO.invoiceNo"/>"></a></span>
														</div>
														<div class="invoice-inner-footer">
															<div class="row align-items-center">
																<div class="col-lg-6 col-md-6">
																	<div class="invoice-inner-date">
																		<span>
																			Date <input class="form-control datetimepicker" id="invoiceDate" type="text" name="invoiceDO.invoiceDate" 
																			value="<s:property value="invoiceDO.invoiceDate"/>"
																			 placeholder="<s:property value="invoiceDO.invoiceDate"/>">
																		</span>
																	</div>
																</div>
																<div class="col-lg-6 col-md-6">
																	<div class="invoice-inner-date invoice-inner-datepic">
																		<span>
																			Due Date <input class="form-control datetimepicker" id="invoiceDueDtae" type="text" 
																			 placeholder="Select" name="invoiceDO.dueDate">
																		</span>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
												<div class="col-xl-3 col-md-12 col-sm-12 col-12">
													<div class="inovices-month-info">
														<div class="form-group mb-0">
															<label class="custom_check w-100">
																<input type="checkbox" id="enableTax" name="invoice">
																<span class="checkmark"></span> Enable tax
															</label>
															<label class="custom_check w-100">
																<input type="checkbox" id="chkYes" name="invoice">
																<span class="checkmark"></span> Recurring Invoice
															</label>
														</div>
														<div id="show-invoices">
															<div class="row">
																<div class="col-md-6">
																	<div class="form-group">
																		<select class="select">
																			<option>By month</option>
																			<option>March</option>
																			<option>April</option>
																			<option>May</option>
																			<option>June</option>
																			<option>July</option>
																		</select>
																	</div>
																</div>
																<div class="col-md-6">
																	<div class="form-group">
																		<input class="form-control" type="text" placeholder="Enter Months">
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="invoice-item">
											<div class="row">
												<div class="col-xl-4 col-lg-6 col-md-6">
													<div class="invoice-info">
														<strong class="customer-text">Invoice From <a class="small" href="edit-invoice.html">Edit Address</a></strong>
														<input type="hidden" name="invoiceDO.BillingAddress" id="invoiceFromHiddenId"/>
														<p id="invoiceFrom" class="invoice-details invoice-details-two">
															
														</p>
													</div>
												</div>
												<div class="col-xl-4 col-lg-6 col-md-6">
													<div class="invoice-info">
														<strong class="customer-text">Invoice To</strong>
														<input type="hidden" name="invoiceDO.shippingAddress" id="invoiceToHiddenId"/>
														<p id="invoiceTo" class="invoice-details invoice-details-two">
															
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="invoice-add-table">
											<h4>Item Details</h4>
											<div class="table-responsive">
												<table id="prodTable" class="table table-striped table-nowrap  mb-0 no-footer add-table-items">
													<thead>
														<tr>
															<th>Items</th>
															<th>Category</th>
															<th>Quantity</th>
															<th>Price</th>
															<th>Amount</th>
															<th>Discount</th>
															<th>Actions</th>
														</tr>
													</thead>
													<tbody>
														<tr class="add-row">
															<td>
																<div class="form-group">
																  <input type="hidden" id="productName" name="invoiceDO.invoiceProductDO.invoiceProductId" />
																  <input type="hidden" id="productName" name="invoiceDO.invoiceProductDO.productName" />
																		<select class="select" id="selectedproduct" onchange="selectedProduct();">
																			
																			<s:iterator value="invoiceDO.productList">
                                                                            <option value="<s:property value="productId" />"> 
                                                                              <s:property value="productName" /> </option>
																	         </s:iterator>
																		</select>
																	</div>
															</td>
															<td>
																<input type="text" id="category" name="invoiceDO.invoiceProductDO.category" class="form-control">
															</td>
															<td>
																<input type="text" id="quantity" name="invoiceDO.invoiceProductDO.quantity" onblur="javascript:calculateAmtonQuantity();" class="form-control">
															</td>
															<td>
																<input type="text" id="rate" name="invoiceDO.invoiceProductDO.rate" class="form-control">
															</td>
															<td>
																<input type="text" id="amount" name="invoiceDO.invoiceProductDO.amount" class="form-control">
															</td>
															<td>
																<input type="text" id="discount" name="invoiceDO.invoiceProductDO.discount" onblur="javascript:calAmountOnDiscount();" class="form-control">
															</td>
															<td class="add-remove text-end">
																<a href="javascript:addproduct();" class="add-btns me-2"><i class="fas fa-plus-circle"></i></a> 
																<a href="#" class="copy-btn me-2"><i class="fas fa-copy"></i></a>
																<a href="#" ><i class="fa fa-trash-alt"></i></a>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-7 col-md-6">
												<div class="invoice-fields">
													<h4 class="field-title">More Fields</h4>
													<div class="field-box">
														<p>Payment Details</p>
														<a class="btn btn-primary" href="#" data-bs-toggle="modal" data-bs-target="#bank_details"><i class="fas fa-plus-circle me-2"></i>Add Bank Details</a>
													</div>
												</div>
												<div class="invoice-faq">
													<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
														<div class="faq-tab">
															<div class="panel panel-default">
																<div class="panel-heading" role="tab" id="headingTwo">
																	<p class="panel-title">
																		<a class="collapsed" data-bs-toggle="collapse" data-bs-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
																		<i class="fas fa-plus-circle me-1"></i> Add Terms & Conditions
																		</a>
																	</p>
																</div>
																<div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo" data-bs-parent="#accordion">
																	<div class="panel-body">
																		<textarea class="form-control"></textarea>
																	</div>
																</div>
															</div>
														</div>
														<div class="faq-tab">
															<div class="panel panel-default">
																<div class="panel-heading" role="tab" id="headingThree">
																	<p class="panel-title">
																		<a class="collapsed" data-bs-toggle="collapse" data-bs-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
																		<i class="fas fa-plus-circle me-1"></i> Add Notes
																		</a>
																	</p>
																</div>
																<div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree" data-bs-parent="#accordion">
																	<div class="panel-body">
																		<textarea class="form-control"></textarea>
																	</div>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="col-lg-5 col-md-6">
												<div class="invoice-total-card">
													<h4 class="invoice-total-title">Summary</h4>
													<div class="invoice-total-box">
														<div class="invoice-total-inner">
															<p>Taxable Amount <span id="taxableAmount">0</span><input type="hidden" class="form-control" name="invoiceDO.taxableValue"></p>
															<p>Round Off 
																<input type="checkbox" id="status_1" class="check">
																<label for="status_1" class="checktoggles">checkbox</label> 
																<span id="checkbox">$54</span>
															</p>
															<div class="links-info-one">
																<div class="links-info">
																	<div class="links-cont">
																		<a href="#" class="service-trash">
																		</a>
																	</div>
																</div>
															</div>
															<a href="javascript:void(0);" class="add-links1">
																<i class="fas fa-plus-circle me-1"></i> Additional Charges
															</a>
															<div class="links-info-discount">
																<div class="links-cont-discount">
																	<a href="javascript:void(0);" class="add-links-one">
																		<i class="fas fa-plus-circle me-1"></i> Add more Discount
																	</a>
																</div>
															</div>
														</div>
														<div class="invoice-total-footer">
															<h4>Total Amount <input type="text" id="totalamount" class="form-control" name="invoiceDO.taxableValue"></h4>
														</div>
													</div>
												</div>
												<div class="upload-sign">
													<div class="form-group service-upload">
														<span>Upload Sign</span>
														<input type="file" multiple>
													</div>
													<div class="form-group">
														<input type="text" class="form-control" placeholder="Name of the Signatuaory">
													</div>
													<div class="form-group float-end mb-0">
														<button class="btn btn-primary" onclick="saveInvoice();"  type="submit">Save Invoice</button>
													</div>
												</div>
											</div>
										</div>
										<!-- <form> -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Page Wrapper -->

		    <!-- Invoices Preview Modal -->
			<div class="modal custom-modal fade invoices-preview" id="invoices_preview" role="dialog">
				<div class="modal-dialog modal-dialog-centered modal-xl">
					<div class="modal-content">
						<div class="modal-body">
							<div class="row justify-content-center">
								<div class="col-lg-12">
									<div class="card invoice-info-card">
										<div class="card-body pb-0">
											<div class="invoice-item invoice-item-one">
												<div class="row">
													<div class="col-md-6">
														<div class="invoice-logo">
															<img src="assets/img/logo.png" alt="logo">
														</div>
													</div>
													<div class="col-md-6">
														<div class="invoice-info">
															<div class="invoice-head">
																<h2 class="text-primary">Invoice</h2>
																<p>Invoice Number : In983248782</p>
															</div>
														</div>
													</div>
												</div>
											</div>
											
											<!-- Invoice Item -->
											<div class="invoice-item invoice-item-bg">
												<div class="invoice-circle-img">
													<img src="assets/img/invoice-circle1.png" alt="" class="invoice-circle1">
													<img src="assets/img/invoice-circle2.png" alt="" class="invoice-circle2">
												</div>
												<div class="row">
													<div class="col-lg-4 col-md-12">
														<div class="invoice-info">
															<strong class="customer-text-one">Billed to</strong>
															<h6 class="invoice-name">Customer Name</h6>
															<p class="invoice-details invoice-details-two">
																9087484288 <br>
																Address line 1, <br>
																Address line 2 <br>
																Zip code ,City - Country
															</p>
														</div>
													</div>
													<div class="col-lg-4 col-md-12">
														<div class="invoice-info">
															<strong class="customer-text-one">Invoice From</strong>
															<h6 class="invoice-name">Company Name</h6>
															<p class="invoice-details invoice-details-two">
																9087484288 <br>
																Address line 1, <br>
																Address line 2 <br>
																Zip code ,City - Country
															</p>
														</div>
													</div>
													<div class="col-lg-4 col-md-12">
														<div class="invoice-info invoice-info-one border-0">
															<p>Issue Date : 27 Jul 2022</p>
															<p>Due Date : 27 Aug 2022</p>
															<p>Due Amount : $ 1,54,22 </p>
															<p>Recurring Invoice : 15 Months</p>
															<p class="mb-0">PO Number : 54515454</p>
														</div>
													</div>
												</div>
											</div>
											<!-- /Invoice Item -->

											<!-- Invoice Item -->
											<div class="invoice-item invoice-table-wrap">
												<div class="row">
													<div class="col-md-12">
														<div class="table-responsive">
															<table class="invoice-table table table-center mb-0">
																<thead>
																	<tr>
																		<th>Description</th>
																		<th>Category</th>
																		<th>Rate/Item</th>
																		<th>Quantity</th>
																		<th>Discount (%)</th>
																		<th class="text-end">Amount</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td>Dell Laptop</td>
																		<td>Laptop</td>
																		<td>$1,110</td>
																		<td>2</td>
																		<td>2%</td>
																		<td class="text-end">$400</td>
																	</tr>
																	<tr>
																		<td>HP Laptop</td>
																		<td>Laptop</td>
																		<td>$1,500</td>
																		<td>3</td>
																		<td>6%</td>
																		<td class="text-end">$3,000</td>
																	</tr>
																	<tr>
																		<td>Apple Ipad</td>
																		<td>Ipad</td>
																		<td>$11,500</td>
																		<td>1</td>
																		<td>10%</td>
																		<td class="text-end">$11,000</td>
																	</tr>
																</tbody>
															</table>
														</div>
													</div>
												</div>
											</div>
											<!-- /Invoice Item -->

											<div class="row align-items-center justify-content-center">
												<div class="col-lg-6 col-md-6">
													<div class="invoice-payment-box">
														<h4>Payment Details</h4>
														<div class="payment-details">
															<p>Debit Card XXXXXXXXXXXX-2541 HDFC Bank</p>
														</div>
													</div>
												</div>
												<div class="col-lg-6 col-md-6">
													<div class="invoice-total-card">
														<div class="invoice-total-box">
															<div class="invoice-total-inner">
																<p>Taxable <span>$6,660.00</span></p>
																<p>Additional Charges <span>$6,660.00</span></p>
																<p>Discount <span>$3,300.00</span></p>
																<p class="mb-0">Sub total <span>$3,300.00</span></p>
															</div>
															<div class="invoice-total-footer">
																<h4>Total Amount <span>$143,300.00</span></h4>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="invoice-sign-box">
												<div class="row">
													<div class="col-lg-8 col-md-8">
														<div class="invoice-terms">
															<h6>Notes:</h6>
															<p class="mb-0">Enter customer notes or any other details</p>
														</div>
														<div class="invoice-terms mb-0">
															<h6>Terms and Conditions:</h6>
															<p class="mb-0">Enter customer notes or any other details</p>
														</div>
													</div>
													<div class="col-lg-4 col-md-4">
														<div class="invoice-sign text-end">
															<img class="img-fluid d-inline-block" src="assets/img/signature.png" alt="sign">
															<span class="d-block">Harristemp</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Invoices Preview Modal -->

		    <!-- Add Invoices Modal -->
			<div class="modal custom-modal fade bank-details" id="bank_details" role="dialog">
				<div class="modal-dialog modal-dialog-centered modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<div class="form-header text-start mb-0">
								<h4 class="mb-0">Add Bank Details</h4>
							</div>
							<button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="bank-inner-details">
								<div class="row">
									<div class="col-lg-6 col-md-6">
										<div class="form-group">
											<label>Account Holder Name</label>
											<input type="text" class="form-control" placeholder="Add Name">
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="form-group">
											<label>Bank name</label>
											<input type="text" class="form-control" placeholder="Add Bank name">
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="form-group">
											<label>IFSC Code</label>
											<input type="text" class="form-control">
										</div>
									</div>
									<div class="col-lg-6 col-md-6">
										<div class="form-group">
											<label>Account Number</label>
											<input type="text" class="form-control">
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="modal-footer">
							<div class="bank-details-btn">
								<a href="javascript:void(0);" data-bs-dismiss="modal" class="btn bank-cancel-btn me-2">Cancel</a>
								<a href="javascript:void(0);" class="btn bank-save-btn">Save Item</a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Add Invoices Modal -->

			<!-- Delete Invoices Modal -->
			<div class="modal custom-modal fade" id="delete_invoices_details" role="dialog">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body">
							<div class="form-header">
								<h3>Delete Invoice Details</h3>
								<p>Are you sure want to delete?</p>
							</div>
							<div class="modal-btn delete-action">
								<div class="row">
									<div class="col-6">
										<a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-continue-btn">Delete</a>
									</div>
									<div class="col-6">
										<a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-cancel-btn">Cancel</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Delete Invoices Modal -->

			<!-- Save Invoices Modal -->
			<div class="modal custom-modal fade" id="save_invocies_details" role="dialog">
				<div class="modal-dialog modal-dialog-centered">
					<div class="modal-content">
						<div class="modal-body">
							<div class="form-header">
								<h3>Save Invoice Details</h3>
								<p>Are you sure want to save?</p>
							</div>
							<div class="modal-btn delete-action">
								<div class="row">
									<div class="col-6">
										<a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-continue-btn">Save</a>
									</div>
									<div class="col-6">
										<a href="javascript:void(0);" data-bs-dismiss="modal" class="btn btn-primary paid-cancel-btn">Cancel</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Save Invoices Modal -->
			
        </div>
		<!-- /Main Wrapper -->


		<!--theme settings modal-->

		<div class="modal right fade settings" id="settings"  role="dialog" aria-modal="true">
			<div class="toggle-close">
				  <div class="toggle" data-bs-toggle="modal" data-bs-target="#settings"><i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i>
				  </div>
	   
			</div>
			<div class="modal-dialog" role="document">
				<div class="modal-content">

					<div class="modal-header p-3">
						<h4 class="modal-title" id="myModalLabel2">Theme Customizer</h4>
						<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"> </button>
					</div>

					<div class="modal-body pb-3">
						<div class="scroll">
						
						<div>
							<ul class="list-group">
								<li class="list-group-item border-0">
								  <div class="row">
									<div class="col">
									  <h5 class="pb-2">Primary Skin</h5>
									</div>
									<div class="col text-end d-none">
									  <a class="reset text-white bg-dark" id="ChangeprimaryDefault">Reset Default</a>
									</div>
								  </div>
								  <div class="theme-settings-swatches">
									 <div class="themes">
											<div class="themes-body">
												<ul id="theme-changes" class="theme-colors border-0 list-inline-item list-unstyled mb-0">
													
													<li class="theme-title">Solid Color</li>
													<li class="list-inline-item"><span onclick="toggleTheme('style')" class="theme-defaults bg-warnings"  ></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-green')" class="theme-solid-purple bg-warnings"  ></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-blue')" class="theme-solid-black bg-blue"></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-orange')" class="theme-solid-pink bg-orange"></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-pink')" class="theme-solid-pink bg-pink"></span></li> 
													<li class="list-inline-item"><span onclick="toggleTheme('style-purple')" class="theme-solid-purle bg-purple"></span></li> 
													<li class="list-inline-item"><span onclick="toggleTheme('style-red')" class="theme-solid-danger bg-danger"></span></li> 
													<li><br /></li>
													<li><hr /></li>

													<li class="theme-title">Gradient Color</li>
													

													<li class="list-inline-item"><span onclick="toggleTheme('style-gradient-blue')" class="theme-orange bg-sunny-mornings"></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-gradient-green')" class="theme-blue bg-tempting-azures"></span></li> 
													<li class="list-inline-item"><span onclick="toggleTheme('style-gradient-maroon')" class="theme-grey bg-amy-crisps"></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-gradient-orange')" class="theme-lgrey bg-mean-fruits"></span></li>
													<li class="list-inline-item"><span onclick="toggleTheme('style-gradient-pink')" class="theme-dblue bg-malibu-beachs"></span></li> 
												</ul>
											</div>
										</div>

									 
								  </div>
								  </li>
							  </ul>
						  </div>
						  <div>
							<ul class="list-group">
							  <li class="list-group-item border-0">
								 <div class="row">
								  <div class="col">
									<h5 class="pb-2">Header Style</h5>
								  </div>
								  <div class="col text-end">
									<a class="reset text-white bg-dark" id="ChageheaderDefault">Reset Default</a>
								  </div>
								</div>
								<div class="theme-settings-swatches">
									<div class="themes">
										<div class="themes-body">
											<ul id="theme-change1" class="theme-colors border-0 list-inline-item list-unstyled mb-0">
													<li class="theme-title">Solid Color</li>
													<li class="list-inline-item"><span class="header-solid-black bg-black"></span></li>
													<li class="list-inline-item"><span class="header-solid-pink bg-primary"></span></li>
													<li class="list-inline-item"><span class="header-solid-orange bg-secondary1"></span></li> 
													<li class="list-inline-item"><span class="header-solid-purple bg-success"></span></li>
													<!-- <li class="list-inline-item"><span class="header-solid-blue bg-info"></span></li> -->
													<li class="list-inline-item"><span class="header-solid-green bg-warnings"></span></li>
													<li><br></li>
													<li><hr></li>

													<li class="theme-title">Gradient Color</li>

													<li class="list-inline-item"><span class="header-gradient-color1 bg-sunny-morning"></span></li>
													<li class="list-inline-item"><span class="header-gradient-color2 bg-tempting-azure"></span></li> 
													<li class="list-inline-item"><span class="header-gradient-color3 bg-amy-crisp"></span></li>
													<li class="list-inline-item"><span class="header-gradient-color4 bg-mean-fruit"></span></li>
													<li class="list-inline-item"><span class="header-gradient-color5 bg-malibu-beach"></span></li> 
													<li class="list-inline-item"><span class="header-gradient-color6 bg-ripe-malin"></span></li> 
													<li class="list-inline-item"><span class="header-gradient-color7 bg-plum-plate"></span></li>
													
											</ul>
										</div>
									</div>
									
								  </div>
							  </li>
							</ul>
						  </div>
						  <div>
							<ul class="list-group m-0">
								<li class="list-group-item border-0">
								  <div class="row">
									<div class="col">
									  <h5 class="pb-2">Apps Sidebar Style</h5>
									</div>
									<div class="col  text-end">
									  <a class="reset text-white bg-dark" id="ChagesidebarDefault">Reset Default</a>
									</div>
								  </div>
								  <div class="theme-settings-swatches">
									  <div class="themes">
										  <div class="themes-body">
											  <ul id="theme-change2" class="theme-colors border-0 list-inline-item list-unstyled">
													  <li class="theme-title">Solid Color</li>
													  <li class="list-inline-item"><span class="sidebar-solid-black bg-black"></span></li>
													  <li class="list-inline-item"><span class="sidebar-solid-pink bg-primary"></span></li>
													  <li class="list-inline-item"><span class="sidebar-solid-orange bg-secondary1"></span></li> 
													  <li class="list-inline-item"><span class="sidebar-solid-purple bg-success"></span></li>
													  <!-- <li class="list-inline-item"><span class="sidebar-solid-blue bg-info"></span></li> -->
													  <li class="list-inline-item"><span class="sidebar-solid-green bg-warnings"></span></li>
													  <li><br></li>
													  <li><hr></li>

													  <li class="theme-title">Gradient Color</li>

													  <li class="list-inline-item"><span class="sidebar-gradient-color1 bg-sunny-morning"></span></li>
													  <li class="list-inline-item"><span class="sidebar-gradient-color2 bg-tempting-azure"></span></li> 
													  <li class="list-inline-item"><span class="sidebar-gradient-color3 bg-amy-crisp"></span></li>
													  <li class="list-inline-item"><span class="sidebar-gradient-color4 bg-mean-fruit"></span></li>
													  <li class="list-inline-item"><span class="sidebar-gradient-color5 bg-malibu-beach"></span></li> 
													  <li class="list-inline-item"><span class="sidebar-gradient-color6 bg-ripe-malin"></span></li> 
													  <li class="list-inline-item"><span class="sidebar-gradient-color7 bg-plum-plate"></span></li>
													  
											  </ul>
										  </div>
									  </div>
									  
									</div>
								</li>
							  </ul>
							<div class="row Default-font">
								<div class="col">
									<h5 class="pb-2">Font Style</h5>
								</div>
								<div class="col text-end">
									<a class="reset text-white bg-dark font-Default">Reset Default</a>
								</div>
							</div>
							<ul class="list-inline-item list-unstyled font-family border-0 p-0" id="theme-change">
							  
							  <li class="list-inline-item roboto-font" >Roboto</li>
							  <li class="list-inline-item poppins-font">Poppins</li>
							  <li class="list-inline-item montserrat-font" >Montserrat</li>
							  <li class="list-inline-item inter-font">Inter</li>
							</ul>
						</div>
						
					</div>
					</div>

				</div>
			</div>
		</div>
		<!--theme settings-->
        <div class="sidebar-contact">
          	<div class="toggle" data-bs-toggle="modal" data-bs-target="#settings"><i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i></div>
           
        </div>


		<!-- jQuery -->
        <script src="assets/js/jquery-3.6.0.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="assets/js/bootstrap.bundle.min.js"></script>
		
		<!-- Slimscroll JS -->
		<script src="assets/js/jquery.slimscroll.min.js"></script>

		<script src="assets/plugins/moment/moment.min.js"></script>
		<script src="assets/js/bootstrap-datetimepicker.min.js"></script>

		<!-- Datatable JS -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/dataTables.bootstrap4.min.js"></script>
		<script src="assets/js/feather.min.js"></script>

		<!-- Select2 JS -->
		<script src="assets/js/select2.min.js"></script>
		<!-- theme JS -->
		<script src="assets/js/theme-settings.js"></script>
		
		<!-- theme JS -->
		<script src="assets/js/theme-settings.js"></script>

		<!-- Custom JS -->
		<script src="assets/js/app.js"></script>
         <script >
         
        function custNameSelected (){
        	 var custId = document.getElementById("custnameselected").value;
        	 console.log("called custnameseleted : "+custId);
        	 $("#custname").val(custname);
        	 $.ajax({
        		url : "getCustomerAddress.action",
        		type : "POST",
        		data : {custId : custId},
        		success : function (data){
        			console.log("address data : "+data);
        			if(data != ""){
        			document.getElementById('invoiceFrom').innerHTML = JSON.parse(data)["invoiceFrom"];
        			document.getElementById('invoiceTo').innerHTML = JSON.parse(data)["invoiceTo"];
        			console.log("successfully fetched address details of customer");
        			}else {
        				console.log("something is wrong address got null");
        			}
        		},
        		error : function (){
        			console.log("Exception occured while fetching customer address..");
        		}
        	 });
         }
         function selectedProduct (){
        	 var prodId = document.getElementById("selectedproduct").value;
        	 console.log("called selectedProduct : "+prodId);
        	 $.ajax({
        		url : "getProductDetails.action",
        		type : "GET",
        		data : {"prodId" : prodId},
        		success : function (data){
        			
        			if(data != ""){
        				
            			$("#rate").val(JSON.parse(data)["productAmount"]);
            			$("#category").val(JSON.parse(data)["Category"]);
            			$("#quantity").val(JSON.parse(data)["Unit"]);
            			var quantity = parseFloat($("#quantity").val());
            			var discount = parseFloat($("#discount").val());
            			 if(JSON.parse(data)["productAmount"] != null && quantity != null && discount != null){
            				var amount = quantity * parseFloat(JSON.parse(data)["productAmount"]);
            				$("#amount").val((amount - ( amount * discount / 100 )).toFixed(2));
            			    }else if(JSON.parse(data)["productAmount"] != null && quantity != null){
            				   $("#amount").val((quantity * parseFloat(JSON.parse(data)["productAmount"])).toFixed(2));
            			   }
            			}else {
            				console.log("something is wrong amount got null");
            			}
        		},
        		error : function (){
        			console.log("Exception occured while fetching product details..");
        		}
        	 });
         }
         
         function saveInvoice(){
        	 console.log("calling saveInvoice method..");
        	 console.log("taxable value "+$("#taxableAmount").text().trim());
        	 console.log("totalamount value "+$("#totalamount").val());
        	 $.ajax({
         		url : "saveInvoice.action",
         		type : "POST",
         		data : {"custnameselected" : $("#custname").val(),
         			     "poNumber" : $("#poNumber").val(),
         			     "invoiceNo" : $("#invoiceNo").text().trim(),
         			     "invoiceDate" : $("#invoiceDate").val(),
         			     "invoiceDueDtae" : $("#invoiceDueDtae").val(),
         			     "invoiceFrom" : $("#invoiceFrom").text().trim(),
         			     "invoiceTo" : $("#invoiceTo").text().trim(),
        	             "selectedProduct" : document.getElementById("selectedproduct").value,
        	             "prodDesc" : $("#category").val(),
        	             "quantity" : $("#quantity").val(),
        	             "rate"  : $("#rate").val(),
        	             "amount" : $("#amount").val(),
        	             "taxableAmount" : $("#taxableAmount").text().trim(),
        	             "totalamount" : $("#totalamount").val()
         			},
         		success : function (data){
             			console.log("successfully fetched product details ");	
         		},
         		error : function (){
         			console.log("Exception occured while fetching product details..");
         		}
         	 });
        	 /* var bForm = "addInvoice";
        	 url = "./saveInvoice.action";
        	 console.log("inside saveInvoice method.."+bForm +" and url :: "+url);
        	 $('#'+bForm).attr("action",url);
        	 $('#'+bForm).submit();  */
        	 
         }
         
         function addproduct(){
        	 var prodtable = $("#prodTable");
        	 var tlen = $("#prodTable tr").length-2;
        	 
        	console.log("tlen   ::"+tlen);
        	 prodtable.append('<tr class="add-row">'+
        	 '<td>'+document.getElementById("selectedproduct").value +'</td>'
        	 +'<input type="hidden" id="productName'+tlen+'" name="invoiceDO.invoiceProductDO.productName['+tlen+']" value="'+document.getElementById("selectedproduct").value+'">'
        	 +'<input type="hidden" id="invoiceProductId'+tlen+'" name="invoiceDO.invoiceProductDO.invoiceProductId['+tlen+']" value="'+2+'"></td>'
        	 +'<td>'+$("#category").val()+'<input type="hidden" id="category'+tlen+'" name="invoiceDO.invoiceProductDO.category['+tlen+']" value="'+$("#category").val()+'"></td>'
        	 +'<td>'+$("#quantity").val() + '<input type="hidden" id="quantity'+tlen+'" name="invoiceDO.invoiceProductDO.quantity['+tlen+']" value="'+$("#quantity").val()+'"></td>'
        	 +'<td>'+$("#rate").val() + '<input type="hidden" id="rate'+tlen+'" name="invoiceDO.invoiceProductDO.rate['+tlen+']" value="'+$("#rate").val()+'"></td>'
        	 +'<td>'+$("#amount").val() +'<input type="hidden" id="amount'+tlen+'" name="invoiceDO.invoiceProductDO.amount['+tlen+']" value="'+$("#amount").val()+'"></td>'
        	 +'<td>'+$("#discount").val()+'<input type="hidden" id="discount'+tlen+'" name="invoiceDO.invoiceProductDO.discount['+tlen+']" value="'+$("#discount").val()+'"></td>'
        	 +'<td class="add-remove text-end"> <a onclick="javascript:removeProd(\''+$("#amount").val()+'\');" class="remove-btn"><i class="fa fa-trash-alt"></i></a></td>');
        	 
        	  var totaltaxablevalue = parseFloat($("#amount").val());
        	 console.log("totaltaxable "+totaltaxablevalue);
        	  for(var i = 0;i<tlen;i++){
        		 console.log("inside for loop "+totaltaxablevalue);
        		 totaltaxablevalue = totaltaxablevalue + parseFloat($("#amount"+i).val());
        	 } 
        	  totaltaxablevalue = (totaltaxablevalue + ( totaltaxablevalue * 18 / 100 )).toFixed(2);
        	 document.getElementById('taxableAmount').innerHTML = totaltaxablevalue; 
        	 $("#totalamount").val(totaltaxablevalue);
         }
         
         function calculateAmtonQuantity(){
        	 console.log("inside calculateAmtonQuantity function");
        	 var quantity = parseInt($("#quantity").val());
        	 var rate = parseInt($("#rate").val());
        	 console.log("inside calculateAmtonQuantity values"+quantity +"rate"+rate);
        	 if((quantity != null || quantity != undefined) && rate != null || rate != undefined){
        	 var amount = quantity * rate.toFixed(2);
        	 $("#amount").val(amount);
        	 }
        	 
         }
         function calAmountOnDiscount(){
        	 console.log("inside calAmountOnDiscount function");
        	 var quantity = parseInt($("#quantity").val());
        	 var rate = parseInt($("#rate").val());
        	 var amount = quantity * rate;
        	 var discount = parseInt($("#discount").val());
        	 console.log("inside calAmountOnDiscount values"+amount +"discount"+discount);
        	 if((amount !=null && amount != undefined) && (discount != null || discount != undefined)){
        		 $("#amount").val((amount - ( amount * discount / 100 )).toFixed(2));
        	 }
         }
         
         function removeProd(amount){
        	 console.log("inside removeprod loop :"+amount);
        	  var totaltaxableval = (parseFloat($("#taxableAmount").text().trim()) - parseFloat(amount) - ( amount * 18 / 100 )).toFixed(2);
        	 document.getElementById('taxableAmount').innerHTML = totaltaxableval; 
        	 $("#totalamount").val(totaltaxableval);
         }
         
         function serviceOnTotal(serviceamountid){
        	 console.log("service charge field id :"+serviceamountid);
        	 var serviceamount = parseFloat($("#servicecharge"+serviceamountid).val());
        	 var total = parseFloat($("#totalamount").val());
        	 $("#totalamount").val(total + serviceamount);
        	 
         }
         
          function discountOnTotal(discountid){
        	  console.log("Discount amount id :"+discountid);
        	  var discount = parseFloat($("#discountOnTotal"+discountid).val());
        	  var total = parseFloat($("#totalamount").val());
        	  $("#totalamount").val((total - (total * discount / 100 )).toFixed(2));
          }
          
                   
          function rmvServOnTotandrmvDisOnTot(){
        	  console.log("rmvservntot ");
        	  var totalAmount = 0;
        	  var taxableval = parseFloat($("#taxableAmount").text().trim());
        	  var servicecharge = 0;
        	  $(".links-info-one input").each(function (index){
        		  console.log("inside loop of rmvservtax :"+index +" values of service:"+$(this).val());
        		  servicecharge = servicecharge + parseFloat($(this).val());
        	  });
        	  totalAmount = taxableval + servicecharge;
        	  var totalDiscount = 0;
        	  $(".links-info-discount input").each(function (index){
        		  console.log("inside loop of rmvservtax :"+index +"value of discount :"+$(this).val());
        		  totalAmount = (totalAmount - (totalAmount * parseFloat($(this).val()) / 100 )).toFixed(2);
        	  });
        	  
        	  $("#totalamount").val(totalAmount);
        	  
          }
         
       </script>
    </body>
</html>