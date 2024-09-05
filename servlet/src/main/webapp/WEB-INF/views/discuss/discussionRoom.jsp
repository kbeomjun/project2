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
		.container{padding: 50px 120px;}
		.container-comment, .container-dr{
			box-sizing:border-box; height: 650px;
			border: 1px solid gray; border-radius: 5px;
		}
		.container-comment{width: 55%; border-right: 0;}
		.container-dr{width: 45%;}
		.comment-list{height:100%; overflow: auto;}
		.comment{
			max-width: fit-content; color:black; padding: 8px;
			display: inline-block; line-height:1.3; box-shadow: 1px 1px 1px 1px #97A9B9;
			text-decoration:none; margin: 0px 0px 3px 0px; word-break:keep-all;
		}
		.comment-other{background: white; border-radius: 0px 15px 15px 15px; text-align:right;}
		.comment-mine{background: #FFEB33; border-radius: 15px 0px 15px 15px; text-align:left;}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>

	<div style="background-color: #FFE6E6; padding: 30px;">
		<div style="align-items: center; text-align:center;">
			
		</div>
	</div>
	<!-- ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ 24개 -->
	
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
	
	<div class="container d-flex col-12">
		<div class="container-comment">
			<div class="list-group" style="height: 100%;">
				<div class="list-group-item form-group pb-0">
			    	<label for="topic" style="font-weight: bold;">토론 주제:</label>
			      	<div class="form-control p-0" id="topic" style="font-weight: bold; border: 0;">${dr.dr_topic}</div>
			    </div>
				<div class="" ></div>
				<div class="list-group list-group-item comment-list">
					<c:if test="${colist ne null}">
						<c:forEach items="${colist}" var="co">
							<c:if test="${co.co_me_id != user.me_id}">
								<div class="list-group-item border border-0 p-0 mt-3">
									<div>
										${co.co_me_id}<c:if test="${co.co_te_result ne null}">(${co.co_te_result})</c:if>
									</div>
									<div class="comment comment-other">
										${co.co_content}
										
									</div>
								</div>
							</c:if>
							<c:if test="${co.co_me_id == user.me_id}">
								<div class="list-group-item border border-0 p-0 mt-3 d-flex justify-content-end">
									<div class="comment comment-mine">
										${co.co_content}
									</div>
								</div>										
							</c:if>
						</c:forEach>
					</c:if>
					<c:if test="${colist eq null}">
					
					</c:if>
				</div>
				<form action="<c:url value="/discussion"/>" method="post" style="height: 38px;" id="form">
					<input type="hidden" name="dr_num" value="${dr.dr_num}">
					<div class="input-group mb-3">
						<div class="input-group-prepend">
					    	<span class="input-group-text" style="line-height: 16px;">
					    		<i class="fi fi-sr-comment-alt"></i>
				    		</span>
					    </div>
				    	<input type="text" class="form-control" name="co_content">
				    	<div class="input-group-append">
				      		<button class="btn btn-outline-success" type="submit" style="line-height: 16px;">
				      			<i class="fi fi-sr-paper-plane"></i>
				      		</button>
				    	</div>
				  	</div>
				</form>
			</div>
		</div>
		<div class="container-dr">
			<ul class="list-group">
				<li class="list-group-item" style="font-weight: bold; text-align: center; line-height: 16px;">
					<i class="fi fi-sr-list"></i> 토론방 목록
				</li>
				<c:forEach items="${drlist}" var="dr">
					<a href="<c:url value="/discussion?dr_num=${dr.dr_num}"/>" class="list-group-item list-group-item-action">
						${dr.dr_topic}
					</a>
				</c:forEach>
				<c:if test="${drlist.size() eq 0}">
					<li class="list-group-item" style="font-weight: bold; text-align: center;">
						등록된 토론방이 없습니다.
					</li>
				</c:if>
			</ul>
			<hr>
			<ul class="list-group">
				<li class="list-group-item" style="font-weight: bold; text-align: center;">의견 내용</li>
			</ul>
		</div>
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
		$('#form').submit(function(){
			if('${user.me_id}' == ''){
				if(confirm('채팅은 회원만 가능합니다.\n로그인 하시겠습니까?')){
					location.href = '<c:url value="/login"/>';
				}
				return false;
			}
			var content = $('.input-comment-insert').val();
			if(content.trim() == ''){
				alert('채팅을 입력하세요');
				$('.input-comment-insert').focus();
				return false;
			}
		});
	</script>
	
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
	</script>
</body>
</html>