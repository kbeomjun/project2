<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>토론방</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
	.box{
		position: absolute; top: 0; bottom : 0; left :0; right:0;
	}
	.container2{
		position: absolute; left: 100px; right: 40%; bottom: 30px; top: 50px;
		/*position: absolute; left: 0; padding: 50px 0 0 100px; width: 60% */
	}
	.container3{
		position: absolute; right: 100px; left: 60%; bottom: 30px; top: 0; border: 1px;
	}
	.container2>div, .container3>div{
		height: 100%; position: relative;
	}
	.container2 .chat-list{
		position: absolute; left: 0; right: 0; top: 24px; bottom : 29px; background-color: white; height: auto;
	}
	.container2 .chat-box{
		position: absolute; bottom: 0;
	}
	</style>
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
		
	<div style="position: relative;">
		<div class="box">
			<div class="container2">
				<div class="form-group">
					<label for="content" style="font-weight: bold;">토론 주제 : ${dr.dr_topic}</label>
					<div class="form-control chat-list">${co_content}</div>
					<!-- 본인이 작성한 채팅은 오른쪽정렬 --> 
					<div class="input-group mb-3 chat-box">
					  <input type="text" class="form-control " placeholder="채팅 입력">
					  <div class="input-group-append">
					    <button class="btn" type="submit" style="background-color: rgb(255, 164, 164)">입력</button>
					  </div>
					</div>
				</div>
			</div>
			<div class="container3" style="position: absolute; right: 0; padding: 74px 50px 0 0;">
				<div class="form-group">
					<div class="form-control" style="height: auto; bottom: 0; background-color: transparent;">
						<div>다른 토론 주제</div>
						<c:forEach items="${list}" var="dr">
							<button class="third col-12" style="background-color: rgb(255, 164, 164)">${dr.dr_topic}</button>
						</c:forEach>
						<hr>
						<div class="mb-0">의견 내용</div>
					</div>
				</div>
			</div>
		</div>
		<div style="background: #FFE6E6; height: 350px;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 60px 20px; display:flex; 
					flex-direction: column; align-items: center; text-align:center;">
			</div>
		</div>
	<!-- 왼쪽 : 채팅창 / 채팅 입력칸 / 채팅 - 아이디 + mbti + 의견에 맞는 색 : 채팅 내용 + 채팅 입력 시간(회색) [hidden : 신고버튼] -->
	<!-- 오른쪽상단 : 토론 주제 목록 / 오른쪽 하단 : 의견(의견에 맞는 색 표시) + 의견에 속한 인원 비율[https://www.w3schools.com/bootstrap4/bootstrap_progressbars.asp] -->
	<svg xmlns="http://www.w3.org/2000/svg" width="100%" height="80%" viewBox="0 0 1920 479.99999999999994" preserveAspectRatio="xMaxYMax slice">
		<g transform="scale(1.7051509769094138)">
			<rect x="0" y="0" width="1126" height="281.5" fill="#FFE6E6"/>
			<circle cx="35.185" cy="35.185" r="7.035" fill="#f3e2ab"/>
			<circle cx="105.565" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="175.935" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="246.315" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="316.685" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="387.065" cy="35.185" r="7.035" fill="#d1f5f4"/>
			<circle cx="457.435" cy="35.185" r="7.035" fill="#eee1f6"/>
			<circle cx="527.8149999999999" cy="35.185" r="7.035" fill="#eee1f6"/>
			<circle cx="598.185" cy="35.185" r="7.035" fill="#f3e2ab"/>
			<circle cx="668.5649999999999" cy="35.185" r="7.035" fill="#eee1f6"/>
			<circle cx="738.935" cy="35.185" r="7.035" fill="#eee1f6"/>
			<circle cx="809.3149999999999" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="879.685" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="950.0649999999999" cy="35.185" r="7.035" fill="#f3e2ab"/>
			<circle cx="1020.435" cy="35.185" r="7.035" fill="#eee1f6"/>
			<circle cx="1090.815" cy="35.185" r="7.035" fill="#d0f6e3"/>
			<circle cx="35.185" cy="105.565" r="7.035" fill="#d0f6e3"/>
			<circle cx="105.56" cy="105.56" r="9.57" fill="#f3e2ab"/>
			<circle cx="175.935" cy="105.565" r="12.105" fill="#eee1f6"/>
			<circle cx="246.31" cy="105.56" r="14.64" fill="#d1f5f4"/>
			<circle cx="316.69" cy="105.56" r="17.17" fill="#eee1f6"/>
			<circle cx="387.065" cy="105.565" r="19.705" fill="#d1f5f4"/>
			<circle cx="457.44" cy="105.55999999999999" r="22.24" fill="#d1f5f4"/>
			<circle cx="527.8199999999999" cy="105.57" r="23.93" fill="#eee1f6"/>
			<circle cx="598.1899999999999" cy="105.57" r="23.93" fill="#d1f5f4"/>
			<circle cx="668.5699999999999" cy="105.57" r="23.93" fill="#d0f6e3"/>
			<circle cx="738.94" cy="105.55999999999999" r="22.24" fill="#d0f6e3"/>
			<circle cx="809.315" cy="105.565" r="19.705" fill="#f3e2ab"/>
			<circle cx="879.6899999999999" cy="105.56" r="17.17" fill="#d0f6e3"/>
			<circle cx="950.06" cy="105.56" r="14.64" fill="#d1f5f4"/>
			<circle cx="1020.4350000000001" cy="105.565" r="12.105" fill="#eee1f6"/>
			<circle cx="1090.81" cy="105.56" r="9.57" fill="#eee1f6"/>
			<circle cx="35.185" cy="175.935" r="7.035" fill="#f3e2ab"/>
			<circle cx="105.56" cy="175.94" r="11.26" fill="#d0f6e3"/>
			<circle cx="175.94" cy="175.94" r="15.48" fill="#d1f5f4"/>
			<circle cx="246.315" cy="175.935" r="19.705" fill="#d0f6e3"/>
			<circle cx="316.69" cy="175.94" r="23.93" fill="#d0f6e3"/>
			<circle cx="387.06" cy="175.94" r="28.15" fill="#d0f6e3"/>
			<circle cx="457.44" cy="175.94" r="32.37" fill="#eee1f6"/>
			<circle cx="527.8199999999999" cy="175.94" r="35.19" fill="#f3e2ab"/>
			<circle cx="598.19" cy="175.94" r="35.19" fill="#d0f6e3"/>
			<circle cx="668.5699999999999" cy="175.94" r="35.19" fill="#d1f5f4"/>
			<circle cx="738.94" cy="175.94" r="32.37" fill="#f3e2ab"/>
			<circle cx="809.31" cy="175.94" r="28.15" fill="#eee1f6"/>
			<circle cx="879.6899999999999" cy="175.94" r="23.93" fill="#eee1f6"/>
			<circle cx="950.065" cy="175.935" r="19.705" fill="#eee1f6"/>
			<circle cx="1020.44" cy="175.94" r="15.48" fill="#f3e2ab"/>
			<circle cx="1090.81" cy="175.94" r="11.26" fill="#eee1f6"/>
			<circle cx="35.185" cy="246.315" r="7.035" fill="#d1f5f4"/>
			<circle cx="105.56" cy="246.31" r="9.57" fill="#d1f5f4"/>
			<circle cx="175.935" cy="246.315" r="12.105" fill="#eee1f6"/>
			<circle cx="246.31" cy="246.31" r="14.64" fill="#d1f5f4"/>
			<circle cx="316.69" cy="246.31" r="17.17" fill="#d0f6e3"/>
			<circle cx="387.065" cy="246.315" r="19.705" fill="#eee1f6"/>
			<circle cx="457.44" cy="246.31" r="22.24" fill="#eee1f6"/>
			<circle cx="527.8199999999999" cy="246.32" r="23.93" fill="#eee1f6"/>
			<circle cx="598.1899999999999" cy="246.32" r="23.93" fill="#eee1f6"/>
			<circle cx="668.5699999999999" cy="246.32" r="23.93" fill="#d0f6e3"/>
			<circle cx="738.94" cy="246.31" r="22.24" fill="#d1f5f4"/>
			<circle cx="809.315" cy="246.315" r="19.705" fill="#f3e2ab"/>
			<circle cx="879.6899999999999" cy="246.31" r="17.17" fill="#f3e2ab"/>
			<circle cx="950.06" cy="246.31" r="14.64" fill="#f3e2ab"/>
			<circle cx="1020.4350000000001" cy="246.315" r="12.105" fill="#d1f5f4"/>
			<circle cx="1090.81" cy="246.31" r="9.57" fill="#eee1f6"/>
		</g>
	</svg>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
</body>
</html>