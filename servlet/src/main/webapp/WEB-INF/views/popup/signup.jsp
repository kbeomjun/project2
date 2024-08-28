<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/jquery.validate.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.19.5/dist/additional-methods.min.js"></script>
<style type="text/css">
.error{color: red; font-size: 12px;}
</style>
</head>
<body>
<!-- 로그인 팝업 -->
<div id="signup-popup" class="popup">
    <button class="close" onclick="closePopup()">&times;</button>
    <h2 class="text-center mb-3">회원가입</h2>
    <form id="form">
        <div class="form-group">
          <label for="id">아이디:</label>
          <input type="text" id="id" class="form-control" name="id">
         </div>
         <div class="form-group">
          <label for="pw">패스워드:</label>
          <input type="password" id="pw" class="form-control" name="pw">
         </div>
         <div class="form-group">
          <label for="pw2">패스워드 확인:</label>
          <input type="password" id="pw2" class="form-control" name="pw2">
         </div>
         <div class="form-group">
          <button id="btn-submit" class="form-control btn btn-outline-info">회원가입</button>
         </div>
     </form>
</div>
<script type="text/javascript">
$('#form').validate({
	
	rules : {
		id : {
			required : true,
			regex : /^\w{6,13}$/
		},
		pw : {
			required : true,
			regex : /^[a-zA-Z0-9!@#$]{6,15}$/
		},
		pw2 : {
			equalTo : pw
		},
		email : {
			required : true,
			email : true
		}
	},
	
	messages : {
		id : {
			required : '*필수 항목입니다.',
			regex : '*6~13자, 영어와 숫자만 가능합니다.'
		},
		pw : {
			required : '*필수 항목입니다.',
			regex : '*6~15자, 영어와 숫자, 특수문자(!@#$)만 가능합니다.'
		},
		pw2 : {
			equalTo : '*비번과 일치하지 않습니다.'
		},
		email : {
			required : '*필수 항목입니다.',
			email : '*E-mail 형식이 아닙니다.'
		}
	},
	
	submitHandler : function(){
		return true;
	}
});
$.validator.addMethod('regex', function(value, element, regex){
	var re = new RegExp(regex);
	return this.optional(element) || re.test(value);
}, "정규표현식을 확인하세요.")

	
</script>
</body>
</html>