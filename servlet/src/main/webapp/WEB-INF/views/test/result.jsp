<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>검사 결과</title>
	<link rel="stylesheet" href="https://www.16personalities.com/build/assets/dhlwzs1saxn0--BNRGEd8c.css" />
	<link rel="stylesheet" href="https://www.16personalities.com/build/assets/c3r5bgnvcmu---1n4ZUfs.css" />
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.progress{width:90%; height:50px; border-radius: 30px;}
		.progress-bar{height: 50px; color: #576071; font-size: 20px;}
		.mbti-code{margin:0 10px; width:2%; height:30px; line-height: 30px; text-align:center;}
		.d-flex{align-items: center;}
		.content{width: 800px; margin: 50px auto;}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<div style="background-color: #FFE6E6; padding: 30px;">
		<div style="align-items: center; text-align:center;">
			<h1 style="font-size: 65px; color: #576071; font-weight: bold; align-items: center; text-align:center; margin: 20px;">무료 성격 테스트</h1>
			<div class="trademark" style="font-size: 30px; color: #576071; font-weight: bold; align-items: center; text-align:center;">NERIS Type Explorer
				<sup>®</sup>
				참고
            </div>
		</div>
	</div>
	
	<svg xmlns="http://www.w3.org/2000/svg" xmlns:svgjs="http://svgjs.dev/svgjs" width="100%" height="40" preserveAspectRatio="none" viewBox="0 0 1440 560">
		<g mask="url(&quot;#SvgjsMask1091&quot;)" fill="none">
			<rect width="1440" height="560" x="0" y="0" fill="#FFE6E6" />
			<path d="M 0,405 C 57.6,424.6 172.8,510.4 288,503 C 403.2,495.6 460.8,374.4 576,368 C 691.2,361.6 748.8,463.6 864,471 C 979.2,478.4 1036.8,409.8 1152,405 C 1267.2,400.2 1382.4,438.6 1440,447L1440 560L0 560z" fill="#ffffff"/>
		<defs>
			<mask id="SvgjsMask1091">
				<rect width="1440" height="560" fill="#FFE6E6"/>
			</mask>
		</defs>
	</svg>
	
	<div class="container col-12">
		<h2 class="d-flex justify-content-center mt-3" style="color: #576071;">당신은 ${test.te_result}입니다.</h2>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">I</h3>
			<div class="progress">
				<c:if test= "${100 - list.get(0) > list.get(0)}">
					<div class="progress-bar" style="width:${100 - list.get(0)}%; background-color:#d1f5f4;">${100 - list.get(0)}%</div>
					<div class="progress-bar" style="width:${list.get(0)}%; background-color: #E9ECEF;">${list.get(0)}%</div>
				</c:if>
				<c:if test="${100 - list.get(0) <= list.get(0)}">
					<div class="progress-bar" style="width:${100 - list.get(0)}%; background-color: #E9ECEF;">${100 - list.get(0)}%</div>
					<div class="progress-bar" style="width:${list.get(0)}%; background-color:#d1f5f4;">${list.get(0)}%</div>
				</c:if>
			</div>
			<h3 class="mbti-code">E</h3>
		</div>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">S</h3>
			<div class="progress">
				<c:if test= "${100 - list.get(1) > list.get(1)}">
					<div class="progress-bar" style="width:${100 - list.get(1)}%; background-color:#f3e2ab;">${100 - list.get(1)}%</div>
					<div class="progress-bar" style="width:${list.get(1)}%; background-color: #E9ECEF;">${list.get(1)}%</div>
				</c:if>
				<c:if test= "${100 - list.get(1) <= list.get(1)}">
					<div class="progress-bar" style="width:${100 - list.get(1)}%; background-color: #E9ECEF;">${100 - list.get(1)}%</div>
					<div class="progress-bar" style="width:${list.get(1)}%; background-color:#f3e2ab;">${list.get(1)}%</div>
				</c:if>
			</div>
			<h3 class="mbti-code">N</h3>
		</div>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">T</h3>
			<div class="progress">
				<c:if test= "${100 - list.get(2) > list.get(2)}">
					<div class="progress-bar" style="width:${100 - list.get(2)}%; background-color:#d0f6e3;">${100 - list.get(2)}%</div>
					<div class="progress-bar" style="width:${list.get(2)}%; background-color: #E9ECEF;">${list.get(2)}%</div>
				</c:if>
				<c:if test= "${100 - list.get(2) <= list.get(2)}">
					<div class="progress-bar" style="width:${100 - list.get(2)}%; background-color: #E9ECEF;">${100 - list.get(2)}%</div>
					<div class="progress-bar" style="width:${list.get(2)}%; background-color:#d0f6e3;">${list.get(2)}%</div>
				</c:if>
			</div>
			<h3 class="mbti-code">F</h3>
		</div>
		
		<div class="d-flex justify-content-center mt-5">
			<h3 class="mbti-code">P</h3>
			<div class="progress">
				<c:if test= "${100 - list.get(3) > list.get(3)}">
					<div class="progress-bar" style="width:${100 - list.get(3)}%; background-color:#eee1f6;">${100 - list.get(3)}%</div>
					<div class="progress-bar" style="width:${list.get(3)}%; background-color: #E9ECEF;">${list.get(3)}%</div>
				</c:if>
				<c:if test= "${100 - list.get(3) <= list.get(3)}">
					<div class="progress-bar" style="width:${100 - list.get(3)}%; background-color: #E9ECEF;">${100 - list.get(3)}%</div>
					<div class="progress-bar" style="width:${list.get(3)}%; background-color:#eee1f6;">${list.get(3)}%</div>
				</c:if>
			</div>
			<h3 class="mbti-code">J</h3>
		</div>
	</div>
	
	<main class="content">
		${result.pt_content}
	</main>
	
	
	<svg xmlns="http://www.w3.org/2000/svg" xmlns:svgjs="http://svgjs.dev/svgjs" width="100%" height="200" preserveAspectRatio="none" viewBox="0 0 1440 560">
		<g mask="url(&quot;#SvgjsMask1091&quot;)" fill="none">
			<rect width="1440" height="560" x="0" y="0" fill="rgba(255, 255, 255, 1)"/>
			<path d="M 0,158 C 96,142.4 288,74.2 480,80 C 672,85.8 768,185.2 960,187 C 1152,188.8 1344,108.6 1440,89L1440 560L0 560z" fill="rgba(255, 230, 230, 1)"/>
		</g>
		<defs>
			<mask id="SvgjsMask1091">
				<rect width="1440" height="560" fill="#ffffff"/>
			</mask>
		</defs>
	</svg>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>