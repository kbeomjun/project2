<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>토론방</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<svg xmlns="http://www.w3.org/2000/svg" xmlns:svgjs="http://svgjs.dev/svgjs" width="100%" height="80" preserveAspectRatio="none" viewBox="0 0 1440 560">
		<g mask="url(&quot;#SvgjsMask1091&quot;)" fill="none">
			<rect width="1440" height="560" x="0" y="0" fill="rgba(255, 255, 255, 1)" />
			<path d="M 0,158 C 96,142.4 288,74.2 480,80 C 672,85.8 768,185.2 960,187 C 1152,188.8 1344,108.6 1440,89L1440 560L0 560z" fill="rgba(255, 210, 210, 1)"/>
			<path d="M 0,405 C 57.6,424.6 172.8,510.4 288,503 C 403.2,495.6 460.8,374.4 576,368 C 691.2,361.6 748.8,463.6 864,471 C 979.2,478.4 1036.8,409.8 1152,405 C 1267.2,400.2 1382.4,438.6 1440,447L1440 560L0 560z" fill="rgba(255, 230, 230, 1)"/>
		</g>
		<defs>
			<mask id="SvgjsMask1091">
				<rect width="1440" height="560" fill="#ffffff"/>
			</mask>
		</defs>
	</svg>
	
	<div style="background: #FFE6E6; height: 350px;">
		<div class="container" 
			style="min-height: calc(100vh - 240px); padding: 60px 20px; display:flex; 
				flex-direction: column; align-items: center; text-align:center;">
		
		</div>
	</div>

	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
</body>
</html>