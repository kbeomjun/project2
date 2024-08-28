<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<!-- 로그인 팝업 -->
<div id="login-popup" class="popup">
    <button class="close" onclick="closePopup()">&times;</button>
    <h2 class="text-center mb-3">로그인</h2>
    <form action="<c:url value="/login"/>" method="post">
        <div class="form-group">
          <label for="id">아이디:</label>
          <input type="text" class="form-control" name="id" required>
         </div>
         <div class="form-group">
          <label for="pw">패스워드:</label>
          <input type="password" class="form-control" name="pw" required>
         </div>
         <div class="form-group">
          <input type="submit" class="form-control btn btn-outline-info" value="로그인">
         </div>
     </form>
</div>
</body>
</html>