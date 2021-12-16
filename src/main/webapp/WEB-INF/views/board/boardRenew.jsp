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
<title>글쓰기</title>
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
					
				</ul>
				<ul class="navbar-nav navbar-nav-right">
					
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
						<img src="${memberinfo.pImage }">
					</div>
					<div class="user-name">${memberinfo.name }</div>
					<div class="user-designation">${memberinfo.position }</div>
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
					<div class="row">
						<div class="col-xl-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<form name="renewForm" action="boardUpdate" method="post"
										enctype="multipart/formdata">
										<input type="hidden" name="board_num" value="${board.b_n}">
										<input type="hidden" name="board_file" value="${board.b_file}">
										<table align="center">
											<tr>
												<td>제목</td>
												<td><input type="text" name="board_title"
													value="${board.b_title}"></td>
											</tr>
											<tr>
												<td>작성자</td>
												<td>${board.b_writer}</td>
											</tr>
											<tr>
												<td>글 비밀번호</td>
												<td><input type="password" name="board_pwd"></td>
											</tr>
											<tr>
												<td>이전 첨부파일</td>
												<td><c:if test="${empty board.b_file}"> 
 첨부파일 없음 
 </c:if> <c:if test="${!empty board.b_file}">
														<a
															href="${pageContext.request.contextPath}/resources/uploadFiles/${board.b_file}"
															download>${board.b_file}</a>
													</c:if></td>
											</tr>
											<tr>
												<td>변경할 첨부파일</td>
												<td><input type="file" name="upfile"></td>
											</tr>
											<tr>
												<td>내용</td>
												<td><textarea cols="50" rows="7" name="board_content">${board.board_content}</textarea></td>
											</tr>
											<tr>
												<td colspan="2" align="center"><input type="submit"
													id="renew" value="수정하기"> &nbsp; <c:url var="blist"
														value="blist.do">
														<c:param name="page" value="1" />
													</c:url> <a href="${blist}">목록으로</a></td>
											</tr>
										</table>
									</form>

								</div>
								<div id="chart-legends-market-trend" class="chart-legends mt-1"></div>
								<div class="row mt-2 mb-2">
									<div class="col-6">
										<div class="text-small">
											<span class="text-success">18.2%</span> higher
										</div>
									</div>
									<div class="col-6">
										<div class="text-small">
											<span class="text-danger">0.7%</span> higher
										</div>
									</div>
								</div>
								<div class="marketTrends mt-4">
									<canvas id="marketTrendssatacked"></canvas>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-4 grid-margin stretch-card">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">Traffic Sources</h4>
								<div class="row">
									<div class="col-sm-12">
										<div
											class="d-flex justify-content-between mt-2 text-dark mb-2">
											<div>
												<span class="font-weight-bold">4453</span> Leads
											</div>
											<div>Goal: 2000</div>
										</div>
										<div class="progress progress-md grouped mb-2">
											<div class="progress-bar  bg-danger" role="progressbar"
												style="width: 30%" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100"></div>
											<div class="progress-bar bg-info" role="progressbar"
												style="width: 20%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
											<div class="progress-bar  bg-primary" role="progressbar"
												style="width: 10%" aria-valuenow="25" aria-valuemin="0"
												aria-valuemax="100"></div>
											<div class="progress-bar bg-warning" role="progressbar"
												style="width: 10%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
											<div class="progress-bar bg-success" role="progressbar"
												style="width: 5%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
											<div class="progress-bar bg-light" role="progressbar"
												style="width: 25%" aria-valuenow="50" aria-valuemin="0"
												aria-valuemax="100"></div>
										</div>
									</div>
									<div class="col-sm-12">
										<div class="traffic-source-legend">
											<div class="d-flex justify-content-between mb-1 mt-2">
												<div class="font-weight-bold">SOURCE</div>
												<div class="font-weight-bold">TOTAL</div>
											</div>
											<div class="d-flex justify-content-between legend-label">
												<div>
													<span class="bg-danger"></span>Google Search
												</div>
												<div>30%</div>
											</div>
											<div class="d-flex justify-content-between legend-label">
												<div>
													<span class="bg-info"></span>Social Media
												</div>
												<div>20%</div>
											</div>
											<div class="d-flex justify-content-between legend-label">
												<div>
													<span class="bg-primary"></span>Referrals
												</div>
												<div>10%</div>
											</div>
											<div class="d-flex justify-content-between legend-label">
												<div>
													<span class="bg-warning"></span>Organic Traffic
												</div>
												<div>10%</div>
											</div>
											<div class="d-flex justify-content-between legend-label">
												<div>
													<span class="bg-success"></span>Google Search
												</div>
												<div>5%</div>
											</div>
											<div class="d-flex justify-content-between legend-label">
												<div>
													<span class="bg-light"></span>Email Marketing
												</div>
												<div>25%</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<h4 class="card-title">Market Trends</h4>
										<div class="dropdown">
											<button
												class="btn btn-sm dropdown-toggle text-dark pt-0 pr-0"
												type="button" id="dropdownMenuSizeButton3"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">This week</button>
											<div class="dropdown-menu"
												aria-labelledby="dropdownMenuSizeButton3">
												<h6 class="dropdown-header">This week</h6>
												<h6 class="dropdown-header">This month</h6>
											</div>
										</div>
									</div>
									<div id="chart-legends-market-trend" class="chart-legends mt-1"></div>
									<div class="row mt-2 mb-2">
										<div class="col-6">
											<div class="text-small">
												<span class="text-success">18.2%</span> higher
											</div>
										</div>
										<div class="col-6">
											<div class="text-small">
												<span class="text-danger">0.7%</span> higher
											</div>
										</div>
									</div>
									<div class="marketTrends mt-4">
										<canvas id="marketTrendssatacked"></canvas>
									</div>

								</div>
							</div>
						</div>
						<div class="col-xl-4 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Traffic Sources</h4>
									<div class="row">
										<div class="col-sm-12">
											<div
												class="d-flex justify-content-between mt-2 text-dark mb-2">
												<div>
													<span class="font-weight-bold">4453</span> Leads
												</div>
												<div>Goal: 2000</div>
											</div>
											<div class="progress progress-md grouped mb-2">
												<div class="progress-bar  bg-danger" role="progressbar"
													style="width: 30%" aria-valuenow="25" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar bg-info" role="progressbar"
													style="width: 20%" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar  bg-primary" role="progressbar"
													style="width: 10%" aria-valuenow="25" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar bg-warning" role="progressbar"
													style="width: 10%" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar bg-success" role="progressbar"
													style="width: 5%" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar bg-light" role="progressbar"
													style="width: 25%" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										</div>
										<div class="col-sm-12">
											<div class="traffic-source-legend">
												<div class="d-flex justify-content-between mb-1 mt-2">
													<div class="font-weight-bold">SOURCE</div>
													<div class="font-weight-bold">TOTAL</div>
												</div>
												<div class="d-flex justify-content-between legend-label">
													<div>
														<span class="bg-danger"></span>Google Search
													</div>
													<div>30%</div>
												</div>
												<div class="d-flex justify-content-between legend-label">
													<div>
														<span class="bg-info"></span>Social Media
													</div>
													<div>20%</div>
												</div>
												<div class="d-flex justify-content-between legend-label">
													<div>
														<span class="bg-primary"></span>Referrals
													</div>
													<div>10%</div>
												</div>
												<div class="d-flex justify-content-between legend-label">
													<div>
														<span class="bg-warning"></span>Organic Traffic
													</div>
													<div>10%</div>
												</div>
												<div class="d-flex justify-content-between legend-label">
													<div>
														<span class="bg-success"></span>Google Search
													</div>
													<div>5%</div>
												</div>
												<div class="d-flex justify-content-between legend-label">
													<div>
														<span class="bg-light"></span>Email Marketing
													</div>
													<div>25%</div>
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
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
	<script type="text/javascript">
		$(function() {
			$('form[name=renewForm]').on('submit', function(event) {
				if ($('input[name=b_pwd]').val() != "${board.b_pwd}") {
					alert("비밀번호가 일치하지 않습니다.");
					event.preventDefault();
				} else {
					return true;
				}
			});
		});
	</script>
</body>

</html>
