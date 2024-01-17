<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!DOCTYPE html>
<html
  lang="ko"
  class="light-style customizer-hide"
  dir="ltr"
  data-theme="theme-default"
  data-assets-path="/archive/assets/"
  data-template="vertical-menu-template-free"
>
<head>
	<jsp:include page="/WEB-INF/jsp/common/import.jsp" />
	<link rel="stylesheet" href="<c:url value='/assets/vendor/css/pages/page-auth.css'/>" />
	<script>
		$(function(){
			$("#signUp").click(function(){
				if ($("#userId").val().trim() === ""){
					alert("아이디를 입력해 주세요.");
					$("#userId").focus();
					
					return;
				}
				
				if ($("#userNm").val().trim() === ""){
					alert("이름을 입력해 주세요.");
					$("#adminNm").focus();
					
					return;
				}
				
				if ($("#email").val().trim() === ""){
					alert("이메일을 입력해 주세요.");
					$("#email").focus();
					
					return;
				}
				
				if ($("#password").val().trim() === ""){
					alert("비밀번호를 입력해 주세요.");
					$("#password").focus();
					
					return;
				}
				
				if ($("#pwConfirm").val().trim() === ""){
					alert("비밀번호 확인을 입력해 주세요.");
					$("#pwConfirm").focus();
					
					return;
				}
				
				if ($("#password").val() != $("#pwConfirm").val()){
					alert("입력하신 비밀번호가 다릅니다. \n다시 확인해 주세요.");
					$("#pwConfirm").focus();
					
					return;
				}
				
				if ($("#email").val().trim() === ""){
					alert("이메일 주소를 입력해 주세요.");
					$("#email").focus();
					
					return;
				}else{
					const regex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
					
					if (!regex.test($("#email").val().trim())){
						alert("올바른 이메일 주소를 입력해 주세요.");
						$("#email").focus();
					}
				}
				
				
				if (confirm("계정을 등록 하시겠습니까?")){
					$.ajax({
						url:"<c:url value='/ajax/regAcount.do'/>",
						data: $("#frm").serialize(),
						type:'POST',
						success: function(data){
							if (data.isStatus === "success"){
								isCheck = false;
								
								alert("등록이 완료됐습니다.");
								location.reload();
							}
						}, 
						error : function(data, status, err){
					        console.log(data, status, err);
					        return false;
					    }
					});	
				}
			});
		});
	</script>
</head>
<body>
	<div class="container-xxl">
		<div class="authentication-wrapper authentication-basic container-p-y">
			<div class="authentication-inner">
				<!-- Register Card -->
				<div class="card">
					<div class="card-body">
						<!-- Logo -->
						<div class="app-brand justify-content-center">
	                        <a href="/archive" class="app-brand-link gap-2"> 
	                        	<span class="app-brand-logo demo"> 
	                        		<img src="<c:url value='/assets/img/logo.png'/>" />
	                            </span>  
	                        </a>
	                    </div>
						<!-- /Logo -->
						<h4 class="mb-2">Adventure starts here 🚀</h4>
						<p class="mb-4">Make your app management easy and fun!</p>

						<form id="formAuthentication" class="mb-3" method="POST">
							<div class="mb-3">
	                            <label for="email" class="form-label">User ID</label>
	                            <input type="text" class="form-control" id="userId" name="userId" placeholder="Enter your User ID" autofocus />
	                        </div>
							<div class="mb-3">
								<label for="username" class="form-label">User Name</label> <input
									type="text" class="form-control" id="userNm" name="userNm"
									placeholder="Enter your username" autofocus />
							</div>
							<div class="mb-3">
								<label for="email" class="form-label">Email</label> <input
									type="text" class="form-control" id="email" name="email"
									placeholder="Enter your email" />
							</div>
							<div class="mb-3 form-password-toggle">
								<label class="form-label" for="password">Password</label>
								<div class="input-group input-group-merge">
									<input type="password" id="password" class="form-control"
										name="password"
										placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
										aria-describedby="password" /> <span
										class="input-group-text cursor-pointer"><i
										class="bx bx-hide"></i></span>
								</div>
							</div>
							<div class="mb-3 form-password-toggle">
								<label class="form-label" for="password">Confirm Password</label>
								<div class="input-group input-group-merge">
									<input type="pwConfirm" id="pwConfirm" class="form-control"
										placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;"
										aria-describedby="password" /> <span
										class="input-group-text cursor-pointer"><i
										class="bx bx-hide"></i></span>
								</div>
							</div>

							<div class="mb-3">
								<div class="form-check">
									<input class="form-check-input" type="checkbox"
										id="terms-conditions" name="terms" /> <label
										class="form-check-label" for="terms-conditions"> I
										agree to <a href="javascript:void(0);">privacy policy &
											terms</a>
									</label>
								</div>
							</div>
							<a href="#signUp" id="signUp" class="btn btn-primary d-grid w-100">Sign up</a>
						</form>

						<p class="text-center">
							<span>Already have an account?</span> <a
								href="/archive"> <span>Sign in instead</span>
							</a>
						</p>
					</div>
				</div>
				<!-- Register Card -->
			</div>
		</div>
	</div>

	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>