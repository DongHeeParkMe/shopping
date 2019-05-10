<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
<script type="text/javascript" src="${path}/a00_com/popper.min.js"></script>		
<script type="text/javascript" src="${path}/a00_com/bootstrap.min.js"></script>	
<script type="text/javascript" src="${path}/a00_com/jquery-3.3.1.min.js"></script>

<script>
$(document).ready(function(){
		  $("#reg").click(function(){
			  /* if(idck==0){
				  alert("아이디 중복 체크가 필요합니다.");
				  return false;
			  }else{ */
				  alert("가입 완료");
				  $("#joinModal form").submit();
			  /*}*/
		  });
		  // 아이디를 입력하면 바로 작동
	
});
</script>
</head>
<body>
<div class="modal" id="joinModal">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<h1>Join</h1>
				<form method="post" action="${path}/start.do?method=join">
				<div class="input-group">
					<div class="input-group">
					<input type="text" name="email" id="email" class="form-control" placeholder="이메일을 입력하세요.">
						<div id="chkided"></div>
					</div>
				</div>
				<div class="input-group">
					<input type="password" name="pass" class="form-control" placeholder="비밀번호를 입력하세요.">
				</div>
				<div class="input-group">
					<input type="text" name="name" class="form-control" placeholder="이름을 입력하세요.">
				</div>
				<div class="input-group">	
				</div>
				<div class="input-group">
					<input type="text" name="tel" class="form-control" placeholder="연락처를 입력하세요">
				</div>
				<div class="input-group">
					<input type="text" name="address" class="form-control" placeholder="주소를 입력하세요">
				</div>
				<div class="input-group">
					<input type="button" class="form-controll btn btn-outline-primary" id="reg" value="회원가입">
				</div>
				<input type="reset" value="초기화"/>
				</form>
			</div>
		</div>
		<div class="modal-footer">
			<button type="button" class="btn btn-info btn-sm"
				data-dismiss="modal">창닫기</button>
		</div>
	</div>
</div>
</body>
</html>