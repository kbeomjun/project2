<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
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
	
	<div class="container">
		<form action="<c:url value="/test/list"/>" method="post" class="col-12 form">
			<c:forEach items="${list}" var="qu">
				<div class="d-flex justify-content-center" style="font-size: 27px; color: #576071; font-weight: bold; margin-top: 80px;">${qu.qu_content}</div>
				<div class="d-flex" style="align-items: center; margin: 80px 0 100px;">
					<div style="font-size: 25px; color: #576071; font-weight: bold">전혀 아니다</div>
					<div class="form-check-inline flex-fill" style="display: flex; justify-content: space-between; margin: 0px 30px;">
				    	<input type="radio" class="form-check-input" id="answer${qu.qu_num}" name="answer${qu.qu_num}" value="-5" style="width: 60px; height: 60px; margin:0px 30px;">
				    	<input type="radio" class="form-check-input" id="answer${qu.qu_num}" name="answer${qu.qu_num}" value="-2" style="width: 50px; height: 50px; margin:0px 30px;">
			    		<input type="radio" class="form-check-input" id="answer${qu.qu_num}" name="answer${qu.qu_num}" value="0" style="width: 45px; height: 45px; margin:0px 30px;">
			    		<input type="radio" class="form-check-input" id="answer${qu.qu_num}" name="answer${qu.qu_num}" value="2" style="width: 50px; height: 50px; margin:0px 30px;">
			    		<input type="radio" class="form-check-input" id="answer${qu.qu_num}" name="answer${qu.qu_num}" value="5" style="width: 60px; height: 60px; margin:0px 30px;">
					</div>
				   	<div style="font-size: 25px; color: #576071; font-weight: bold">매우 그렇다</div>
				</div>
				<hr>
			</c:forEach>
			<input type="hidden" name="te_num" value="${te_num}">
			<input type="hidden" name="page" value="${pm.cri.page}">
			<input type="hidden" name="perPageNum" value="${pm.cri.perPageNum}">
			<c:if test="${pm.next}">
				<input type="hidden" name="next" value="next">
				<div class="d-flex justify-content-center" style="margin: 100px 0;">
				   	<button type="submit" class="btn btn-primary btn-next" data-num="${te_num}" data-page="${pm.endPage + 1}" 
				   		style="background-color: #D0A9F5; border-color: #D0A9F5; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
				   				width: 200px; height: 100px; padding: 15px 40px; border: 1px solid transparent; border-radius: 60px; font-size: 30px;">
		   				다음
		   			</button>
	   			</div>
			</c:if>
			<c:if test="${!pm.next}">
				<input type="hidden" name="next" value="end">
				<div class="d-flex justify-content-center" style="margin: 100px 0;">
					<button type="submit" class="btn btn-primary btn-end"
						style="background-color: #D0A9F5; border-color: #D0A9F5; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
				   				width: 200px; height: 100px; padding: 15px 40px; border: 1px solid transparent; border-radius: 60px; font-size: 30px;">
				   		제출
			   		</button>
				</div>
			</c:if>
	 	</form>
	</div>
	
	<svg xmlns="http://www.w3.org/2000/svg" xmlns:svgjs="http://svgjs.dev/svgjs" width="100%" height="200" preserveAspectRatio="none" viewBox="0 0 1440 560">
		<g mask="url(&quot;#SvgjsMask1091&quot;)" fill="none">
			<rect width="1440" height="560" x="0" y="0" fill="rgba(255, 255, 255, 1)" />
			<path d="M 0,158 C 96,142.4 288,74.2 480,80 C 672,85.8 768,185.2 960,187 C 1152,188.8 1344,108.6 1440,89L1440 560L0 560z" fill="rgba(255, 230, 230, 1)"/>
		</g>
		<defs>
			<mask id="SvgjsMask1091">
				<rect width="1440" height="560" fill="#ffffff"/>
			</mask>
		</defs>
	</svg>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		$('.test-create').click(function(){
			alert('이미 검사를 진행중입니다.');
			return;
		});
		
		var submit = false;
		$('.form').submit(function(){
			var answer1 = $('input[name=answer${1 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer2 = $('input[name=answer${2 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer3 = $('input[name=answer${3 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer4 = $('input[name=answer${4 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			var answer5 = $('input[name=answer${5 + pm.cri.perPageNum * (pm.cri.page - 1)}]:checked').val();
			
			if(answer1 == null || answer2 == null || answer3 == null || answer4 == null || answer5 == null){
				alert("답변을 모두 선택해주세요.");
				submit = false;
				return false;
			}else{
				submit = true;
				return true;
			}
		})
	</script>
</body>
</html>