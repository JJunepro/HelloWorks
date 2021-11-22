<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Regal Admin</title>
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
			<!-- partial:partials/_sidebar.html -->
			<nav class="sidebar sidebar-offcanvas" id="sidebar">
				<div class="user-profile">
					<div class="user-image">
						<img src="resources/images/faces/face1.jpg">
					</div>
					<div class="user-name">Edward Spencer</div>
					<div class="user-designation">Developer</div>
				</div>
				<ul class="nav">
					<li class="nav-item"><a class="nav-link" href="/HelloWorks">
							<i class="icon-box menu-icon"></i> <span class="menu-title">Dashboard</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#ui-basic" aria-expanded="false"
						aria-controls="ui-basic"> <i class="icon-disc menu-icon"></i>
							<span class="menu-title">UI Elements</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="ui-basic">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link"
									href="resources/pages/ui-features/buttons.html">Buttons</a></li>
								<li class="nav-item"><a class="nav-link"
									href="resources/pages/ui-features/typography.html">Typography</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="resources/pages/forms/basic_elements.html"> <i
							class="icon-file menu-icon"></i> <span class="menu-title">Form
								elements</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="resources/pages/charts/chartjs.html"> <i
							class="icon-pie-graph menu-icon"></i> <span class="menu-title">Charts</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="resources/pages/tables/basic-table.html"> <i
							class="icon-command menu-icon"></i> <span class="menu-title">Tables</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="resources/pages/icons/feather-icons.html"> <i
							class="icon-help menu-icon"></i> <span class="menu-title">Icons</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <i class="icon-head menu-icon"></i> <span
							class="menu-title">User Pages</span> <i class="menu-arrow"></i>
					</a>
						<div class="collapse" id="auth">
							<ul class="nav flex-column sub-menu">
								<li class="nav-item"><a class="nav-link" href="login">
										Login </a></li>
								<li class="nav-item"><a class="nav-link"
									href="resources/pages/samples/login-2.html"> Login 2 </a></li>
								<li class="nav-item"><a class="nav-link"
									href="resources/pages/samples/register.html"> Register </a></li>
								<li class="nav-item"><a class="nav-link"
									href="resources/pages/samples/register-2.html"> Register 2
								</a></li>
								<li class="nav-item"><a class="nav-link"
									href="resources/pages/samples/lock-screen.html"> Lockscreen
								</a></li>
							</ul>
						</div></li>
					<li class="nav-item"><a class="nav-link"
						href="resources/docs/documentation.html"> <i
							class="icon-book menu-icon"></i> <span class="menu-title">Documentation</span>
					</a></li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row"></div>
					<div class="row mt-3">
						<div class="col-xl-12 d-flex grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h2>직원 정보</h2>
									<div class="row">
										<div class="user-image">
											<img src="resources/images/faces/face1.jpg">
										</div>
										<c:forEach var = "vo" items = "${list }">
										
										<div>
											<table border="1">
												<tr>
													<td>직원 구분 </td>
													<td></td>
													<td>부서</td>
													<td></td>
													<td>이름</td>
													<td>${vo.name }</td>
												</tr>
												<tr>
													<td>입사 일자 </td>
													<td></td>
													<td>사번</td>
													<td></td>
													<td>직급</td>
													<td></td>
												</tr>
												<tr>
													<td>ID</td>
													<td>${vo.uid }</td>
													<td>회사 번호</td>
													<td></td>
													<td>직책</td>
													<td></td>
												</tr>
												<tr>
													<td>PWD</td>
													<td></td>
													<td>휴대 전화</td>
													<td></td>
													<td>메일</td>
													<td></td>
												</tr>
												
											</table>
										</div>

									</c:forEach>
									</div>
								</div>
							</div>
						</div>

						<div class="row">
							<div class="col-xl-12 grid-margin-lg-0 grid-margin stretch-card">
								<div class="card">
									<div class="card-body">
										<h4 class="card-title">Top Sellers</h4>
										<div class="table-responsive mt-3">
											<table class="table table-header-bg">
												<thead>
													<tr>
														<th>Country</th>
														<th>Revenue</th>
														<th>Vs Last Month</th>
														<th>Goal Reached</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td><i class="flag-icon flag-icon-us mr-2" title="us"
															id="us"></i> United States</td>
														<td>$911,200</td>
														<td>
															<div class="text-success">
																<i class="icon-arrow-up mr-2"></i>+60%
															</div>
														</td>
														<td>
															<div class="row">
																<div class="col-sm-10">
																	<div class="progress">
																		<div class="progress-bar bg-info" role="progressbar"
																			style="width: 25%" aria-valuenow="25"
																			aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-sm-2">25%</div>
															</div>
														</td>

													</tr>
													<tr>
														<td><i class="flag-icon flag-icon-at mr-2" title="us"
															id="at"></i> Austria</td>
														<td>$821,600</td>
														<td>
															<div class="text-danger">
																<i class="icon-arrow-down mr-2"></i>-40%
															</div>
														</td>
														<td>
															<div class="row">
																<div class="col-sm-10">
																	<div class="progress">
																		<div class="progress-bar bg-info" role="progressbar"
																			style="width: 50%" aria-valuenow="25"
																			aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-sm-2">50%</div>
															</div>
														</td>
													</tr>
													<tr>
														<td><i class="flag-icon flag-icon-fr mr-2" title="us"
															id="fr"></i> France</td>
														<td>$323,700</td>
														<td>
															<div class="text-success">
																<i class="icon-arrow-up mr-2"></i>+40%
															</div>
														</td>
														<td>
															<div class="row">
																<div class="col-sm-10">
																	<div class="progress">
																		<div class="progress-bar bg-info" role="progressbar"
																			style="width: 10%" aria-valuenow="25"
																			aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-sm-2">10%</div>
															</div>
														</td>
													</tr>
													<tr>
														<td class="py-1"><i
															class="flag-icon flag-icon-de mr-2" title="us" id="de"></i>
															Germany</td>
														<td>$833,205</td>
														<td>
															<div class="text-danger">
																<i class="icon-arrow-down mr-2"></i>-80%
															</div>
														</td>
														<td>
															<div class="row">
																<div class="col-sm-10">
																	<div class="progress">
																		<div class="progress-bar bg-info" role="progressbar"
																			style="width: 70%" aria-valuenow="25"
																			aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-sm-2">70%</div>
															</div>
														</td>
													</tr>
													<tr>
														<td class="pb-0"><i
															class="flag-icon flag-icon-ae mr-2" title="ae" id="ae"></i>
															united arab emirates</td>
														<td class="pb-0">$232,243</td>
														<td class="pb-0">
															<div class="text-success">
																<i class="icon-arrow-up mr-2"></i>+80%
															</div>
														</td>
														<td class="pb-0">
															<div class="row">
																<div class="col-sm-10">
																	<div class="progress">
																		<div class="progress-bar bg-info" role="progressbar"
																			style="width: 60%" aria-valuenow="25"
																			aria-valuemin="0" aria-valuemax="100"></div>
																	</div>
																</div>
																<div class="col-sm-2">0%</div>
															</div>
														</td>
													</tr>

												</tbody>
											</table>
										</div>
									</div>
								</div>
							</div>



						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- content-wrapper ends -->
		<!-- partial:partials/_footer.html -->
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
			<span
				class="text-muted d-block text-center text-sm-left d-sm-inline-block mt-2">Distributed
				By: <a href="https://www.themewagon.com/" target="_blank">ThemeWagon</a>
			</span>
		</footer>

		<!-- partial -->
	</div>
	<!-- main-panel ends -->
	</div>
	<!-- page-body-wrapper ends -->
	</div>
	<!-- container-scroller -->

	<!-- base:js -->
	<script src="resources/vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="resources/js/off-canvas.js"></script>
	<script src="resources/js/hoverable-collapse.js"></script>
	<script src="resources/js/template.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script src="resources/vendors/chart.js/Chart.min.js"></script>
	<script
		src="resources/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	<script src="resources/js/dashboard.js"></script>
	<!-- End custom js for this page-->
</body>

</html>