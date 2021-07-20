<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="ui" uri="http://egovframework.gov/ctl/ui" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>eGovFrame 공통 컴포넌트</title>
</head>
<body>
	<c:if test="${loginVO != null}">
		${loginVO2.name}님 환영합니다. <a href="${pageContext.request.contextPath }/uat/uia/actionLogout.do">로그아웃</a>
		<div>
		아이디 : ${loginVO2.id}<br>
		이메일 : ${loginVO2.email}<br>
		전화번호 : ${loginVO2.tellNum}<br>
		상세주소: ${loginVO2.dAddress}<br>
		주소 : ${loginVO2.address}<br>
		${loginVO2.address}<br>
		
		</div>
	
	</c:if>
	<c:if test="${loginVO == null }">
		<jsp:forward page="/uat/uia/egovLoginUsr.do"/>
	</c:if>
	
	
	
</body>
</html>