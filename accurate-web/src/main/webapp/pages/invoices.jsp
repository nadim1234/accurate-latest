<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<meta name="description" content="CRMS - Bootstrap Admin Template">
<meta name="keywords"
	content="admin, estimates, bootstrap, business, corporate, creative, management, minimal, modern, accounts, invoice, html5, responsive, CRM, Projects">
<meta name="author" content="Dreamguys - Bootstrap Admin Template">
<meta name="robots" content="noindex, nofollow">
<title>Invoice - CRMS admin template</title>

<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="assets/img/favicon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet" href="assets/css/font-awesome.min.css">

<!-- Feathericon CSS -->
<link rel="stylesheet" href="assets/css/feather.css">

<!-- Datatable CSS -->
<link rel="stylesheet" href="assets/css/dataTables.bootstrap4.min.css">

<!--font style-->
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@200;300;400;500;600&display=swap"
	rel="stylesheet">

<!-- Lineawesome CSS -->
<link rel="stylesheet" href="assets/css/line-awesome.min.css">

<link rel="stylesheet"
	href="assets/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet" href="assets/plugins/fontawesome/css/all.min.css">

<!-- Select2 CSS -->
<link rel="stylesheet" href="assets/css/select2.min.css">

<!-- Theme CSS -->
<link rel="stylesheet" href="assets/css/theme-settings.css">

<link rel="stylesheet"
	href="assets/css/bootstrap-datetimepicker.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="assets/css/style.css" class="themecls">

</head>
<body id="skin-color" class="inter">

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<div class="header" id="heading">

			<!-- Logo -->
			<div class="header-left">
				<a href="index.html" class="logo"> <img
					src="assets/img/logo.png" alt="Logo" class="sidebar-logo"> <img
					src="assets/img/s-logo.png" alt="Logo" class="mini-sidebar-logo">
				</a>
			</div>
			<!-- /Logo -->

			<a id="toggle_btn" href="javascript:void(0);"> <span
				class="bar-icon"> <span></span> <span></span> <span></span>
			</span>
			</a>

			<!-- Header Title -->
			<div class="page-title-box">
				<div class="top-nav-search">
					<a href="javascript:void(0);" class="responsive-search"> <i
						class="fa fa-search"></i>
					</a>
					<form action="search.html">
						<input class="form-control" type="text" placeholder="Search here">
						<button class="btn" type="submit">
							<i class="fa fa-search"></i>
						</button>
					</form>
				</div>
			</div>
			<!-- /Header Title -->

			<a id="mobile_btn" class="mobile_btn" href="#sidebar"><i
				class="fa fa-bars"></i></a>

			<!-- Header Menu -->
			<ul class="nav user-menu">

				<!-- Search -->
				<li class="nav-item"></li>
				<!-- /Search -->

				<!-- Flag -->
				<li class="nav-item dropdown has-arrow flag-nav"><a
					class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
					role="button"> <img src="assets/img/flags/us.png" alt=""
						height="20"> <span>English</span>
				</a>
					<div class="dropdown-menu dropdown-menu-right">
						<a href="javascript:void(0);" class="dropdown-item"> <img
							src="assets/img/flags/us.png" alt="" height="16"> English
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="assets/img/flags/fr.png" alt="" height="16"> French
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="assets/img/flags/es.png" alt="" height="16"> Spanish
						</a> <a href="javascript:void(0);" class="dropdown-item"> <img
							src="assets/img/flags/de.png" alt="" height="16"> German
						</a>
					</div></li>
				<!-- /Flag -->

				<!-- Notifications -->
				<li class="nav-item dropdown"><a href="#"
					class="dropdown-toggle nav-link" data-bs-toggle="dropdown"> <i
						class="fa fa-bell"></i> <span class="badge rounded-pill">3</span>
				</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Notifications</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a href="activities.html">
										<div class="media d-flex">
											<span class="avatar flex-shrink-0"> <img alt=""
												src="assets/img/profiles/avatar-02.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">John Doe</span> added new task <span
														class="noti-title">Patient appointment booking</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">4 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media d-flex">
											<span class="avatar flex-shrink-0"> <img alt=""
												src="assets/img/profiles/avatar-03.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Tarah Shropshire</span> changed
													the task name <span class="noti-title">Appointment
														booking with payment gateway</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">6 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media d-flex">
											<span class="avatar flex-shrink-0"> <img alt=""
												src="assets/img/profiles/avatar-06.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Misty Tison</span> added <span
														class="noti-title">Domenic Houston</span> and <span
														class="noti-title">Claire Mapes</span> to project <span
														class="noti-title">Doctor available module</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">8 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media d-flex">
											<span class="avatar flex-shrink-0"> <img alt=""
												src="assets/img/profiles/avatar-17.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Rolland Webber</span> completed
													task <span class="noti-title">Patient and Doctor
														video conferencing</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">12 mins ago</span>
												</p>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="activities.html">
										<div class="media d-flex">
											<span class="avatar flex-shrink-0"> <img alt=""
												src="assets/img/profiles/avatar-13.jpg">
											</span>
											<div class="media-body flex-grow-1">
												<p class="noti-details">
													<span class="noti-title">Bernardo Galaviz</span> added new
													task <span class="noti-title">Private chat module</span>
												</p>
												<p class="noti-time">
													<span class="notification-time">2 days ago</span>
												</p>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="activities.html">View all Notifications</a>
						</div>
					</div></li>
				<!-- /Notifications -->

				<!-- Message Notifications -->
				<li class="nav-item dropdown"><a href="#"
					class="dropdown-toggle nav-link" data-bs-toggle="dropdown"> <i
						class="fa fa-comment"></i> <span class="badge rounded-pill">8</span>
				</a>
					<div class="dropdown-menu notifications">
						<div class="topnav-dropdown-header">
							<span class="notification-title">Messages</span> <a
								href="javascript:void(0)" class="clear-noti"> Clear All </a>
						</div>
						<div class="noti-content">
							<ul class="notification-list">
								<li class="notification-message"><a href="#">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="assets/img/profiles/avatar-09.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">Richard Miles </span> <span
													class="message-time">12:28 AM</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="assets/img/profiles/avatar-02.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">John Doe</span> <span
													class="message-time">6 Mar</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="assets/img/profiles/avatar-03.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Tarah Shropshire </span> <span
													class="message-time">5 Mar</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="assets/img/profiles/avatar-05.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author">Mike Litorus</span> <span
													class="message-time">3 Mar</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
								<li class="notification-message"><a href="#">
										<div class="list-item">
											<div class="list-left">
												<span class="avatar"> <img alt=""
													src="assets/img/profiles/avatar-08.jpg">
												</span>
											</div>
											<div class="list-body">
												<span class="message-author"> Catherine Manseau </span> <span
													class="message-time">27 Feb</span>
												<div class="clearfix"></div>
												<span class="message-content">Lorem ipsum dolor sit
													amet, consectetur adipiscing</span>
											</div>
										</div>
								</a></li>
							</ul>
						</div>
						<div class="topnav-dropdown-footer">
							<a href="#">View all Messages</a>
						</div>
					</div></li>
				<!-- /Message Notifications -->

				<li class="nav-item dropdown has-arrow main-drop"><a href="#"
					class="dropdown-toggle nav-link" data-bs-toggle="dropdown"> <span
						class="user-img"><img
							src="assets/img/profiles/avatar-21.jpg" alt=""> <span
							class="status online"></span></span> <span>Admin</span>
				</a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="profile.html">My Profile</a> <a
							class="dropdown-item" href="settings.html">Settings</a> <a
							class="dropdown-item" href="login.html">Logout</a>
					</div></li>
			</ul>
			<!-- /Header Menu -->

			<!-- Mobile Menu -->
			<div class="dropdown mobile-user-menu">
				<a href="#" class="nav-link dropdown-toggle"
					data-bs-toggle="dropdown" aria-expanded="false"><i
					class="fa fa-ellipsis-v"></i></a>
				<div class="dropdown-menu dropdown-menu-right">
					<a class="dropdown-item" href="profile.html">My Profile</a> <a
						class="dropdown-item" href="settings.html">Settings</a> <a
						class="dropdown-item" href="login.html">Logout</a>
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
					<button class="btn" type="button">
						<i class="fa fa-search"></i>
					</button>
				</form>
				<div id="sidebar-menu" class="sidebar-menu">
					<ul>
						<li class="nav-item nav-profile"><a href="#" class="nav-link">
								<div class="nav-profile-image">
									<img src="assets/img/profiles/avatar-17.jpg" alt="profile">

								</div>
								<div class="nav-profile-text d-flex flex-column">
									<span class="font-weight-bold mb-2">David Grey. H</span> <span
										class="text-white text-small">Project Manager</span>
								</div> <i
								class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
						</a></li>
						<li class="menu-title"><span>Main</span></li>
						<li class="submenu"><a href="#"><i class="feather-home"></i>
								<span> Dashboard</span> <span class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="index.html">Deals Dashboard</a></li>
								<li><a href="projects-dashboard.html">Projects
										Dashboard</a></li>
								<li><a href="leads-dashboard.html">Leads Dashboard</a></li>
							</ul></li>

						<li><a href="tasks.html"><i class="feather-check-square"></i>
								<span>Tasks</span></a></li>
						<li><a href="contacts.html"><i class="feather-smartphone"></i>
								<span>Contacts</span></a></li>
						<li><a href="companies.html"><i class="feather-database"></i>
								<span>Companies</span></a></li>
						<li><a href="leads.html"><i class="feather-user"></i> <span>Leads</span></a>
						</li>

						<li><a href="deals.html"><i class="feather-radio"></i> <span>Deals</span></a>
						</li>
						<li><a href="projects.html"><i class="feather-grid"></i>
								<span>Projects</span></a></li>
						<li><a href="reports.html"><i class="feather-bar-chart-2"></i>
								<span>Reports</span></a></li>
						<li><a href="activities.html"><i class="feather-calendar"></i>
								<span>Activities</span></a></li>
						<li class="submenu"><a href="#"><i class="feather-grid"></i>
								<span> Blogs</span> <span class="menu-arrow"></span> </a>
							<ul class="sub-menus">
								<li><a href="blog.html">All Blogs</a></li>
								<li><a href="add-blog.html">Add Blog</a></li>
								<li><a href="edit-blog.html">Edit Blog</a></li>
								<li><a href="blog-Categories.html">Categories</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="feather-clipboard"></i> <span> Invoices </span> <span
								class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="invoices.html" class="active">Invoices
										List</a></li>
								<li><a href="invoice-grid.html">Invoices Grid</a></li>
								<li><a href="add-invoice.html">Add Invoices</a></li>
								<li><a href="edit-invoice.html">Edit Invoices</a></li>
								<li><a href="view-invoice.html">Invoices Details</a></li>
								<li><a href="invoices-settings.html">Invoices Settings</a></li>
							</ul></li>
						<li><a href="email.html"><i class="feather-mail"></i> <span>Email</span></a>
						</li>
						<li><a href="settings.html"><i class="feather-settings"></i>
								<span>Settings</span></a></li>
						<li class="menu-title"><span>Pages</span></li>
						<li class="submenu"><a href="#"><i
								class="feather-alert-triangle"></i> <span> Error Pages </span> <span
								class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="error-404.html">404 Error </a></li>
								<li><a href="error-500.html">500 Error </a></li>
							</ul></li>

						<li class="submenu"><a href="#"><i class="feather-list"></i>
								<span> Pages </span> <span class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="faq.html"> FAQ </a></li>
								<li><a href="terms.html"> Terms </a></li>
								<li><a href="privacy-policy.html"> Privacy Policy </a></li>
								<li><a href="blank-page.html"> Blank Page </a></li>
							</ul></li>
						<li class="menu-title"><span>UI Interface</span></li>
						<li><a href="components.html"><i class="feather-layout"></i>
								<span>Components</span></a></li>
						<li class="submenu"><a href="#"><i
								class="feather feather-box"></i> <span>Elements </span> <span
								class="menu-arrow"></span></a>
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
								<li><a href="horizontal-timeline.html">Horizontal
										Timeline</a></li>
								<li><a href="form-wizard.html">Form Wizard</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="feather feather-bar-chart-2"></i> <span> Charts </span> <span
								class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="chart-apex.html">Apex Charts</a></li>
								<li><a href="chart-js.html">Chart Js</a></li>
								<li><a href="chart-morris.html">Morris Charts</a></li>
								<li><a href="chart-flot.html">Flot Charts</a></li>
								<li><a href="chart-peity.html">Peity Charts</a></li>
								<li><a href="chart-c3.html">C3 Charts</a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="feather feather-award"></i> <span> Icons </span> <span
								class="menu-arrow"></span></a>
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
							</ul></li>
						<li class="submenu"><a href="#"><i
								class="feather-credit-card"></i> <span> Forms </span> <span
								class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="form-basic-inputs.html">Basic Inputs </a></li>
								<li><a href="form-input-groups.html">Input Groups </a></li>
								<li><a href="form-horizontal.html">Horizontal Form </a></li>
								<li><a href="form-vertical.html"> Vertical Form </a></li>
								<li><a href="form-mask.html"> Form Mask </a></li>
								<li><a href="form-validation.html"> Form Validation </a></li>
							</ul></li>
						<li class="submenu"><a href="#"><i class="feather-box"></i>
								<span> Tables </span> <span class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li><a href="tables-basic.html">Basic Tables </a></li>
								<li><a href="data-tables.html">Data Table </a></li>
							</ul></li>
						<li class="menu-title"><span>Extras</span></li>

						<li class="submenu"><a href="javascript:void(0);"><i
								class="feather-command"></i> <span>Multi Level</span> <span
								class="menu-arrow"></span></a>
							<ul class="sub-menus">
								<li class="submenu"><a href="javascript:void(0);"> <span>Level
											1</span> <span class="menu-arrow"></span></a>
									<ul class="sub-menus">
										<li><a href="javascript:void(0);"><span>Level
													2</span></a></li>
										<li class="submenu"><a href="javascript:void(0);"> <span>
													Level 2</span> <span class="menu-arrow"></span></a>
											<ul class="sub-menus">
												<li><a href="javascript:void(0);">Level 3</a></li>
												<li><a href="javascript:void(0);">Level 3</a></li>
											</ul></li>
										<li><a href="javascript:void(0);"> <span>Level
													2</span></a></li>
									</ul></li>
								<li><a href="javascript:void(0);"> <span>Level 1</span></a>
								</li>
							</ul></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /Sidebar -->

		<!-- Page Wrapper -->
		<div class="page-wrapper">

			<!-- Page Content -->
			<div class="content container-fluid">

				<div class="crms-title row bg-white">
					<div class="col  p-0">
						<h3 class="page-title m-0">
							<span class="page-title-icon bg-gradient-primary text-white me-2">
								<i class="fa fa-file" aria-hidden="true"></i>
							</span> Invoice
						</h3>
					</div>
					<div class="col p-0 text-end">
						<ul class="breadcrumb bg-white float-end m-0 ps-0 pe-0">
							<li class="breadcrumb-item"><a href="index.html">Dashboard</a></li>
							<li class="breadcrumb-item active">Invoice</li>
						</ul>
					</div>
				</div>

				<div class="row align-items-center">
					<div class="col"></div>
					<div class="col-auto py-3">
						<a href="invoices.html" class="invoices-links active"> <i
							data-feather="list"></i>
						</a> <a href="invoice-grid.html" class="invoices-links"> <i
							data-feather="grid"></i>
						</a>
					</div>
				</div>
				<!-- Report Filter -->
				<div class="card report-card">
					<div class="card-body pb-0">
						<div class="row">
							<div class="col-md-12">
								<ul class="app-listing">
									<li>
										<div class="multipleSelection">
											<div class="selectBox">
												<p class="mb-0">
													<i data-feather="user-plus" class="me-1 select-icon"></i>
													Select User
												</p>
												<span class="down-icon"><i class="fa fa-angle-down"
													aria-hidden="true"></i></span>
											</div>
											<div id="checkBoxes">
												<form action="#">
													<p class="checkbox-title">Customer Search</p>
													<div class="form-custom">
														<input type="text" class="form-control bg-grey"
															placeholder="Enter Customer Name">
													</div>
													<div class="selectBox-cont">
														<label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> Brian Johnson
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> Russell Copeland
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> Greg Lynch
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> John Blair
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> Barbara Moore
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> Hendry Evan
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="username"> <span
															class="checkmark"></span> Richard Miles
														</label>
													</div>
													<button type="submit" class="btn w-100 btn-primary">Apply</button>
													<button type="reset" class="btn w-100 btn-grey">Reset</button>
												</form>
											</div>
										</div>
									</li>
									<li>
										<div class="multipleSelection">
											<div class="selectBox">
												<p class="mb-0">
													<i data-feather="calendar" class="me-1 select-icon"></i>
													Select Date
												</p>
												<span class="down-icon"><i class="fa fa-angle-down"
													aria-hidden="true"></i></span>
											</div>
											<div id="checkBoxes">
												<form action="#">
													<p class="checkbox-title">Date Filter</p>
													<div class="selectBox-cont selectBox-cont-one h-auto">
														<div class="date-picker">
															<div class="form-custom cal-icon">
																<input class="form-control datetimepicker" type="text"
																	placeholder="From">
															</div>
														</div>
														<div class="date-picker pe-0">
															<div class="form-custom cal-icon">
																<input class="form-control datetimepicker" type="text"
																	placeholder="To">
															</div>
														</div>
														<div class="date-list">
															<ul>
																<li><a href="#" class="btn date-btn">Today</a></li>
																<li><a href="#" class="btn date-btn">Yesterday</a></li>
																<li><a href="#" class="btn date-btn">Last 7
																		days</a></li>
																<li><a href="#" class="btn date-btn">This month</a></li>
																<li><a href="#" class="btn date-btn">Last month</a></li>
															</ul>
														</div>
													</div>
												</form>
											</div>
										</div>
									</li>
									<li>
										<div class="multipleSelection">
											<div class="selectBox">
												<p class="mb-0">
													<i data-feather="book-open" class="me-1 select-icon"></i>
													Select Status
												</p>
												<span class="down-icon"><i class="fa fa-angle-down"
													aria-hidden="true"></i></span>
											</div>
											<div id="checkBoxes">
												<form action="#">
													<p class="checkbox-title">By Status</p>
													<div class="selectBox-cont">
														<label class="custom_check w-100"> <input
															type="checkbox" name="name" checked> <span
															class="checkmark"></span> All Invoices
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="name"> <span
															class="checkmark"></span> Paid
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="name"> <span
															class="checkmark"></span> Overdue
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="name"> <span
															class="checkmark"></span> Draft
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="name"> <span
															class="checkmark"></span> Recurring
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="name"> <span
															class="checkmark"></span> Cancelled
														</label>
													</div>
													<button type="submit" class="btn w-100 btn-primary">Apply</button>
													<button type="reset" class="btn w-100 btn-grey">Reset</button>
												</form>
											</div>
										</div>
									</li>
									<li>
										<div class="multipleSelection">
											<div class="selectBox">
												<p class="mb-0">
													<i data-feather="bookmark" class="me-1 select-icon"></i> By
													Category
												</p>
												<span class="down-icon"><i class="fa fa-angle-down"
													aria-hidden="true"></i></span>
											</div>
											<div id="checkBoxes">
												<form action="#">
													<p class="checkbox-title">Category</p>
													<div class="form-custom">
														<input type="text" class="form-control bg-grey"
															placeholder="Enter Category Name">
													</div>
													<div class="selectBox-cont">
														<label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Advertising
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Food
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Marketing
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Repairs
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Software
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Stationary
														</label> <label class="custom_check w-100"> <input
															type="checkbox" name="category"> <span
															class="checkmark"></span> Travel
														</label>
													</div>
													<button type="submit" class="btn w-100 btn-primary">Apply</button>
													<button type="reset" class="btn w-100 btn-grey">Reset</button>
												</form>
											</div>
										</div>
									</li>
									<li>
										<div class="report-btn">
											<a href="#" class="btn"> <img
												src="assets/img/invoices-icon5.svg" alt="" class="me-2">
												Generate report
											</a>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				<!-- /Report Filter -->
				<div class="card invoices-tabs-card">
					<div class="card-body card-body pt-0 pb-0">
						<div class="invoices-main-tabs">
							<div class="row align-items-center">
								<div class="col-lg-8 col-md-8">
									<div class="invoices-tabs">
										<ul>
											<li><a href="invoices.html" class="active">All
													Invoice</a></li>
											<li><a href="invoices-paid.html">Paid</a></li>
											<li><a href="invoices-overdue.html">Overdue</a></li>
											<li><a href="invoices-draft.html">Draft</a></li>
											<li><a href="invoices-recurring.html">Recurring</a></li>
											<li><a href="invoices-cancelled.html">Cancelled</a></li>
										</ul>
									</div>
								</div>
								<div class="col-lg-4 col-md-4">
									<div class="invoices-settings-btn">
										<a href="invoices-settings.html"
											class="invoices-settings-icon"> <i
											data-feather="settings"></i>
										</a> <a href="add-invoice.html" class="btn"> <i
											data-feather="plus-circle"></i> New Invoice
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card inovices-card">
							<div class="card-body">
								<div class="inovices-widget-header">
									<span class="inovices-widget-icon"> <img
										src="assets/img/invoices-icon1.svg" alt="">
									</span>
									<div class="inovices-dash-count">
										<div class="inovices-amount">$
										<s:property value="invoiceDO.totalInvoiceValue"/></div>
									</div>
								</div>
								<p class="inovices-all">
									All Invoices <span><s:property value="invoiceDO.totalInvoiceCount"/></span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card inovices-card">
							<div class="card-body">
								<div class="inovices-widget-header">
									<span class="inovices-widget-icon"> <img
										src="assets/img/invoices-icon2.svg" alt="">
									</span>
									<div class="inovices-dash-count">
										<div class="inovices-amount">$ <s:property value="invoiceDO.totalPaidInvoiceValue"/>
											</div>
									</div>
								</div>
								<p class="inovices-all">
									Paid Invoices <span><s:property value="invoiceDO.totalPaidInvoiceCount"/></span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card inovices-card">
							<div class="card-body">
								<div class="inovices-widget-header">
									<span class="inovices-widget-icon"> <img
										src="assets/img/invoices-icon3.svg" alt="">
									</span>
									<div class="inovices-dash-count">
										<div class="inovices-amount">$ <s:property value="invoiceDO.totalUnpaidInvoiceValue"/>
											</div>
									</div>
								</div>
								<p class="inovices-all">
									Unpaid Invoices <span><s:property value="invoiceDO.totalUnpaidInvoiceCount"/></span>
								</p>
							</div>
						</div>
					</div>
					<div class="col-xl-3 col-sm-6 col-12">
						<div class="card inovices-card">
							<div class="card-body">
								<div class="inovices-widget-header">
									<span class="inovices-widget-icon"> <img
										src="assets/img/invoices-icon4.svg" alt="">
									</span>
									<div class="inovices-dash-count">
										<div class="inovices-amount">$
											<s:property value="invoiceDO.totalCancelledInvoiceValue"/></div>
									</div>
								</div>
								<p class="inovices-all">
									Cancelled Invoices <span><s:property value="invoiceDO.totalCancelledInvoiceCount" /></span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- form to send selected invoice id -->
		<s:form action="viewInvoice.action" id="viewInvoiceForm" method="post">
					<s:hidden name="selectedInvoiceId" id="selectedInvoiceId"></s:hidden>
				</s:form>
				<div class="row">
					<div class="col-sm-12">
						<div class="card card-table">
							<div class="card-body p-4">
								<div class="table-responsive">
									<table
										class="table table-striped table-nowrap custom-table mb-0 datatable">
										<thead class="thead-light">
											<tr>
												<th>Invoice ID</th>
												<th>Category</th>
												<th>Created on</th>
												<th>Invoice to</th>
												<th>Amount</th>
												<th>Due date</th>
												<th>Status</th>
												<th class="text-end">Action</th>
											</tr>
										</thead>
										<tbody>
											<s:iterator value="invoiceDO.pageResults">

												<tr>
													<td><label class="custom_check"> <input
															type="checkbox" name="invoice" style="top:0;left:0"> <span
															class="checkmark"></span>
													</label> <a href="#" class="invoice-link"> <s:property
																value="invoiceId" />
													</a></td>
													<td>Advertising</td>
													<td><s:property value="invoiceDate" /></td>
													<td>
														<h2 class="table-avatar">
															<a href="profile.html"><img
																class="avatar avatar-sm me-2 avatar-img rounded-circle"
																src="assets/img/profiles/avatar-04.jpg" alt="User Image">
																<s:property value="customerName" /></a>
														</h2>
													</td>
													<td class="text-primary">$<s:property
															value="invoiceValue" />
													</td>
													<td><s:property value="dueDate" /></td>
													<td><span class="badge bg-success-light"><s:property
																value="status" /></span></td>
													<td class="text-end">
														<div class="dropdown dropdown-action">
															<a href="#" class="action-icon dropdown-toggle"
																data-bs-toggle="dropdown" aria-expanded="false"><i
																class="fas fa-ellipsis-v"></i></a>
															<div class="dropdown-menu dropdown-menu-end">
																<a class="dropdown-item" href="edit-invoice.html"><i
																	class="far fa-edit me-2"></i>Edit</a> <a
																	class="dropdown-item" href="view-invoice.html"><i
																	class="far fa-eye me-2"></i>View</a> <a
																	class="dropdown-item" href="javascript:void(0);"><i
																	class="far fa-trash-alt me-2"></i>Delete</a> <a
																	class="dropdown-item" href="javascript:void(0);"><i
																	class="far fa-check-circle me-2"></i>Mark as sent</a> <a
																	class="dropdown-item" href="javascript:void(0);"><i
																	class="far fa-paper-plane me-2"></i>Send Invoice</a> <a
																	class="dropdown-item" href="javascript:void(0);"><i
																	class="far fa-copy me-2"></i>Clone Invoice</a>
															</div>
														</div>
													</td>
												</tr>
											</s:iterator>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /Page Content -->

		</div>
		<!-- /Page Wrapper -->

	</div>
	<!-- /Main Wrapper -->


	<!--theme settings modal-->

	<div class="modal right fade settings" id="settings" role="dialog"
		aria-modal="true">
		<div class="toggle-close">
			<div class="toggle" data-bs-toggle="modal" data-bs-target="#settings">
				<i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i>
			</div>

		</div>
		<div class="modal-dialog" role="document">
			<div class="modal-content">

				<div class="modal-header p-3">
					<h4 class="modal-title" id="myModalLabel2">Theme Customizer</h4>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
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
											<a class="reset text-white bg-dark" id="ChangeprimaryDefault">Reset
												Default</a>
										</div>
									</div>
									<div class="theme-settings-swatches">
										<div class="themes">
											<div class="themes-body">
												<ul id="theme-changes"
													class="theme-colors border-0 list-inline-item list-unstyled mb-0">

													<li class="theme-title">Solid Color</li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style')"
														class="theme-defaults bg-warnings"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-green')"
														class="theme-solid-purple bg-warnings"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-blue')"
														class="theme-solid-black bg-blue"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-orange')"
														class="theme-solid-pink bg-orange"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-pink')"
														class="theme-solid-pink bg-pink"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-purple')"
														class="theme-solid-purle bg-purple"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-red')"
														class="theme-solid-danger bg-danger"></span></li>
													<li><br /></li>
													<li><hr /></li>

													<li class="theme-title">Gradient Color</li>


													<li class="list-inline-item"><span
														onclick="toggleTheme('style-gradient-blue')"
														class="theme-orange bg-sunny-mornings"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-gradient-green')"
														class="theme-blue bg-tempting-azures"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-gradient-maroon')"
														class="theme-grey bg-amy-crisps"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-gradient-orange')"
														class="theme-lgrey bg-mean-fruits"></span></li>
													<li class="list-inline-item"><span
														onclick="toggleTheme('style-gradient-pink')"
														class="theme-dblue bg-malibu-beachs"></span></li>
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
											<a class="reset text-white bg-dark" id="ChageheaderDefault">Reset
												Default</a>
										</div>
									</div>
									<div class="theme-settings-swatches">
										<div class="themes">
											<div class="themes-body">
												<ul id="theme-change1"
													class="theme-colors border-0 list-inline-item list-unstyled mb-0">
													<li class="theme-title">Solid Color</li>
													<li class="list-inline-item"><span
														class="header-solid-black bg-black"></span></li>
													<li class="list-inline-item"><span
														class="header-solid-pink bg-primary"></span></li>
													<li class="list-inline-item"><span
														class="header-solid-orange bg-secondary1"></span></li>
													<li class="list-inline-item"><span
														class="header-solid-purple bg-success"></span></li>
													<!-- <li class="list-inline-item"><span class="header-solid-blue bg-info"></span></li> -->
													<li class="list-inline-item"><span
														class="header-solid-green bg-warnings"></span></li>
													<li><br></li>
													<li><hr></li>

													<li class="theme-title">Gradient Color</li>

													<li class="list-inline-item"><span
														class="header-gradient-color1 bg-sunny-morning"></span></li>
													<li class="list-inline-item"><span
														class="header-gradient-color2 bg-tempting-azure"></span></li>
													<li class="list-inline-item"><span
														class="header-gradient-color3 bg-amy-crisp"></span></li>
													<li class="list-inline-item"><span
														class="header-gradient-color4 bg-mean-fruit"></span></li>
													<li class="list-inline-item"><span
														class="header-gradient-color5 bg-malibu-beach"></span></li>
													<li class="list-inline-item"><span
														class="header-gradient-color6 bg-ripe-malin"></span></li>
													<li class="list-inline-item"><span
														class="header-gradient-color7 bg-plum-plate"></span></li>

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
											<a class="reset text-white bg-dark" id="ChagesidebarDefault">Reset
												Default</a>
										</div>
									</div>
									<div class="theme-settings-swatches">
										<div class="themes">
											<div class="themes-body">
												<ul id="theme-change2"
													class="theme-colors border-0 list-inline-item list-unstyled">
													<li class="theme-title">Solid Color</li>
													<li class="list-inline-item"><span
														class="sidebar-solid-black bg-black"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-solid-pink bg-primary"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-solid-orange bg-secondary1"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-solid-purple bg-success"></span></li>
													<!-- <li class="list-inline-item"><span class="sidebar-solid-blue bg-info"></span></li> -->
													<li class="list-inline-item"><span
														class="sidebar-solid-green bg-warnings"></span></li>
													<li><br></li>
													<li><hr></li>

													<li class="theme-title">Gradient Color</li>

													<li class="list-inline-item"><span
														class="sidebar-gradient-color1 bg-sunny-morning"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-gradient-color2 bg-tempting-azure"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-gradient-color3 bg-amy-crisp"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-gradient-color4 bg-mean-fruit"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-gradient-color5 bg-malibu-beach"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-gradient-color6 bg-ripe-malin"></span></li>
													<li class="list-inline-item"><span
														class="sidebar-gradient-color7 bg-plum-plate"></span></li>

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
									<a class="reset text-white bg-dark font-Default">Reset
										Default</a>
								</div>
							</div>
							<ul
								class="list-inline-item list-unstyled font-family border-0 p-0"
								id="theme-change">

								<li class="list-inline-item roboto-font">Roboto</li>
								<li class="list-inline-item poppins-font">Poppins</li>
								<li class="list-inline-item montserrat-font">Montserrat</li>
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
		<div class="toggle" data-bs-toggle="modal" data-bs-target="#settings">
			<i class="fa fa-cog fa-w-16 fa-spin fa-2x"></i>
		</div>

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

	<script type="text/javascript">
	
	$(".invoice-link").click(function(){
		var invoiceId=this.innerText;
		console.log("Invoice with invoice ID:"+this.innerText+" clicked");
		$("#selectedInvoiceId").val(invoiceId);
		$("#viewInvoiceForm").submit();
	})
	
	</script>
</body>
</html>