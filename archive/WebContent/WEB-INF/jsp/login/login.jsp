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
</head>
<body>
	<div class="container-xxl">
	    <div class="authentication-wrapper authentication-basic container-p-y">
	        <div class="authentication-inner">
	            <!-- Register -->
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
	                    <!-- <h4 class="mb-2">Welcome to Sneat! 👋</h4>
	                    <p class="mb-4">Please sign-in to your account and start the
	                        adventure</p> -->
	
	                    <form id="formAuthentication" class="mb-3" action="" method="POST">
	                        <div class="mb-3">
	                            <label for="email" class="form-label">User ID</label>
	                            <input type="text" class="form-control" id="email" name="email-username" placeholder="Enter your User ID" autofocus />
	                        </div>
	                        <div class="mb-3 form-password-toggle">
	                            <div class="d-flex justify-content-between">
	                                <label class="form-label" for="password">Password</label> 
	                                <!-- <a href="auth-forgot-password-basic.html">
	                                    <small>Forgot Password?</small>
	                                </a> -->
	                            </div>
	                            <div class="input-group input-group-merge">
	                                <input type="password" id="password" class="form-control" name="password" placeholder="&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;&#xb7;" aria-describedby="password" /> <span class="input-group-text cursor-pointer"><i class="bx bx-hide"></i></span>
	                            </div>
	                        </div>
	                        <div class="mb-3">
	                            <div class="form-check">
	                                <input class="form-check-input" type="checkbox" id="remember-me" /> <label class="form-check-label" for="remember-me"> Remember Me </label>
	                            </div>
	                        </div>
	                        <div class="mb-3">
	                            <button class="btn btn-primary d-grid w-100" type="submit">Sign
	                                in</button>
	                        </div>
	                    </form>
	
	                    <p class="text-center">
	                        <span>New on our platform?</span> 
	                        <a href="register.do"> <span>Create an account</span></a>
	                    </p>
	                </div>
	            </div>
	            <!-- /Register -->
	        </div>
	    </div>
	</div>
	
	<jsp:include page="/WEB-INF/jsp/common/footer.jsp" />
</body>
</html>