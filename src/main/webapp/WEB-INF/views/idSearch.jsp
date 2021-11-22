<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Regal Admin</title>
  <!-- base:css -->
  <link rel="stylesheet" href="resources/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="resources/vendors/feather/feather.css">
  <link rel="stylesheet" href="resources/vendors/base/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="resources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="resources/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5">
         	 <div style="text-align:center;">
         	 <h1>HelloWorks!!</h1>
         	 <br>
              <h5>아이디 찾기</h5>
              <br>
             </div>
             <form class="pt-3" method="POST" action="idSearch">
               <div class="form-group">
                  <input type="text" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="이름" name="name">
                </div>
                <div class="form-group">
                  <input type="email" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="이메일" name="mail">
                </div>             
            	
                <div class="mt-3">
                   <input type="submit" id="log-btn" value="아이디 찾기" onclick = "btn_alert()" class="btn btn-block btn-info btn-lg font-weight-medium auth-form-btn" >
                </div>
              </form>
              
        		<script>
        		function btn_alert(){
        			if('${check}' == 1)
        			 	alert("존재하지 않는 회원 정보입니다.");
        			else if('${check}' == 0)
        			 	alert('${msg }');
        		}
        		</script>
        		
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                     <!--  <input type="checkbox" class="form-check-input">
                      Keep me signed in -->
                    </label>
                  </div>
                  <a href="login" class="auth-link text-black">로그인</a>
                  <a href="pwdSearch" class="auth-link text-black">비밀번호 찾기</a>
                </div>
            <!--     <div class="mb-2">
                  <button type="button" class="btn btn-block btn-facebook auth-form-btn">
                    <i class="mdi mdi-facebook mr-2"></i> Connect using facebook
                  </button>
                </div>
                <div class="text-center mt-4 font-weight-light">
                  Don't have an account? <a href="register.html" class="text-primary">Create</a>
                </div> -->
             
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- base:js -->
  <script src="resources/vendors/base/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="resources/js/off-canvas.js"></script>
  <script src="resources/js/hoverable-collapse.js"></script>
  <script src="resources/js/template.js"></script>
  <!-- endinject -->
</body>

</html>
