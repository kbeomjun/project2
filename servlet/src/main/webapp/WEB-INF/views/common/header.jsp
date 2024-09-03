<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<style type="text/css">
	   .navbar .logo img {
	        width: 243.75px;
	        height: 50px;
	    }
		/* 스타일을 통해 메뉴바를 페이지 상단에 고정합니다 */
	    .navbar {
	        position: fixed;
	        top: 0;
	        left: 0;
	        width: 100%;
	        height: 80px;
	        background-color: #f1f1f1;
	        padding: 20px;
	        box-shadow: 0 2px 5px rgba(0,0,0,0.1);
	        z-index: 1000; /* 페이지의 다른 요소들 위에 보이도록 설정 */
	    }
	    body {
	        margin-top: 80px; /* 로그인 창 높이 만큼 페이지 내용 아래로 밀어내기 */
	    }
	    #navbar-nav{width: 320px; display: flex; justify-content: space-between;}
	    .navbar-nav li {font-weight: bold; cursor: pointer;}
	    #navbar-nav li{position: relative;}
	    #navbar-nav li ~ li::before{
	    	content: ''; position: absolute;
			width: 1px; height: 16px; background-color: gray;
			left: -11px; top: 12px;
	    }
		/* 배경 어두운 부분 스타일 */
	   	.overlay {
	    	display: none; /* 기본적으로 숨김 */
	       	position: fixed;
	       	top: 0;
	       	left: 0;
	       	width: 100%;
	       	height: 100%;
	       	background: rgba(0, 0, 0, 0.5); /* 반투명 배경 */
	       	z-index: 1001; /* 로그인 팝업보다 아래 */
	   	}
	</style>
</head>
<body>
	<!-- 배경을 어둡게 하는 오버레이 -->
	<div id="overlay" class="overlay" onclick="closePopup()"></div>
		<nav class="navbar navbar-expand-sm bg-light navbar-light" style="justify-content: space-between;">
			<ul class="navbar-nav">
				<li class="nav-item active">
		  			<a class="navbar-brand logo" href="<c:url value="/"/>">
		    			<img src="https://www.16personalities.com/static/images/system/logo.svg" alt="logo">
		  			</a>
				</li>
			</ul>
			<ul class="navbar-nav" id=navbar-nav>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/test/test"/>">성격 유형 검사</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/type"/>">성격 유형</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/discussion"/>">토론방</a>
				</li>
			</ul>
			<ul class="navbar-nav">
				<c:if test="${user eq null}">
					<li class="nav-item">
						<a class="nav-link" href="<c:url value="/signup"/>">회원가입</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value="/login"/>">로그인</a>
					</li>
				</c:if>
				<c:if test="${user ne null}">
					<li class="nav-item">
						<a class="nav-link" href="<c:url value="/mypage"/>">마이페이지</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="<c:url value="/logout"/>">로그아웃</a>
					</li>
				</c:if>
			</ul>
		</nav>
</body>
</html>