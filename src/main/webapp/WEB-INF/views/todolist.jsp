<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <!-- Required meta tags --> 
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>HelloWorks</title>
  
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <!-- base:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/feather/feather.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/flag-icon-css/css/flag-icon.min.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/jquery-bar-rating/fontawesome-stars-o.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/jquery-bar-rating/fontawesome-stars.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/images/favicon.png" />
	<!-- calendar icon -->
	<style>
		.icon-calendar img {
			width: 18px;
			height: 21.6px;
		}
	</style>

  <!-- todolist -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/todolist/todoMain.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

</head>
<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="/HelloWorks">
			<img src="${pageContext.request.contextPath}/resources/images/helloworks.png" alt="logo" />
		</a>
        <a class="navbar-brand brand-logo-mini" href="/HelloWorks"><img src="images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
          <span class="icon-menu"></span>
        </button>
        <ul class="navbar-nav mr-lg-2">
         
        </ul>
        <ul class="navbar-nav navbar-nav-right">
            <li class="nav-item dropdown d-lg-flex d-none">
               
            </li>
          <li class="nav-item dropdown d-flex">
            <a class="nav-link count-indicator dropdown-toggle d-flex justify-content-center align-items-center" id="messageDropdown" href="#" data-toggle="dropdown">
              <i class="icon-air-play mx-0"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="messageDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Messages</p>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                    <img src="../resources/images/faces/face4.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-normal">David Grey
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    The meeting is cancelled
                  </p>
                </div>
              </a>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                    <img src="resources/images/faces/face2.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-normal">Tim Cook
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    New product launch
                  </p>
                </div>
              </a>
              <a class="dropdown-item preview-item">
                <div class="preview-thumbnail">
                    <img src="../resources/images/faces/face3.jpg" alt="image" class="profile-pic">
                </div>
                <div class="preview-item-content flex-grow">
                  <h6 class="preview-subject ellipsis font-weight-normal"> Johnson
                  </h6>
                  <p class="font-weight-light small-text text-muted mb-0">
                    Upcoming board meeting
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li class="nav-item dropdown d-flex mr-4 ">
            <a class="nav-link count-indicator dropdown-toggle d-flex align-items-center justify-content-center" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i class="icon-cog"></i>
            </a>
            <div class="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <p class="mb-0 font-weight-normal float-left dropdown-header">Settings</p>
              <a class="dropdown-item preview-item" href = "profile">               
                  <i class="icon-head"></i> Profile
              </a>
              <a class="dropdown-item preview-item" href="logout">
                  <i class="icon-inbox"></i> Logout
              </a>
            </div>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
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
      <!-- ?????? -->
   <div class="main-panel">
   
   	<div class="wrapper">
	
	    <div class="basicTodo">
	    	 <div class="todo_header">
	      	  <h2 class="title">??????</h2>
	        </div>
	        
	        <div class="inputField">
		       	<form action="todoAdd" id="todoAdd" method="post" name="todoAdd">
		          <input type="text" id="todoTitle" name="todoTitle" placeholder="????????? ??????????????????.">
				<button class="btn create">+</button>
		        </form>
	        </div>

	        <div class="content">
	        <c:if test="${list != null }">
	        	<c:forEach var="list" items="${list }">
	        		<ul class="tasks">
	        			<li>
	        				<a href="todoUpdate?todoNum=${list.todoNum }" role="button" class="icon-check"></a>
		        			<span>${list.todoTitle }</span>
	        				<a href="todoRemove?todoNum=${list.todoNum }" role="button" class="btn btn-outline-info">X</a>
	        			</li>
	        		</ul>
	        	</c:forEach>
	        </c:if>
	        <c:if test="${empty list}">
	        		<ul class="none">	
		        		<li>
		        			????????? ????????????.
		        		</li>
		        	</ul>
	        </c:if>
	        </div>
	    </div>
	    
	    
	    <div class="doneTodo">
	    
		     <div class="todo_header">
		        <h2 class="title">?????? ??????</h2>
	 		</div>
	 		
	        <div class="content">
	        	<c:forEach var="list" items="${done }">
	        		<ul class="tasks">
	        			<li>
	        				<a href="#" role="button"></a>
		        			<span>${list.todoTitle }</span>
	        				<a href="todoRemove?todoNum=${list.todoNum }" role="button" class="btn btn-outline-info">X</a>
	        			</li>
	        		</ul>
	        	</c:forEach>
	        <c:if test="${empty done}">
		        	<ul class="none">	
		        		<li>
		        			????????? ????????? ????????????.
		        		</li>
		        	</ul>
	        </c:if>
	        </div>
	       <div class="clearall">
          	 <button type="button" class="btn btn-light btn-rounded btn-fw" onclick="allRemove();">Clear All</button>
          </div>
	    </div>
	    
	    
	    
	    
	</div> <!-- wrapper -->
	
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

 	<!-- ???????????? src ????????? ?????? -->
	
	
	<!-- ?????? template ?????? src -->
	<!-- base:js -->
	<script src="${pageContext.request.contextPath}/resources/vendors/base/vendor.bundle.base.js"></script>
	<!-- endinject -->
	<!-- Plugin js for this page-->
	<!-- End plugin js for this page-->
	<!-- inject:js -->
	<script src="${pageContext.request.contextPath}/resources/js/off-canvas.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/hoverable-collapse.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/template.js"></script>
	<!-- endinject -->
	<!-- plugin js for this page -->
	<script src="${pageContext.request.contextPath}/resources/vendors/chart.js/Chart.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/vendors/jquery-bar-rating/jquery.barrating.min.js"></script>
	<!-- End plugin js for this page -->
	<!-- Custom js for this page-->
	 
 	<!-- ????????????????????? ?????? src -->
	
  	
  
	<!-- ???????????? src ?????? -->
	
	
    <!-- ???????????? ???????????????????????? ?????? --> 
 	<script type="text/javascript">
 	
 	function allRemove(){
 		if(window.confirm("?????? ????????? ???????????????.")){
 			location.href='todoAllRemove';
 		} else {
 			return;
 		}
 	}
 	
 	
 	$(function () {
		$('#todoForm').on('submit', function (e) {
			if($('#todoTitle').val() == "") {
				alert('????????? ???????????????.');
				e.preventDefault();
			} else {
				$('#todoTitle').val();
				return true;
			} // if-else
		}); // on click
		
		$('#addBtn').on('click', function () {
			if($('#todoTitle').val() == "") {
				alert('????????? ???????????????.');
			  return '${pageContext.request.contextPath}/todolist';
			} 
			
		});
		
	})

	</script>
  
</body>

</html>
