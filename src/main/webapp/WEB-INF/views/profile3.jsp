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
		width: 250px;
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
							<a class="dropdown-item preview-item"> <i class="icon-head"></i>
								Profile
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
						href="../../pages/tables/basic-table.html"> <i
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
				
				
					<div class="row"></div>
					<div class="row mt-3">
						<div class="col-xl-12 d-flex grid-margin stretch-card">
							<div class="card">
							
							<form id = "updateform" action="memberUpdate" method="post">
							<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
							<input type = "hidden" id = "oCode" name = "oCode" value = "${info.oCode }">
								<div class="card-body" style = "width:100%;  overflow:auto">
									<div id = "topdiv">
									<h2 >직원 정보</h2>
										
									</div>
									<br><br>
									
									<div class="row">
										<div class="user-image">
											<img src="${info.pImage }" width="180px" height= "180px">
										</div>
										&ensp;&ensp;&ensp;&ensp;
										 <div >
										 
											<table border="0" width="1300px;">
													<tr>
													<td>이름</td>
													<td><input type = "text" id = "name" name = "name" value = "${info.name }"></td>
													<td>ID</td>
													<td>${memberinfo.uid }</td>
													<td>PWD</td>
													<td><input type = "text" id = "pwd" name = "pwd" value = "${info.pwd }"></td>
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
													<td>생년월일</td>
													<td><input type = "text" id = "birth" name = "birth" value = "${info.birth }"></td>
													<td>입사일</td>
													<td><input type = "text" id = "entry" name = "entry" value = "${info.entry }"></td>
													<td>퇴사일</td>
													<td><input type = "text" id = "last" name = "last" value = "${info.last }"></td>
												</tr>
												<tr>
													<td>직책</td>
													<td><input type = "text" id = "position" name = "position" value = "${info.position }"></td>
													<td></td>
													<td></td>
													<td></td>
													<td><button type="submit" id = "updatesub" class="btn btn-outline-info" onclick="location.href='memberUpdate'">수정</button></td>
												</tr>
											</table>
										</div>
									</div>
								</div>
								</form>
							</div>
						</div>
			
 					 <ul class="nav nav-tabs">
<!--      					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu1">기본</a></li> -->
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu2">가족</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu3">인사 발령</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu4">인사평가</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu5">학력</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu6">포상</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu7">경력</a></li>
     					 <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#menu8">자격증</a></li>
   					</ul>
   					<div class="card-body" style = "width:100%;  overflow:auto">
   					<div class="row">
   						 <div class="tab-content">
   					
							<div class="tab-pane container active" id = "menu2" >
							
										<form id = "updateform3" action="familyUpdate" method="post">
										<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
										<table border="0" width="1570px">
												<th>관계</th>
												<th>이름</th>
												<th>생년월일</th>
												<th>휴대전화</th>
												<th>직업</th>
												<th>동거여부</th>
										<c:forEach var = "vo1" items = "${info.family }" varStatus="status">
										<tr>
											<td><input type = "text" id = "fRelation_${status.count}" name = "fRelation_${status.count}" value = "${vo1.fRelation }"></td>
											<td><input type = "text" id = "fName_${status.count}" name = "fName_${status.count}" value = "${vo1.fName }"></td>
											<td><input type = "text" id = "fBirth_${status.count}" name = "fBirth_${status.count}" value = "${vo1.fBirth }"></td>
											<td><input type = "text" id = "fPhone_${status.count}" name = "fPhone_${status.count}" value = "${vo1.fPhone }"></td>
											<td><input type = "text" id = "fJob_${status.count}" name = "fJob_${status.count}" value = "${vo1.fJob }"></td>
											<td><input type = "text" id = "fWith_${status.count}" name = "fWith_${status.count}" value = "${vo1.fWith }"></td>
											<td><button type="submit" id = "updatesub3_${status.count}" class="btn btn-outline-info" onclick="location.href='familyUpdate?uid=${info.uid } && fName=${vo1.fName }'">수정</button></td>
										</tr>
										</c:forEach>
										
										</table>
										<button type="submit"  class="btn btn-outline-info" onclick="location.href='familyUpdate?uid=${info.uid }'">수정</button>
									</form>	
									</div>
									
						<div class="tab-pane container fade" id = "menu3" >
						
						<form id = "updateform2" action="transferUpdate" method="post">
						<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">	
						<input type = "hidden" id = "oCode" name = "oCode" value = "${info.oCode }">
								<table border="0" width="1570px;">
									<tr>
										<td>직원 구분 </td>
										<td><input type = "text" id = "uType" name = "uType" value = "${info.transfer.uType }"></td>											
										<td>직급</td>
										<td><input type = "text" id = "uRank" name = "uRank" value = "${info.transfer.uRank }"></td>
										<td>시작일</td>
										<td><input type = "text" id = "uStart" name = "uStart" value = "${info.transfer.uStart }"></td>
										<td>종료일</td>
										<td><input type = "text" id = "uEnd" name = "uEnd" value = "${info.transfer.uEnd }"></td>
									 
									</tr>
								</table>
								<button type="submit" id = "updatesub2" class="btn btn-outline-info" onclick="location.href='transferUpdate?uid=${info.uid }'">수정</button>
							</form>
							
									</div>
									
									
								<div class="tab-pane container fade" id = "menu4">
								<form id = "updateform4" action="appreaisalUpdate" method="post">
								<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
								<input type = "hidden" id = "oCode" name = "oCode" value = "${info.oCode }">
								<table border="0" width="1570px;">
												<tr>
													<td>평가 내용</td>
													<td colspan="4"><textarea cols="100" rows="3" id = "aContent" name = "aContent" >${info.appreaisal.aContent }</textarea></td>
												</tr>
												<tr>
													<td>채점 내용</td>
													<td colspan="4"><textarea cols="100" rows="3" id = "aRating" name = "aRating"  >${info.appreaisal.aRating }</textarea></td>
												</tr>
												<tr>
													<td>평가자</td>
													<td><input type = "text" id = "aRater" name = "aRater" value = "${info.appreaisal.aRater }"></td>
													<td>점수</td>
													<td><input type = "text" id = "aScore" name = "aScore" value = "${info.appreaisal.aScore }"></td>
												</tr>
												<tr>
													<td>시작일</td>
													<td><input type = "text" id = "aStart" name = "aStart" value = "${info.appreaisal.aStart }"></td>
													<td>종료일</td>
													<td><input type = "text" id = "aEnd" name = "aEnd" value = "${info.appreaisal.aEnd }"></td>
												</tr>
												
												
											</table>
											<button type="submit" id = "updatesub4" class="btn btn-outline-info" onclick="location.href='appreaisalUpdate?uid=${info.uid }'">수정</button>
									</form>
									</div>
									
										<div class="tab-pane container fade" id = "menu5" >
										<form id = "updateform5" action="degreeUpdate" method="post">
								<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
								<table border="0" width="1570px;">
												<tr>
													<td>학교명</td>
													<td><input type = "text" id = "dSchool" name = "dSchool" value = "${info.degree.dSchool }"></td>
													<td>전공</td>
													<td><input type = "text" id = "dMajor" name = "dMajor" value = "${info.degree.dMajor }"></td>
													<td>학위</td>
													<td><input type = "text" id = "dDegree" name = "dDegree" value = "${info.degree.dDegree }"></td>
												</tr>
												<tr>
													<td>졸업여부</td>
													<td><input type = "text" id = "dGraduated" name = "dGraduated" value = "${info.degree.dGraduated }"></td>
													<td>입학일</td>
													<td><input type = "text" id = "dStart" name = "dStart" value = "${info.degree.dStart }"></td>
													<td>졸업일</td>
													<td><input type = "text" id = "dEnd" name = "dEnd" value = "${info.degree.dEnd }"></td>
												</tr>
												
											</table>
											<button type="submit" id = "updatesub5" class="btn btn-outline-info" onclick="location.href='degreeUpdate?uid=${info.uid }'">수정</button>
									</form>
									</div>
									
								<div class="tab-pane container fade" id = "menu6" >
								  
								<form id = "updateform6" action="prizeUpdate" method="post">
								<input type = "hidden" id = "uid" name = "uid" value = "${info.uid }">
								<table border="0" width="1570px;">
									<th>포상명</th>
									<th>포상기관</th>
									<th>포상일</th>
										
									<c:forEach var = "vo2" items = "${info.prize }" varStatus="status">
									<tr>
										<td><input type = "text" id = "pCrape_${status.count}" name = "pCrape_${status.count}" value = "${vo2.pCrape }"></td>
										<td><input type = "text" id = "pInstitution_${status.count}" name = "pInstitution_${status.count}" value = "${vo2.pInstitution }"></td>
										<td><input type = "text" id = "pDate_${status.count}" name = "pDate_${status.count}" value = "${vo2.pDate }"></td>
										<td><button type="submit" id = "updatesub6" class="btn btn-outline-info" onclick="location.href='prizeUpdate?uid=${vo2.uid }'">수정</button></td>
									</tr>
									</c:forEach>	
										
								</table>
								</form>
								
								</div>
									
								<div class="tab-pane container fade" id = "menu7">
								
								<form id = "updateform7" action="careerUpdate" method="post">
								<input type = "hidden" id = "uid3" name = "uid3" value = "${info.uid }">
								<input type = "hidden" id = "oCode" name = "oCode" value = "${info.oCode }">
								<table border="0" width="1570px;">
									<th>직장명</th>
									<th>업무</th>
									<th>시작일</th>
									<th>종료일</th>
									
									<c:forEach var = "vo3" items = "${info.career }" varStatus="status">
									<tr>
										<td><input type = "text" id = "cRectal_${status.count}" name = "cRectal_${status.count}" value = "${vo3.cRectal }"></td>
										<td><input type = "text" id = "cTask_${status.count}" name = "cTask_${status.count}" value = "${vo3.cTask }"></td>
										<td><input type = "text" id = "cStart_${status.count}" name = "cStart_${status.count}" value = "${vo3.cStart }"></td>
										<td><input type = "text" id = "cEnd_${status.count}" name = "cEnd_${status.count}" value = "${vo3.cEnd }"></td>
										<td><button type="submit" id = "updatesub7" class="btn btn-outline-info" onclick="location.href='careerUpdate?uid=${info.uid }'">수정</button></td>
									</tr>
									</c:forEach>
								</table>
								</form>
								
								</div>
									
								<div class="tab-pane container fade" id = "menu8" >
								
								<form id = "updateform8" action="certificateUpdate" method="post">
								<input type = "hidden" id = "uid4" name = "uid4" value = "${info.uid }">
								<input type = "hidden" id = "oCode" name = "oCode" value = "${info.oCode }">
								<table border="0" width="1570px;">
									<th>자격증명</th>
									<th>발행기관</th>
									<th>취득일</th>
									<c:forEach var = "vo4" items = "${info.certificate }" varStatus="status">
									
									<tr>
										<td><input type = "text" id = "ceName_${status.count}" name = "ceName_${status.count}" value = "${vo4.ceName }"></td>
										<td><input type = "text" id = "ceIssuer_${status.count}" name = "ceIssuer_${status.count}" value = "${vo4.ceIssuer }"></td>
										<td><input type = "text" id = "ceDate_${status.count}" name = "ceDate_${status.count}" value = "${vo4.ceDate }"></td>
										<td><button type="submit" id = "updatesub8" class="btn btn-outline-info" onclick="location.href='certificateUpdate?uid=${info.uid }'">수정</button></td>
									</tr>
									</c:forEach>
								</table>
								</form>
								
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

						
						
	
