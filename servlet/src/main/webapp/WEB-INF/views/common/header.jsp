<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
		#navbar {
			position: sticky;
			top: 0;
			left: 0;
			width: 100%;
			height: 80px;
			background-color: #f1f1f1;
			padding: 20px;
			/* box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); */
			z-index: 1000; /* 페이지의 다른 요소들 위에 보이도록 설정 */
			justify-content: space-between;
		}
		
		.navbar-nav .nav-item {
			font-weight: bold;
			cursor: pointer;
		}
		
		#nav-center {
			width: 320px;
			display: flex;
			justify-content: space-between;
		}
		
		#nav-right {
			width: 200px;
			display: flex;
			justify-content: space-between;
		}
		
		#nav-center li,  #nav-right li{
			position: relative;
		}
		
		#nav-center li ~ li::before{
			content: '';
			position: absolute;
			width: 2px;
			height: 16px;
			background-color: gray;
			left: -15px; top: 12px;
		}
		
		#circle{
			position: relative;
			width: 4px; height: 4px; background-color: gray;
			border-radius: 50%;
			top: 17px;
		}
	</style>
</head>
<body>
	<nav class="navbar navbar-expand-sm bg-white navbar-light" id="navbar">
		<ul class="navbar-nav">
			<li class="nav-item active">
				<a class="navbar-brand logo" href="<c:url value="/"/>"> 
					<img src="https://www.16personalities.com/static/images/system/logo.svg" alt="logo">
				</a>
			</li>
		</ul>
		<ul class="navbar-nav" id="nav-center">
			<li class="nav-item">
				<a class="nav-link test-create" href="#">검사 실시</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<c:url value="/personality_type"/>">성격 유형</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" href="<c:url value="/discussion"/>">토론 참여</a>
			</li>
		</ul>
		<ul class="navbar-nav">
			<c:if test="${user eq null}">
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/signup"/>">회원가입</a>
				</li>
					<div id="circle"></div>					
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/login"/>">로그인</a>
				</li>
			</c:if>
			<c:if test="${user ne null}">
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/mypage"/>">마이페이지</a>
				</li>
				<div id="circle"></div>
				<li class="nav-item">
					<a class="nav-link" href="<c:url value="/logout"/>">로그아웃</a>
				</li>
			</c:if>
		</ul>
	</nav>
	
	<script type="text/javascript">
		//메뉴바가 최상단일 경우 박스쉐도우를 비활성화
		$(window).on('scroll', function(){
			if(window.scrollY > 1){
				$('.navbar').css('boxShadow', '0 2px 5px rgba(0, 0, 0, 0.1)');
			}else{
				$('.navbar').css('boxShadow', 'none');
			}
		});
	</script>
</body>
</html>