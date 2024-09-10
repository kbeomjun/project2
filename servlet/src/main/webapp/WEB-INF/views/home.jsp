<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mbti 홈페이지</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<div style="width: 90%; justify-content: center; margin: 0 auto;">
		<div style="height: 500px;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 100px 20px; display:flex; 
					flex-direction: column; align-items: center; text-align:center;">
				<div class="textArea">
					<h3 class="mb-3" style="color: #324448; font-weight: bold;">이제는 대부분 들어본 그 질문</h3>
					<h1 class="mb-3" style="font-weight: bold; color: #77baca;">"MBTI가 어떻게 되세요?"</h1>
					<p class="mb-3" style="color: #324448; font-weight: bold;">성격 테스트를 통해 자신의 성향과 행동에 대한 정확한 분석 결과를 확인해보세요.</p>
					<br>
					<button type="button" class="btn btn-primary test-create"
							style="background-color: #77baca; border-color: #77baca; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
			   						width: 200px; height: 100px; padding: 10px 30px; border: 1px solid transparent; border-radius: 60px; font-size: 25px;">
						검사 실시
			  		</button>
				</div>
			</div>
		</div>
		
		<hr>
		
		<div style="height: 450px;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 100px 20px; display: flex; box-sizing: border-box; position: absolute; right: 0%;
				flex-direction: column; align-items: center; text-align:center;">
				<div class="textArea">
					<h1 class="mb-3" style="font-weight: bold; color: #77baca;">MBTI의 유형이 궁금하다면?</h1>
					<p class="mb-3" style="color: #324448; font-weight: bold;">성격 분석 결과를 확인해 자신과 친구들의 성향을 확인해보세요.</p>
					<br>
					<button type="button" class="btn btn-primary personality_type" onclick="location.href='/project2/personality_type'"
							style="background-color: #77baca; border-color: #77baca; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
			   						width: 200px; height: 100px; padding: 10px 30px; border: 1px solid transparent; border-radius: 60px; font-size: 25px;">
						성격 유형 보러 가기
			  		</button>
				</div>
				<div class="imgArea">
				</div>
			</div>
		</div>
		
		<hr>
		
		<div style="height: 450px; justify-content: center; align-items: center;">
			<div class="container" 
				style="min-height: calc(100vh - 240px); padding: 100px 20px; display: flex; box-sizing: border-box; position: absolute; left: 0%;
				flex-direction: column; align-items: center; text-align:center; width: 60%;">
				<h1 class="mb-3" style="font-weight: bold; color: #77baca;">다른 MBTI들과 대화하고 싶다면?</h1>
				<p class="mb-3" style="color: #324448; font-weight: bold;">토론방에 모여서 함께 얘기를 나눠봐요.</p>
				<br>
				<button type="button" class="btn btn-primary discuss"
						style="background-color: #77baca; border-color: #77baca; vertical-align: middle; align-items: center; font-weight: bolder; color: white; 
		   						width: 250px; height: 80px; padding: 10px 30px; border: 1px solid transparent; border-radius: 60px; font-size: 25px;">
					토론에 참여하기
		  		</button>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 15%; margin: 100px 0;">
				<div style="max-width: 200px; color: #324448; background: #cadff1; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0; word-break:keep-all;">깻잎 떼어주는 건 안 되지</div>
				<div style="max-width: 200px; color: white; background: #617c92; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 40px 80px; word-break:keep-all;">아니 왜? 그럴 수 있는 거 아니야?</div>
				<div style="max-width: 200px; color: #324448; background: #cadff1; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; word-break:keep-all;">그거 생각할 시간에 이미 하나 더 먹었음ㅋㅋ</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 30%; margin: 0 30px;">
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">장기자랑 10분이 뭐가 어려운데</div>
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 30px 80px; word-break:keep-all;">나였으면 친구 안 만남</div>
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; word-break:keep-all;">전화나 문자는 된다며</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 30%; margin: 370px 200px 0 0;">
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">머리가 뭐가 중요한데</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 20%; margin: 250px 300px 0 0;">
				<div style="max-width: 200px; color: #324448; background: #ecf2f8; border-radius: 0px 15px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">난 그게 스트레스라고;</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: -10%; margin: 15px 400px 0 0;">
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">여행 갈 때 제일 중요한게 계획 아니냐? 너네 어디서 몇 시에 뭐 타고 갈건데?</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: 5%; margin: 20px 400px 0 0;">
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">에바임 기각</div>
			</div>
			<div class="imgArea" style="display: flex; flex-direction: column; justify-content: center; box-sizing: border-box; position: absolute; right: -10%; margin: 350px 400px 0 0;">
				<div style="max-width: 200px; color: white; background: #c1d2e1; align-items: center; border-radius: 15px 0px 15px 15px; padding: 8px; display: block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9; text-decoration:none; margin: 0px; word-break:keep-all;">그럴거면 그냥 다 불러서 같이 놀 거 같은데</div>
			</div>
		</div>
	</div>
	
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		$('.test-create').click(function(){
			if('${user.me_id}' == ''){
				if(confirm('검사는 회원만 진행가능합니다.\n로그인 하시겠습니까?')){
					location.href = '<c:url value="/login"/>';
				}
				return;
			}
			$.ajax({
				async : false,
				url : '<c:url value="/test/create"/>',
				method : "get",
				success : function(data){
					var te_num = data.te_num;
					var url = "<c:url value="/test/list?te_num="/>"+te_num;
					location.href = url;
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		$('.discuss').click(function(){
			if('${user.me_id}' == ''){
				if(confirm('토론 참여는 회원만 진행가능합니다.\n로그인 하시겠습니까?')){
					location.href = '<c:url value="/login"/>';
				}
				return;
			}
			else{
				location.href = '<c:url value="/discussion"/>';
			}
		});
		
	</script>
</body>
</html>