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
	
	<div class="container pt-3" style="min-height: calc(100vh - 240px)">
		<form action="" class="col-12">
			<c:forEach items="${list}" var="qu">
				<div class="d-flex justify-content-center">${qu.qu_content}</div>
				<div class="d-flex justify-content-center">
				   	<div class="form-check-inline">
				    	<input type="radio" class="form-check-input" id="radio" name="optradio${qu.qu_num}" value="-10">
				   	</div>
				   	<div class="form-check-inline">
				    	<input type="radio" class="form-check-input" id="radio" name="optradio${qu.qu_num}" value="-5">
				   	</div>
				   	<div class="form-check-inline">
			    		<input type="radio" class="form-check-input" id="radio" name="optradio${qu.qu_num}" value="0">
				   	</div>
				   	<div class="form-check-inline">
			    		<input type="radio" class="form-check-input" id="radio" name="optradio${qu.qu_num}" value="5">
				   	</div>
				   	<div class="form-check-inline">
			    		<input type="radio" class="form-check-input" id="radio" name="optradio${qu.qu_num}" value="10">
				   	</div>
				</div>
			</c:forEach>
			<div class="d-flex justify-content-center">
				<c:if test="${pm.next}">
				   	<button type="submit" class="btn btn-primary">다음</button>
				</c:if>
				<c:if test="${!pm.next}">
					<button type="submit" class="btn btn-primary">제출</button>
				</c:if>
			</div>
	 	</form>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		$('.test-create').click(function(){
			alert('이미 검사를 진행중입니다.');
			return;
		});
	</script>
</body>
</html>