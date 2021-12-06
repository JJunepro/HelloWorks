<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>

<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>메일 발송</title>
<!-- base:css -->
<link rel="stylesheet"
	href="resources/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="resources/vendors/feather/feather.css">
<link rel="stylesheet"
	href="resources/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="resources/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="resources/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/vendors/jquery-bar-rating/fontawesome-stars-o.css">
<link rel="stylesheet"
	href="resources/vendors/jquery-bar-rating/fontawesome-stars.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="resources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="resources/images/favicon.png" />

<script>
	let nowTime = new Date();
</script>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="/HelloWorks"><img
					src="resources/images/logo.svg" alt="logo" /></a> <a
					class="navbar-brand brand-logo-mini" href="/HelloWorks"><img
					src="images/logo-mini.svg" alt="logo" /></a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="icon-menu"></span>
				</button>
				<ul class="navbar-nav mr-lg-2">
					<li class="nav-item nav-search d-none d-lg-block">
						<div class="input-group">
							<div class="input-group-prepend">
								<span class="input-group-text" id="search"> <i
									class="icon-search"></i>
								</span>
							</div>
							<input type="text" class="form-control"
								placeholder="Search Projects.." aria-label="search"
								aria-describedby="search">
						</div>
					</li>
				</ul>
				<ul class="navbar-nav navbar-nav-right">
					<li class="nav-item dropdown d-lg-flex d-none">
						<button type="button" class="btn btn-info font-weight-bold">+
							Create New</button>
					</li>
					<li class="nav-item dropdown d-flex"><a
						class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center"
						id="messageDropdown" href="#" data-toggle="dropdown"> <i
							class="icon-air-play mx-0"></i>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
							aria-labelledby="messageDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
							<a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="../resources/images/faces/face4.jpg" alt="image"
										class="profile-pic">
								</div>
								<div class="preview-item-content flex-grow">
									<h6 class="preview-subject ellipsis font-weight-normal">David
										Grey</h6>
									<p class="font-weight-light small-text text-muted mb-0">
										The meeting is cancelled</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="resources/images/faces/face2.jpg" alt="image"
										class="profile-pic">
								</div>
								<div class="preview-item-content flex-grow">
									<h6 class="preview-subject ellipsis font-weight-normal">Tim
										Cook</h6>
									<p class="font-weight-light small-text text-muted mb-0">
										New product launch</p>
								</div>
							</a> <a class="dropdown-item preview-item">
								<div class="preview-thumbnail">
									<img src="../resources/images/faces/face3.jpg" alt="image"
										class="profile-pic">
								</div>
								<div class="preview-item-content flex-grow">
									<h6 class="preview-subject ellipsis font-weight-normal">
										Johnson</h6>
									<p class="font-weight-light small-text text-muted mb-0">
										Upcoming board meeting</p>
								</div>
							</a>
						</div></li>
					<li class="nav-item dropdown d-flex mr-4 "><a
						class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center"
						id="notificationDropdown" href="#" data-toggle="dropdown"> <i
							class="icon-cog"></i>
					</a>
						<div
							class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list"
							aria-labelledby="notificationDropdown">
							<p class="mb-0 font-weight-normal float-left dropdown-header">Settings</p>
							<a class="dropdown-item preview-item"> <i class="icon-head"></i>
								Profile
							</a> <a class="dropdown-item preview-item" href="logout"> <i
								class="icon-inbox"></i> Logout
							</a>
						</div></li>
					<li class="nav-item dropdown mr-4 d-lg-flex d-none"><a
						class="nav-link count-indicatord-flex align-item s-center justify-content-center"
						href="#"> <i class="icon-grid"></i>
					</a></li>
				</ul>
				<button
					class="navbar-toggler navbar-toggler-right d-lg-none align-self-center"
					type="button" data-toggle="offcanvas">
					<span class="icon-menu"></span>
				</button>
			</div>
		</nav>
		<!-- partial -->
		<div class="container-fluid page-body-wrapper">

			<!-- partial:../../partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<div class="user-profile">
					<div class="user-image">
						<img src="../../images/faces/face28.png">
					</div>
					<div class="user-name">Edward Spencer</div>
					<div class="user-designation">Developer</div>
				</div>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link"
						href="../../index.html"> <i class="icon-mail menu-icon"></i> <span
							class="menu-title">Mail</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i class="icon-disc menu-icon"></i>
							<span class="menu-title">Calender</span> <i class="menu-arrow"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../pages/forms/basic_elements.html"> <i
							class="icon-papper menu-icon"></i> <span class="menu-title">To
								Do List</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../pages/charts/chartjs.html"> <i
							class="icon-speech-bubble menu-icon"></i> <span
							class="menu-title">Messenger</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../pages/tables/basic-table.html"> <i
							class="icon-watch menu-icon"></i> <span class="menu-title">근태
								관리</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../pages/icons/feather-icons.html"> <i
							class="icon-head menu-icon"></i> <span class="menu-title">인사
								관리</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <i class="icon-square-check menu-icon"></i>
							<span class="menu-title">회의실 예약</span> <i class="menu-arrow"></i>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../docs/documentation.html"> <i
							class="icon-book menu-icon"></i> <span class="menu-title">Documentation</span>
					</a></li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-sm-12 mb-4 mb-xl-0">
							<h4 class="font-weight-bold text-dark">OOO 님 환영합니다!</h4>
							<p class="font-weight-normal mb-2 text-muted">
								<script>
									document.write(nowTime.toDateString()
											+ "<br>")
								</script>
							</p>
						</div>
					</div>
					<!-- 메일목록 -->
					<!-- strat content -->
					<div class="bg-gray-100 flex-1 p-6 md:mt-16 grid grid-cols-8">

						<div class="col-span-2 bg-white border rounded p-6 mr-8">

							<a href="#" class="btn-bs-dark uppercase tracking-wider"> <i
								class="fad fa-layer-plus mr-2"></i>메일쓰기
							</a>
							<hr class="my-6">

							<ul>
								<li class="my-5 mt-0"><a class="btn-indigo text-left"
									href="#"> <i class="text-xs fad fa-inbox mr-1"></i> inbox
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-xs fad fa-paper-plane mr-1"></i>
										sent
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-xs fad fa-star mr-1"></i> Marked
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-xs fad fa-inbox-in mr-1"></i>
										draft
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-xs fad fa-inbox-out mr-1"></i>
										sent
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-xs fad fa-trash mr-1"></i> trash
								</a></li>

								<!-- seprator -->
								<hr class="my-10">

								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-indigo-700 fad fa-dot-circle mr-1"></i>
										Custom Work
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-gray-700 fad fa-dot-circle mr-1"></i>
										Important
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-green-700 fad fa-dot-circle mr-1"></i>
										work
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-yellow-700 fad fa-dot-circle mr-1"></i>
										design
								</a></li>


								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-red-700 fad fa-dot-circle mr-1"></i>
										laravel
								</a></li>

								<li><a
									class="btn text-left text-gray-800 bg-white hover:bg-gray-100 hover:text-gray-900"
									href="#"> <i class="text-teal-800 fad fa-dot-circle mr-1"></i>
										add new label
								</a></li>

							</ul>

						</div>
						<div class="col-span-6 card flex flex-col">

							<div class="px-3 border-b">
								<form action="" class="flex">
									<input class="p-3 flex-1" type="text" placeholder="search">
									<button type="submit" class="p-3">
										<i class="fad fa-search"></i>
									</button>
								</form>
							</div>

							<div class="flex-1 flex flex-col">

								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->
								<!-- message -->
								<div
									class="flex items-center shadow-xs transition-all duration-300 ease-in-out p-5 hover:shadow-md">
									<div class="w-10 h-10 overflow-hidden rounded-md">
										<img class="img-responsive" src="img/user1.jpg" alt="">
									</div>
									<h1 class="ml-3">mohamed</h1>
									<p class="ml-6 flex-1 text-xs">page when looking at its
										layout looking at its layout The point of using Lorem...</p>
									<p class="font-bold text-gray-900">05:09 AM</p>
								</div>
								<!-- message -->

							</div>

							<div class="card-footer flex justify-between">
								<p>4.41 GB (25%) of 17 GB used Manage</p>
								<p>Last account activity: 36 minutes ago</p>
							</div>
						</div>

						<div class="col-lg-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Hoverable Table</h4>
									<p class="card-description">
										Add class
										<code>.table-hover</code>
									</p>
									<div class="table-responsive">
										<table class="table table-hover">
											<thead>
												<tr>
													<th>User</th>
													<th>Product</th>
													<th>Sale</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>Jacob</td>
													<td>Photoshop</td>
													<td class="text-success">28.76% <i
														class="mdi mdi-arrow-up"></i></td>
													<td><label class="badge badge-danger">Pending</label></td>
												</tr>
												<tr>
													<td>Messsy</td>
													<td>Flash</td>
													<td class="text-danger">21.06% <i
														class="mdi mdi-arrow-down"></i></td>
													<td><label class="badge badge-warning">In
															progress</label></td>
												</tr>
												<tr>
													<td>John</td>
													<td>Premier</td>
													<td class="text-success">35.00% <i
														class="mdi mdi-arrow-up"></i></td>
													<td><label class="badge badge-info">Fixed</label></td>
												</tr>
												<tr>
													<td>Peter</td>
													<td>After effects</td>
													<td class="text-danger">82.00% <i
														class="mdi mdi-arrow-down"></i></td>
													<td><label class="badge badge-success">Completed</label></td>
												</tr>
												<tr>
													<td>Dave</td>
													<td>53275535</td>
													<td class="text-success">98.05% <i
														class="mdi mdi-arrow-up"></i></td>
													<td><label class="badge badge-warning">In
															progress</label></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- content-wrapper ends -->
				<!-- partial:../../partials/_footer.html -->
				<footer class="footer">
					<div
						class="d-sm-flex justify-content-center justify-content-sm-between">
						<span
							class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright
							© bootstrapdash.com 2020</span> <span
							class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
							Free <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap
								dashboard templates</a> from Bootstrapdash.com
						</span>
					</div>
				</footer>
				<!-- partial -->
			</div>
			<!-- main-panel ends -->
		</div>
		<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->
	<!-- base:js -->
	<script src="../../vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="../../js/off-canvas.js"></script>
	<script src="../../js/hoverable-collapse.js"></script>
	<script src="../../js/template.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<!-- End custom js for this page-->
</body>

</html>
