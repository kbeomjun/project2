<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<style type="text/css">
		.error{color:red; margin-bottom: 5px;}
		.container-body{padding: 30px; margin-top: 30px;}
		.input-group-text{width:90px;}
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<div class="container pt-3" style="min-height: calc(100vh - 240px)">
		<h1>마이페이지</h1>
		<div class="row">
	    	<div class="col-sm-4">
	      		<ul class="nav nav-pills flex-column">
	        		<li class="nav-item">
	          			<a class="nav-link active member-info" href="#">회원정보</a>
	        		</li>
	        		<li class="nav-item">
	          			<a class="nav-link" href="<c:url value="#"/>">테스트결과</a>
	        		</li>
	        		<c:if test="${user.me_authority eq 'ADMIN'}">
	        			<li class="nav-item">
		          			<a class="nav-link" href="#">관리</a>
		        		</li>
	        		</c:if>
      			</ul>
	      	<hr class="d-sm-none">
	    	</div>
		    <div class="col-sm-8 container-item">
		    	<div class="input-group">
					<div class="input-group-prepend">
			        	<span class="input-group-text">아이디</span>
			      	</div>
					<span class="form-control" id="me_id">${user.me_id}</span>		      	
				</div>
				<div class="input-group">
					<div class="input-group-prepend input-group-prepend-pw">
			        	<span class="input-group-text">비밀번호</span>
			      	</div>
					<span class="form-control input-group-pw input-pw" data-num="${user.me_pw}" id="me_pw">${user.me_pw}</span>
					<div class="input-group-append input-group-pw">
			        	<button class="btn btn-outline-warning btn-pw">변경</button>
			      	</div>
				</div>
				<div class="input-group">
					<div class="input-group-prepend input-group-prepend-email">
			        	<span class="input-group-text">이메일</span>
			      	</div>
					<span class="form-control input-group-email" id="me_email">${user.me_email}</span>
					<div class="input-group-append input-group-email">
			        	<button class="btn btn-outline-warning btn-email">변경</button>
			      	</div>
				</div>
				<div class="input-group d-flex justify-content-end mt-3">
		        	<button class="btn btn-outline-danger btn-delete">회원탈퇴</button>
				</div>
		    </div>
		</div>
	</div>
	<jsp:include page="/WEB-INF/views/common/footer.jsp"/>
	
	<script type="text/javascript">
		$('.nav-link').click(function(){
			$('.nav-link').removeClass('active');
			$(this).addClass('active');
		});
		
		let me_ori_pw = $('.input-pw').data('num');
		$('.btn-pw').click(function(){
			$('.input-group-pw').remove();
			var str = `
		      	<input type="text" class="form-control input-pw" id="me_pw" name="me_pw" value="${user.me_pw}">
				<div class="input-group-append input-group-pw">
		        	<button class="btn btn-outline-info btn-update-pw">확인</button>
		      	</div>
			`;
			$('.input-group-prepend-pw').after(str);
		});
		
		$(document).on('click', '.btn-update-pw', function(){
			var me_pw = $('.input-pw').val();
			let regexPw = /^[a-zA-Z0-9!@#$]{6,15}$/;
			if(me_pw == ''){
				alert('변경할 비밀번호를 입력하세요.');
				return;
			}else if(!regexPw.test(me_pw)){
				alert('비밀번호는 6~15자의 영문 대/소문자, 숫자, 특수문자(!@#$)만 사용가능합니다.');
				return;
			}else if(me_pw == me_ori_pw){
				alert('동일한 비밀번호입니다.');
				return;
			}
			var res = false;
			$.ajax({
				async : false,
				url : '<c:url value="/mypage/update/pw"/>',
				data : {
					me_pw : me_pw
				},
				success : function(data){
					res = data.res;
					if(res){
						alert('비밀번호를 변경했습니다. 다시 로그인 해주세요.');
						location.href = '<c:url value="/login"/>';
					}else{
						alert('비밀번호를 변경하지 못했습니다.');
						return;
					}
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		$('.btn-email').click(function(){
			$('.input-group-email').remove();
			var str = `
		      	<input type="text" class="form-control input-group-email input-email" id="me_email" name="me_email" value="${user.me_email}">
				<div class="input-group-append input-group-email">
		        	<button class="btn btn-outline-info btn-update-email">확인</button>
		      	</div>
			`;
			$('.input-group-prepend-email').after(str);
		});
		
		$(document).on('click', '.btn-update-email', function(){
			var me_email = $('.input-email').val();
			let regexEmail = /^\w{6,13}@\w{4,8}.[a-z]{2,3}$/;
			
			if(me_email == ''){
				alert('변경할 이메일을 입력하세요.');
				return;
			}else if(!regexEmail.test(me_email)){
				alert('email 형식이 아닙니다.');
				return;
			}
			
			var res = false;
			$.ajax({
				async : false,
				url : '<c:url value="/mypage/update/email"/>',
				data : {
					me_email : me_email
				},
				success : function(data){
					res = data.res;
					if(res){
						location.href = '<c:url value="/mypage"/>';
					}else{
						alert('이메일을 변경하지 못했습니다.');
						return;
					}
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
		});
		
		$('.btn-delete').click(function(){
			if(confirm('정말 탈퇴하시겠습니까? 탈퇴하면 다시는 복구할 수 없습니다.')){
				$.ajax({
					async : false,
					url : '<c:url value="/mypage/delete"/>',
					success : function(data){
						res = data.res;
						if(res){
							alert('회원을 탈퇴했습니다.');
							location.href = '<c:url value="/"/>';
						}else{
							alert('회원을 탈퇴하지 못했습니다.');
							return;
						}
					},
					error : function(xhr){
						console.log(xhr);
					}
				});
			}else{
				return;
			}
		});
	</script>
</body>
</html>