<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath();%>
<%
String cloname = request.getParameter("cloname");
String clopri = request.getParameter("clopri");
int clopri_n = Integer.parseInt(clopri);
String cloimg = request.getParameter("cloimg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "<%=path%>/css/p3.css">
<script type="text/javascript" src = "<%=path%>/css/jquery-3.3.1.min.js">
</script>
<script>

</script>
<style>
</style>
</head>
<body>
<form>
	<input type="hidden" name="proc" value="ins"/>
<table align="center">
	<tr><th>옷 종류</th><td><input type="text" name = "closort" value = "블라우스"/></td></tr>
	<tr><th>옷 이름</th><td><input type="text" name="cloname" value="" /></td></tr>
	<tr><th>가격</th><td><input type="text" name="clopri"  value="" /></td></tr>
	<tr><th>이미지 이름</th><td><input type="text" name="cloimg"  value="" /></td></tr>		
	<tr><td colspan="2" style="text-align:right;">
		<input type="button" value="등록" onclick="insert()"/>
	</td></tr>		
</table>
</form>
</body>
</html>