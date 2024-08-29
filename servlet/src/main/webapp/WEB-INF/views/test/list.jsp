<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<h1>테스트</h1>
		${pm} <br>
		${list}
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