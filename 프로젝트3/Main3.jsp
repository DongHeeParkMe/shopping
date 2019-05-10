<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel = "stylesheet" href = "/webprj/css/p3.css">
<style type="text/css">
#ins{
	float : left;
}
</style>
<script type="text/javascript">
function insert(){
	if(confirm("등록합니다!")) location.href = "p3_bla_ins.jsp";
}
</script>
</head>
<body>
<div class="header">
<div id = "ins">
<input type = "button" value = "등록" onclick = insert()>
</div>
</div>

 <div class="columnA">
  <div id="column1" style="background-color:#bbb;">
  <h1 style = "text-align:center;">블라우스</h1>
  <ul class = "ul1">
	<li class = "li1"><a href = "cloth.jsp" target = "frame1">Best</a></li>
	<li class = "li1"><a href = "cloth.jsp" target = "frame1">New</a></li>
</ul>
<iframe class = "i1" name = "frame1" src = "cloth.jsp" style = "margin : 30px 0 0 35px;"></iframe>
  </div>
  <div id="column2" style="background-color:#ccc;">Column</div>
 </div>

<div class="footer">
  <p>Footer</p>
</div>

</body>
</html>