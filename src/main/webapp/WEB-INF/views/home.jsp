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
<title>HelloWorks</title>
<script>
if (self.name != 'reload') {
    self.name = 'reload';
    self.location.reload(true);
}
else self.name = ''; 
</script>
<!-- base:css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/mdi/css/materialdesignicons.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/feather/feather.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/base/vendor.bundle.base.css">
<!-- endinject -->
<!-- plugin css for this page -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/jquery-bar-rating/fontawesome-stars-o.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/vendors/jquery-bar-rating/fontawesome-stars.css">
<!-- End plugin css for this page -->
<!-- inject:css -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<!-- endinject -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
<style>
/* schedule 메뉴 이미지 관련 css*/
.icon-calendar img {
	width: 18px;
	height: 21.6px;
}
</style>
</head>
<body>
	<div class="container-scroller">
		<!-- partial:partials/_navbar.html -->
		<nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
			<div
				class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
				<a class="navbar-brand brand-logo" href="/HelloWorks">
				<img src="${pageContext.request.contextPath}/resources/images/helloworks.png" alt="logo" /></a> <a
					class="navbar-brand brand-logo-mini" href="/HelloWorks">
					<img src="images/logo-mini.svg" alt="logo" />
					</a>
			</div>
			<div
				class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
				<button class="navbar-toggler navbar-toggler align-self-center"
					type="button" data-toggle="minimize">
					<span class="icon-menu"></span>
				</button>
				<ul class="navbar-nav mr-lg-2">
					<li class="nav-item nav-search d-none d-lg-block">
						
					</li>
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
					<li class="nav-item">
						<a class="nav-link" href="#">
							<i class="icon-mail menu-icon"></i>
							<span class="menu-title">Mail</span>
						</a>
					</li>
					
				   	<li class="nav-item">
				 	  	<a class="nav-link" href="${pageContext.request.contextPath}/schedule">
					   		<i class="icon-calendar menu-icon">
					   			<img class="menu-icon" alt="img" src="${pageContext.request.contextPath}/resources/schedule/calendar.svg">
					   		</i>
					   		<span class="menu-title">Schedule</span>
				   		 </a>
           		 	</li>
					
					<li class="nav-item"><a class="nav-link"
						href="${pageContext.request.contextPath}/todolist"> <i
							class="icon-clipboard menu-icon"></i> <span class="menu-title">ToDoList</span>
					</a></li>
					<li class="nav-item">
						<a class="nav-link"href="#">
							<i class="icon-speech-bubble menu-icon"></i>
							<span class="menu-title">Messenger</span>
						</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/work">
							<i class="icon-watch menu-icon"></i>
							<span class="menu-title">근태 관리</span>
						</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/memberAll">
							<i class="icon-head menu-icon"></i>
							<span class="menu-title">인사관리</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#">
							<i class="icon-square-check menu-icon"></i>
							<span class="menu-title">회의실 예약</span>
						</a>
					</li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
				<div class="content-wrapper">
					<div class="row">
						<div class="col-sm-12 mb-4 mb-xl-0">
							<h4 class="font-weight-bold text-dark">Hi, Welcome back!</h4>
							<p class="font-weight-normal mb-2 text-muted">
								<script type="text/javascript">
									var nowDate = new Date();
									document.write(nowDate.toDateString());
								</script>
							</p>
						</div>
					</div>
					<div class="row mt-3">
						<div class="col-xl-4 flex-column d-flex grid-margin stretch-card">
							<div class="row flex-grow">
								<div class="col-sm-12 grid-margin stretch-card">
									<div class="card">
										<div>
											<div class="card-body" style="float: left; width: 50%">
												<h4 class="card-title">메일</h4>
											</div>
											<div class="card-body"
												style="float: left; width: 50%; margin-top: 14px;">
												<h4 class="card-title">채팅</h4>
											</div>
										</div>
									</div>
								</div>
								<div class="col-sm-12 stretch-card">
									<div class="card">

										<div class="card-body">
											<h4 class="card-title">
												To Do List<a href="" style="float: right;">
												<i class="icon-square-plus"></i>
												</a>
											</h4>

											<div class="col-sm-12">
												<div class="text-dark">
													<div
														class="d-flex pb-3 border-bottom justify-content-between">
														<div class="mr-3">
															<i class="mdi mdi-signal-cellular-outline icon-md"></i>
														</div>
														<div class="font-weight-bold mr-sm-4">
															<div>Deposit has updated</div>
														</div>
														<div>
															<h6 class="font-weight-bold text-info ml-sm-2">12/24</h6>
														</div>
													</div>
													<div
														class="d-flex pb-3 border-bottom justify-content-between">
														<div class="mr-3">
															<i class="mdi mdi-signal-cellular-outline icon-md"></i>
														</div>
														<div class="font-weight-bold mr-sm-4">
															<div>Deposit has updated</div>
														</div>
														<div>
															<h6 class="font-weight-bold text-info ml-sm-2">12/24</h6>
														</div>
													</div>
													<div
														class="d-flex pb-3 border-bottom justify-content-between">
														<div class="mr-3">
															<i class="mdi mdi-signal-cellular-outline icon-md"></i>
														</div>
														<div class="font-weight-bold mr-sm-4">
															<div>Deposit has updated</div>
														</div>
														<div>
															<h6 class="font-weight-bold text-info ml-sm-2">12/24</h6>
														</div>
													</div>
													<div
														class="d-flex pb-3 border-bottom justify-content-between">
														<div class="mr-3">
															<i class="mdi mdi-signal-cellular-outline icon-md"></i>
														</div>
														<div class="font-weight-bold mr-sm-4">
															<div>Deposit has updated</div>
														</div>
														<div>
															<h6 class="font-weight-bold text-info ml-sm-2">12/24</h6>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="col-xl-8 d-flex grid-margin stretch-card" style="width:40% !important;">
							<div class="card">
								<div class="card-body" >
									<h4 class="card-title">달력</h4>
									<div class="row">
										<div class="col-lg-5">
											<p>달력 화면을 넣어주세요</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="col-xl-3 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">근태 관리</h4>
									<div class="row">
										<div class="col-sm-12">
											<div
												class="d-flex justify-content-between mt-2 text-dark mb-2">
												<div>
													<span class="font-weight-bold">이번주 근무시간 현황</span>
												</div>
												<div>근무시간 : 46h 20m</div>
											</div>
											<div class="progress progress-md grouped mb-2">
												<div class="progress-bar  bg-danger" role="progressbar"
													style="width: 30%" aria-valuenow="25" aria-valuemin="0"
													aria-valuemax="100"></div>
												<div class="progress-bar bg-light" role="progressbar"
													style="width: 25%" aria-valuenow="50" aria-valuemin="0"
													aria-valuemax="100"></div>
											</div>
										
											<div>출근시간 : ${memberinfo.attendance.workOn} </div>
											<div>퇴근시간 : ${memberinfo.attendance.workOff}</div>
											<div>1일 평균 근무시간: 8h 20m</div>	
																					
										</div>
									</div>
								</div>
									${list3.attendance.workOn}
								
								 <button type="submit" id="onbtn1" class="btn btn-info mr-2" style="width: 100%;"
								onclick="location.href='workOn?uid=${memberinfo.uid }&&oCode=${memberinfo.oCode }'">출근</button>
								<button type="submit" id="onbtn2" class="btn btn-light mr-2" style="width: 100%;"
								onclick="location.href='workOff?uid=${memberinfo.uid }'">퇴근</button>
								<button type="submit" id="onbtn3" class="btn btn-warning mr-2" style="width: 100%;"
								onclick="location.href='workDelete?uid=${memberinfo.uid }'">초기화</button>
								
								
								</form>	
							</div>
						</div>
						<div class="col-md-6 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<div class="d-flex justify-content-between mb-3">
										<h4 class="card-title">게시판</h4>
										<div class="dropdown">
											<button
												class="btn btn-sm dropdown-toggle text-dark pt-0 pr-0"
												type="button" id="dropdownMenuSizeButton3"
												data-toggle="dropdown" aria-haspopup="true"
												aria-expanded="false">공지사항</button>
											<div class="dropdown-menu"
												aria-labelledby="dropdownMenuSizeButton3">
												<h6 class="dropdown-header">공지사항</h6>
												<h6 class="dropdown-header">자유게시판</h6>
											</div>
										</div>
									</div>
									<div class="card">
										<div class="card-body">
											<table class="table">
												<thead>
													<tr>
														<th>Profile</th>
														<th>VatNo.</th>
														<th>Created</th>
														<th>Status</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td>Jacob</td>
														<td>53275531</td>
														<td>12 May 2017</td>
														<td><label class="badge badge-danger">Pending</label></td>
													</tr>
													<tr>
														<td>Messsy</td>
														<td>53275532</td>
														<td>15 May 2017</td>
														<td><label class="badge badge-warning">In
																progress</label></td>
													</tr>
													<tr>
														<td>John</td>
														<td>53275533</td>
														<td>14 May 2017</td>
														<td><label class="badge badge-info">Fixed</label></td>
													</tr>
													<tr>
														<td>Peter</td>
														<td>53275534</td>
														<td>16 May 2017</td>
														<td><label class="badge badge-success">Completed</label></td>
													</tr>
													<tr>
														<td>Dave</td>
														<td>53275535</td>
														<td>20 May 2017</td>
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
						<div class="col-xl-3 grid-margin stretch-card">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title mb-3">회의실 예약현황</h4>
									<div class="row">
										<div class="col-sm-12">
											<div class="text-dark" style="margin-top: 25px;">
												<div
													class="d-flex pb-3 border-bottom justify-content-between">
													<div class="mr-3">
														<i class="mdi mdi-signal-cellular-outline icon-md"></i>
													</div>
													<div class="font-weight-bold mr-sm-4">
														<div>소회의실 1</div>
													</div>
													<div>
														<h6 class="font-weight-bold text-info ml-sm-2">사용중</h6>
													</div>
												</div>
												<div
													class="d-flex pb-3 pt-3 border-bottom justify-content-between">
													<div class="mr-3">
														<i class="mdi mdi-signal-cellular-outline icon-md"></i>
													</div>
													<div class="font-weight-bold mr-sm-4">
														<div>소회의실 2</div>
													</div>
													<div>
														<h6 class="font-weight-bold text-info ml-sm-2">사용중</h6>
													</div>
												</div>
												<div
													class="d-flex pb-3 pt-3 border-bottom justify-content-between">
													<div class="mr-3">
														<i class="mdi mdi-signal-cellular-outline icon-md"></i>
													</div>
													<div class="font-weight-bold mr-sm-4">
														<div>소회의실 3</div>
													</div>
													<div>
														<h6 class="font-weight-bold text-info ml-sm-2">예약가능</h6>
													</div>
												</div>
												<div
													class="d-flex pb-3 pt-3 border-bottom justify-content-between">
													<div class="mr-3">
														<i class="mdi mdi-signal-cellular-outline icon-md"></i>
													</div>
													<div class="font-weight-bold mr-sm-4">
														<div>소회의실 4</div>
													</div>
													<div>
														<h6 class="font-weight-bold text-info ml-sm-2">사용중</h6>
													</div>
												</div>
												<div
													class="d-flex pb-3 pt-3 border-bottom justify-content-between">
													<div class="mr-3">
														<i class="mdi mdi-signal-cellular-outline icon-md"></i>
													</div>
													<div class="font-weight-bold mr-sm-4">
														<div>중회의실</div>
													</div>
													<div>
														<h6 class="font-weight-bold text-info ml-sm-2">예약가능</h6>
													</div>
												</div>
												<div class="d-flex pt-3 justify-content-between">
													<div class="mr-3">
														<i class="mdi mdi-signal-cellular-outline icon-md"></i>
													</div>
													<div class="font-weight-bold mr-sm-4">
														<div>대회의실</div>
													</div>
													<div>
														<h6 class="font-weight-bold text-info ml-sm-2">예약가능</h6>
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
	 
	
</body>

</html>
