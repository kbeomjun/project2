<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
	<jsp:include page="/WEB-INF/views/common/head.jsp"/>
	<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>

	<style type="text/css">
		.error{color:red; margin-bottom: 5px;}
		.container-body{padding: 30px; margin-top: 30px;}
		.input-group-text{width:90px;} 
		.update{width: 450px;}
		.nav-pills li {cursor: pointer; font-weight: bold;}
		.container-item{display: none; margin: 0 auto;}
		.pt-code{display: flex; justify-content: space-between; flex-wrap: wrap; height: 100px;}
		.pt-content{width: 100%; min-height: 400px; border-top: 1px solid #17A2B8; }
		.pt-content-text{width: 100%; min-height: 400px; margin-top: 20px; display: none;}
		.btn-pt{width: 12%; height: 40px;}
		.sub-title{color: blue; }
		#btn-update-pt{margin: 10px 0; display: none;}
		
		.description{
	        margin: 0 auto;         
	        font-size: 1.125rem;
	        line-height: 1.33333333;
	        letter-spacing: -.1px;
	    }
	    .description h1, h2{
			font-weight: 800;
		}	
	    .description hr{
	        border: 0; height: 1px; background-color: rgb(235, 233, 233);
	    }
	    .description blockquote{
	        margin: 20px 0;
	        border-left: 3px solid #4298B4;
	        padding: 5px 0 5px 10px;   
	        display: block;       
	    }
	    .description blockquote p, footer{
	        margin-block-start: 1em;
	        margin-block-end: 1em;
	        margin-inline-start: 20px;
	        margin-inline-end: 20px;
	    }
	    .description blockquote p {                   
	        font-style: normal;        
	        font-weight: 680;
	        font-size: 1.375rem;
	        line-height: 1.27272727;
	        letter-spacing: -.05px;
	    }
	    .description blockquote footer {             
	        color: #787f8d;
	        font-size: 1rem;
	        line-height: 1.375;
	        letter-spacing: -.1px;
	        margin-top: 10px;
	    }
	    .description-pullout{        
	        border-left: 3px solid #88619a;
	        font-size: 1.125rem;
	        line-height: 1.33333333;
	        letter-spacing: -.1px;
	        padding: 10px 20px;
	        margin-top: 20px;
	        margin-bottom: 20px;
	        background-color: #f3eff5;       
	    }
	</style>
</head>
<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	
	<div style="background-color: #FFE6E6; padding: 30px;">
		<div style="align-items: center; text-align:center;">
			
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
	
	<div class="container pt-3" style="min-height: calc(100vh - 240px)">
		<h3 class="title text-center mt-3 mb-4">마이페이지</h3>
		<div class="row">
	    	<div class="col-sm-2">
	      		<ul class="nav nav-pills flex-column">
	        		<li class="nav-item">
	          			<div class="nav-link item-link active" data-target="update" id="update">회원정보</div>
	        		</li>
	        		<li class="nav-item">
	          			<div class="nav-link item-link" data-target="result" id="result">테스트결과</div>
	        		</li>
	        		<c:if test="${user.me_authority eq 'ADMIN'}">
	        			<li class="nav-item">
		          			<!-- <div class="nav-link" data-target="manage" id="manage">관리</div> -->
		          			<div class="dropdown">
							    <div class="nav-link dropdown-toggle" data-toggle="dropdown">관리</div>
							    <div class="dropdown-menu">
							      <div class="dropdown-item item-link" data-target="p-type">성격유형</div>
							      <div class="dropdown-item item-link" data-target="question">질문</div>
							      <div class="dropdown-item item-link" data-target="topic">토론방</div>
							    </div>
							 </div>
		        		</li>
	        		</c:if>
     			</ul>
	      		<hr class="d-sm-none">
	    	</div>
	    	<div id="content" class="col-sm-10">
	    		<!-- 회원정보 -->	
			    <div class="container-item update">
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
				        	<button class="btn btn-outline-dark btn-pw">변경</button>
				      	</div>
					</div>
					<div class="input-group">
						<div class="input-group-prepend input-group-prepend-email">
				        	<span class="input-group-text">이메일</span>
				      	</div>
						<span class="form-control input-group-email" id="me_email">${user.me_email}</span>
						<div class="input-group-append input-group-email">
				        	<button class="btn btn-outline-dark btn-email">변경</button>
				      	</div>
					</div>
					<div class="input-group d-flex justify-content-end mt-3">
			        	<button class="btn btn-outline-danger btn-delete">회원탈퇴</button>
					</div>
			    </div>
			    <!-- 테스트 결과 -->
				<div class="container-item result">
				
			    </div>
			    <!-- 성격 유형 -->
			    <div class="container-item p-type">
					<div class="pt-code">
						<c:forEach items="${ptList}" var="pt">
							<a href="#" class="btn btn-outline-info btn-pt">${pt.pt_code}</a>
						</c:forEach>
					</div>
					<div class="pt-content">
						<div class="pt-content-text" id="pt-content"></div>
						<div class="pt-content-text" id="pt-content-update"></div>
					</div>
					<button class="btn btn-outline-info update-pt" id="btn-update-pt">수정</button>
			    </div>
			    <!-- 질문 -->
			    <div class="container-item question">
					
			    </div>
			    <!-- 토론 -->
			    <div class="container-item topic">
                	<ul class="list-group mt-3 mb-3 discussion-list">
		            	
				  	</ul>
	                <!-- 토론방 추가 폼 -->
	                <form class="mb-3 form-topic-insert">
	                    <div class="input-group">
	                        <input type="text" id="new-topic" class="form-control" placeholder="새로운 토론 주제" required>
	                        <div class="input-group-append">
	                            <button class="btn btn-outline-info" type="submit">추가</button>
	                        </div>
	                    </div>
	                </form>
			    </div>
		    </div>
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
	// 유형 설명 수정
	var pt_code = '';
		$('#btn-update-pt').click(function(){
			/* $('#pt-content').hide(); */
			//썸머노트
			$('#pt-content').summernote({
			  placeholder: '성격 유형 설명',
			  tabsize: 2,
			  heigth: 400,		  
			  minHeight: 300
			});
			var btnStr = `<button class="btn btn-outline-danger update-pt" id="btn-update-c-pt" data-code="\${pt_code}">수정 완료</button>`;
			$('#btn-update-pt').hide();
			$('#btn-update-pt').after(btnStr);
		});
		
		$(document).on('click', '#btn-update-c-pt', function(){
			var pt_code = $(this).data('code');
			var pt_content = $('#pt-content').summernote('code');
			$.ajax({
				url : '<c:url value="/mypage/update/pt"/>',
				method: 'post',
				data : {
					pt_code : pt_code,
					pt_content : pt_content
				},
				success : function(data){
					if(data.result){
						alert('수정하였습니다.');
					}else {
						alert('수정하지 못했습니다.');
					}
				},
				error : function(xhr){
					console.log(xhr);
				}
			});
			$('#btn-update-c-pt').remove();
			$('#btn-update-pt').show();
			$('#pt-content').summernote('destroy');		
		});
	
		// 선택한 유형 설명 불러오는 기능
		$('.btn-pt').click(function(){
			$('#pt-content').summernote('destroy');
			$('#btn-update-pt').show();
			$('#btn-update-c-pt').remove();
			if($('.btn-pt').hasClass('btn-info')){
				$('.btn-pt').removeClass('btn-info');
				$('.btn-pt').addClass('btn-outline-info');
				$('#btn-update-pt').show();
			}
			if($(this).hasClass('btn-outline-info')){
				$(this).removeClass('btn-outline-info');
				$(this).addClass('btn-info');
			}		
			pt_code = $(this).text();
			$.ajax({
				async : false,
				url : '<c:url value="/mypage/manage/pt"/>',
				data : {
					pt_code : pt_code
				},
				success : function(data){
					let pt = JSON.parse(data.pt);
					$('#pt-content').html(pt.pt_content);
					$('#pt-content').show();
				},
				error : function(xhr){
					console.log(xhr);
				}
			}); 
		});
		
		$('.dropdown-item').click(function(){
			$('.dropdown-item').removeClass('active');
			$(this).addClass('active');
		});
		$('.nav-link').click(function(){
			if($(this).data('toggle') != 'dropdown'){
				$('.dropdown-item').removeClass('active');
			}
			$('.nav-link').removeClass('active');
			$(this).addClass('active');
		});
		//마이페이지 메뉴 선택시 화면 전환
		$('.item-link').click(function(){
			var sm = $(this).data('target');
			switch (sm){
			case 'update' : 
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.update').css('display', 'block');
				break;
			case 'result' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.result').css('display', 'block');
				break;
			case 'p-type' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.p-type').css('display', 'block');
				break;
			case 'question' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.question').css('display', 'block');
				break;
			case 'topic' :
				$('.title').text($(this).text());
				$('.container-item').css('display', 'none');
				$('.topic').css('display', 'block');
				break;
			default :
				break;
			}
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
		
		$(document).ready(function() {
		    loadDiscussionRooms();

		    // 토론 추가
		    $('.form-topic-insert').submit(function(e) {
		        e.preventDefault();
		        var dr_topic = $('#new-topic').val();
		        
		        $.ajax({
		            url: '<c:url value="/mypage/manage/dr/insert"/>',
		            method: 'POST',
		            data: {dr_topic : dr_topic},
		            success: function(data) {
		                if(data) {
		                	loadDiscussionRooms();
		                    $('#new-topic').val(''); // 입력창 초기화
		                }else {
		                    alert('토론방을 추가하지 못했습니다.');
		                }
		            },
		            error: function(xhr) {
		                console.error('Error:', xhr);
		            }
		        });
		    });

		    $(document).on('click', '.btn-delete-topic', function() {
		        var dr_num = $(this).data('num');
		    
		        if(confirm('정말 삭제하시겠습니까?')) {
		            $.ajax({
		                url: '<c:url value="/mypage/manage/dr/delete"/>',
		                method: 'POST',
		                data: { dr_num: dr_num },
		                success: function(data) {
		                    if (data.result) {
		                        loadDiscussionRooms();
		                    } else {
		                        alert('토론방을 삭제하지 못했습니다.');
		                    }
		                },
		                error: function(xhr) {
		                    console.error('Error:', xhr);
		                }
		            });
		        }
		    });

		    function loadDiscussionRooms() {
		        $.ajax({
		            url: '<c:url value="/mypage/manage/dr"/>',
		            method: 'GET',
		            success: function(data) {
		            	let list = data.list;
		                var str  = '';
		            	for(dr of list){
		            		str += `
		            			<li class="list-group-item d-flex justify-content-between align-items-center">
								    <span>\${dr.dr_topic}</span>
								    <span>
									    <span class="badge badge-primary badge-pill">\${dr.commentCount}</span>
									    <button class="btn btn-outline-danger btn-delete-topic" data-num=\${dr.dr_num}>삭제</button>
								    </span>
							  	</li>
		    		        `;
		            	}
		                $('.discussion-list').html(str);
		            },
		            error: function(xhr) {
		                console.log('Error fetching discussion list:', xhr);
		            }
		        });
		    }
		});
	</script>
</body>
</html>