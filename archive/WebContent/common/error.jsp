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
	<link rel="stylesheet" href="<c:url value='/assets/vendor/css/pages/page-misc.css'/>" />
</head>
<body>
    <div class="container-xxl container-p-y">
      <div class="misc-wrapper">
        <h2 class="mb-2 mx-2">Page Not Found :(</h2>
        <p class="mb-4 mx-2">Oops! 😖 The requested URL was not found on this server.</p>
        <a href="/archive" class="btn btn-primary">Back to home</a>
        <div class="mt-3">
          <img
            src="<c:url value='/assets/img/illustrations/page-misc-error-light.png'/>"
            alt="page-misc-error-light"
            width="500"
            class="img-fluid"
            data-app-dark-img="illustrations/page-misc-error-dark.png"
            data-app-light-img="illustrations/page-misc-error-light.png"
          />
        </div>
      </div>
    </div>
</body>
</html>