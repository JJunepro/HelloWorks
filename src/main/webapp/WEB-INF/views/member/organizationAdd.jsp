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
<script src="http://code.jquery.com/jquery-latest.js"></script>
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
							class="icon-square-check menu-icon"></i> <span class="menu-title">ToDoList</span>
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
							<span class="menu-title">?????? ??????</span>
						</a>
					</li>
					
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/memberAll">
							<i class="icon-head menu-icon"></i>
							<span class="menu-title">????????????</span>
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="${pageContext.request.contextPath}/notice">
							<i class="icon-clipboard menu-icon"></i>
							<span class="menu-title">????????????</span>
						</a>
					</li>
				</ul>
			</nav>
			<!-- partial -->
			<div class="main-panel">
			
				<div class="content-wrapper">

					<div class="row">
					<div class="col-sm-12 mb-4 mb-xl-0">
              			<h2 class="font-weight-bold text-dark">????????????</h2>
           			 </div>
					</div>
					
					<div class="row mt-3">
						<div class="col-xl-12 d-flex grid-margin stretch-card">
							<div class="card">
								<div class="card-body" style = "width:100%;  overflow:auto">
									<div id = "topdiv">
									<h2 >?????? ?????? ??????</h2>
										
									</div>
									<br><br>
									
									<div class="row">
										
										 <div>
										 <form action="organizationAdd" method="post" >
											<table border="0" width="1550px;"  >
												<tr>
													<td style="font-size: 30px; text-align: right;" >?????? ?????? &nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td style="text-align: left;"><input type="text" name="oCode" ></td>
												</tr>
												<tr>
												</tr>
												<tr>
													<td style="font-size: 30px; text-align: right;">?????? ??????&nbsp;&nbsp;&nbsp;&nbsp;</td>
													<td style="text-align: left;"><input type="text" name="oName" ></td>	
												</tr>
													<tr>
												</tr>
											 	<tr>
												<td colspan="2" style="font-size: 30px;">
												<input type="radio" name="oUse" value="??????" style="width:20px;height:20px;"/>??????
  													&nbsp;&nbsp;&nbsp;&nbsp;
  												<input type="radio" name="oUse" value="?????????" style="width:20px;height:20px;" />?????????
  												</td>
												</tr> 
												<tr>
												</tr>
												<tr>
												 <td colspan="2"><input type="submit"  class="btn btn-outline-info" value = "??????"  >
												 <a href="memberAll"role="button" class="btn btn-outline-info">??????</a></td>
												
												</tr>
											</table>
										</form>
										</div>
										
									</div>
								</div>
								
							</div>
						</div>
						
 					
		
		<!-- content-wrapper ends -->
		<!-- partial:partials/_footer.html -->
	

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

						
						
	
