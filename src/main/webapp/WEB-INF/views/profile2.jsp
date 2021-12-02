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
	tr, td{
		text-align: center;
		width: 300px;
		height: 50px;
	}
	.btnn{
		border-radius:0.5em;
		width: 100px;
		height: 40px;
	}
	#topdiv{
		display: flex;      
        justify-content: space-around;
	}
	#leftdiv{
		width: 300px;
		margin-left: auto;
	}
</style>

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
					<div class="user-name">${memberinfo.name }</div>
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
							
							<form id = "updateform" action="memberUpdate" method="post">
							<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
								<div class="card-body" style = "width:100%;  overflow:auto">
									<div id = "topdiv">
									<h2 >직원 정보</h2>
										<div id= "leftdiv">	
											<button type="submit" id = "updatesub" class="btn btn-outline-info" onclick="location.href='memberUpdate?uid=${info.uid }'">수정</button>
											<a href="memberDelete?uid=${info.uid }"role="button" class="btn btn-outline-info">삭제</a>
										</div>
									</div>
									<br><br>
									
									<div class="row">
										<div class="user-image">
											<img src="${info.pImage }" width="200px" height= "200px">
										</div>
										&ensp;&ensp;&ensp;&ensp;
										 <div >
										 
											<table border="0" width="1250px;">
												<tr>
													<td>이름</td>
													<td><input type = "text" id = "name" name = "name" value = "${info.name }"></td>
													<td>ID</td>
													<td>${info.uid }</td>
													<td>PWD</td>
													<td></td>
												</tr>
												<tr>
													<td>사번</td>
													<td><input type = "text" id = "dept" name = "dept" value = "${info.dept }"></td>
													<td>주소 </td>
													<td><input type = "text" id = "address" name = "address" value = "${info.address }"></td>												
													<td>성별</td>
													<td><input type = "text" id = "gender" name = "gender" value = "${info.gender }"></td>
												</tr>
												<tr>
													<td>주민 번호 </td>
													<td><input type = "text" id = "resident" name = "resident" value = "${info.resident }"></td>
													<td>메일</td>
													<td><input type = "text" id = "mail" name = "mail" value = "${info.mail }"></td>
													<td>회사 번호</td>
													<td><input type = "text" id = "cPhone" name = "cPhone" value = "${info.cPhone }"></td>
													
												</tr>
												<tr>
													
													<td>휴대 전화</td>
													<td><input type = "text" id = "phone" name = "phone" value = "${info.phone }"></td>
													<td>급여</td>
													<td><input type = "text" id = "salary" name = "salary" value = "${info.salary }"></td>
													<td>급여일</td>
													<td><input type = "text" id = "salaryDate" name = "salaryDate" value = "${info.salaryDate }"></td>
												</tr>
												<tr>
													<td>입사일</td>
													<td>${info.entry }</td>
													<td>퇴사일</td>
													<td><input type = "text" id = "last" name = "last" value = "${info.last }"></td>
												</tr>
												
											</table>
										</div>
									</div>
								</div>
								</form>
							</div>
						</div>

 					 <ul class="nav nav-tabs">
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu1">기본</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu2">인사 발령</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu3">가족</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu4">인사평가</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu5">학력</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu6">포상</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu7">경력</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu8">자격증</a></li>
   					</ul>
   						 <div class="tab-content">
   						 
						
						<div class="tab-pane container active"  id = "menu1"  style = "width:100%;  overflow:auto">		
						<form id = "updateform2" action="memberUpdate" method="post">
						<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">	
									<table border="0" width="1100px;">
												<tr>
													<td>직원 구분 </td>
													<td></td>
													<td>부서</td>
													<td></td>
													<td>직급</td>
													<td></td>
												</tr>
												
											
												
											</table>
											<button type="submit" id = "updatesub" class="btn btn-outline-info" onclick="location.href='memberUpdate?uid=${info.uid }'">수정</button>
							</form>
						
						</div>
							
						<div class="tab-pane container fade" id = "menu2">
						<form id = "updateform2" action="memberUpdate" method="post">
						<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">	
								<table border="0" width="1250px;">
												<tr>
													<td>시작일</td>
													<td></td>
													<td>종료일</td>
													<td></td>
												
												</tr>
											
												
											</table>
											<button type="submit" id = "updatesub" class="btn btn-outline-info" onclick="location.href='memberUpdate?uid=${info.uid }'">수정</button>
							</form>
									</div>
									
									
									<div class="tab-pane container fade" id = "menu3">
										<form id = "updateform" action="familyUpdate" method="post">
									<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
									
										<table border="0" width="1250px;">
												<th>관계</th>
												<th>이름</th>
												<th>생년월일</th>
												<th>휴대전화</th>
												<th>직업</th>
												<th>동거여부</th>
										<c:forEach var = "vo1" items = "${info.family }">
										<input type = "hidden" id = "fName" name = "fName" value = "${vo1.fName }">
									
										<tr>
											<td><input type = "text" id = "fRelation" name = "fRelation" value = "${vo1.fRelation }"></td>
											<td><input type = "text" id = "fName" name = "fName" value = "${vo1.fName }"></td>
											<td><input type = "text" id = "fBirth" name = "fBirth" value = "${vo1.fBirth }"></td>
											<td><input type = "text" id = "fPhone" name = "fPhone" value = "${vo1.fPhone }"></td>
											<td><input type = "text" id = "fJob" name = "fJob" value = "${vo1.fJob }"></td>
											<td><input type = "text" id = "fWith" name = "fWith" value = "${vo1.fWith }"></td>
										</tr>
										</c:forEach>
									
										</table>
										<button type="submit" id = "updatesub" class="btn btn-outline-info" onclick="location.href='memberUpdate?uid=${info.uid }'">수정</button>
									</form>	
									</div>
									
								<div class="tab-pane container fade" id = "menu4">
								<table border="0" width="1250px;">
												<tr>
													<td>평가 내용</td>
													<td colspan="2"></td>
												</tr>
												<tr>
													<td>채점 내용</td>
													<td colspan="2"></td>
												</tr>
												<tr>
													<td>평가자</td>
													<td></td>
													<td>점수</td>
													<td></td>
												</tr>
												<tr>
													<td>시작일</td>
													<td></td>
													<td>종료일</td>
													<td></td>
												</tr>
												
												
											</table>
									</div>
									
										<div class="tab-pane container fade" id = "menu5">
								<table border="0" width="1250px;">
												<tr>
													<td>학교명</td>
													<td></td>
													<td>전공</td>
													<td></td>
													<td>학위</td>
													<td></td>
												</tr>
												<tr>
													<td>졸업여부</td>
													<td></td>
													<td>입학일</td>
													<td></td>
													<td>졸업일</td>
													<td></td>
												</tr>
												
											</table>
									</div>
									
								<div class="tab-pane container fade" id = "menu6">
								<table border="0" width="1250px;">
									<th>포상명</th>
									<th>포상기관</th>
									<th>포상일</th>
										
									<c:forEach var = "vo2" items = "${list }">
									<tr>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									</c:forEach>	
										
								</table>
								</div>
									
								<div class="tab-pane container fade" id = "menu7">
								<table border="0" width="1250px;">
									<th>직장명</th>
									<th>업무</th>
									<th>시작일</th>
									<th>종료일</th>
									
									<c:forEach var = "vo3" items = "${list }">
									<tr>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									</c:forEach>
								</table>
								</div>
									
								<div class="tab-pane container fade" id = "menu8">
								<table border="0" width="1250px;">
									<th>자격증명</th>
									<th>발행기관</th>
									<th>취득일</th>
									<c:forEach var = "vo4" items = "${list }">
									<tr>
										<td></td>
										<td></td>
										<td></td>
									</tr>
									</c:forEach>
								</table>
								</div>
							</div>
							
							<%-- 	<table border="0" width="100%;">
									<form action = "memberDelete" method="get">
										<td width="90%"><input type ="hidden" value = "${info.uid }"></td>
										<td><button id = "#" class="btnn">수정</button>
										<button id = "btnDelete" class="btnn">삭제</button></td>
									</form>
								</table> --%>
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

						
						
	
