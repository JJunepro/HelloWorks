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
<style>
table {
	border-left: none;
	border-right: none;
}

th, td {
	text-align: center;
}

#btn {
	border-radius: 0.5em;
	width: 100px;
	height: 40px;
}

#topdiv {
	display: flex;
	justify-content: space-around;
}

#leftdiv {
	width: 400px;
	margin-left: auto;
}

li, table{
	font-size: 20px;
}
thead{
	background-color: #FFE4C4;
}
</style>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="/HelloWorks"><img
					src="${pageContext.request.contextPath}/resources/images/helloworks.png" alt="logo" /></a> <a
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
							<a class="dropdown-item preview-item" href="profile"> <i
								class="icon-head"></i> Profile
							</a> <a class="dropdown-item preview-item" href="logout"> <i
								class="icon-inbox"></i> Logout
							</a>
						</div></li>
					
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
							<span class="menu-title">Calender</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../pages/forms/basic_elements.html"> <i
							class="icon-clipboard menu-icon"></i> <span class="menu-title">To
								Do List</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="../../pages/charts/chartjs.html"> <i
							class="icon-speech-bubble menu-icon"></i> <span
							class="menu-title">Messenger</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="work"> <i
							class="icon-watch menu-icon"></i> <span class="menu-title">근태
								관리</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						href="memberAll"> <i
							class="icon-head menu-icon"></i> <span class="menu-title">인사
								관리</span>
					</a></li>
					<li class="nav-item"><a class="nav-link"
						data-toggle="collapse" href="#auth" aria-expanded="false"
						aria-controls="auth"> <i class="icon-square-check menu-icon"></i>
							<span class="menu-title">회의실 예약</span>
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
							<h2 class="font-weight-bold text-dark">근태관리</h2>

						</div>
					</div>
					
					<script>
				
					</script>
					<div class="row mt-3">
						<div class="col-xl-2 flex-column d-flex grid-margin stretch-card">
							<div class="row flex-grow">
								<div class="col-sm-12 stretch-card">
									<div class="card">
										<div class="card-body">
											<div id = "topdiv">
											<h3>부 서</h3>
										</div>
										<br><br>
											<form action="memberOSeach" method="get" name="listForm">
											<ui class="nav flex-column sub-menu" name="okeyword">
											<input type = "hidden">
											<c:forEach var="vo2" items="${list2 }">
												<li><a href="memberOSeach2?okeyword=${vo2.oName}">${vo2.oName}</a></li>
												<br>
											</c:forEach>
											</ui>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>
						<script>
     	$(function() {
			$('form[name=listForm]').on('submit', function(e) {
								if ($('input[name=keyword]').val() == null || $('input[name=keyword]').val() == "") {
									alert("검색어를 입력해 주세요");
									e.preventDefault();
								} else {
									return true;
								}
							});
		});
         </script>

						<div class="col-xl-10 d-flex grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div id="topdiv">
										<h3>직원 목록</h3>
										<div id="leftdiv">
											<form action="memberSeach2" method="get" name="listForm">
												<a href="work"role="button" class="btn btn-outline-info">전체보기</a>
												&nbsp;&nbsp;&nbsp;&nbsp;
												<input type="text" style="height: 38px;" name="keyword">
												&nbsp;&nbsp;
												<input type="submit" class="btn btn-outline-info" value="검색">
											</form>
										</div>
									</div>
									<br>
									<div class="row">

										<div style="width: 100%; height: 580px; overflow: auto">
											<table border="1" width="1250px;">
												<thead><tr>
												<th>사번</th>
												<th>직원명</th>
												<th>부서</th>
												<th>출근시간</th>
												<th>퇴근시간</th>
												</tr></thead>

												<c:forEach var="vo" items="${list }">
													<tr>
														<td>${vo.dept }</td>
														<td>${vo.name }</td>
														<td>${vo.organization.oName }</td>
														<td>${vo.attendance.workOn }</td>
														<td>${vo.attendance.workOff}</td>
														
													</tr>
												</c:forEach>
												
												
											</table>
										</div>

									</div>

								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-12 d-flex grid-margin stretch-card">
						<div class="card-body">
							<table width="103%;">
								<td style="width: 90%;"></td>
								<td><button id="btn" class="btn btn-outline-info"
										onclick="location.href='memberAdd'">직원 추가</button></td>

							</table>
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
