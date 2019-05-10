<%@ page language="java"
 contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
.ca{
	width:50px;
	heigth:100px;
	}
	
.pa{
	background-color:#E7d4e3;
	}	
.but{margin-left:475px;}
</style>
<body style="margin-left:250px; margin-top:30px">
<form method="post" action=url(ends.jsp)>
<table border>
 <caption> <h1>글 작성</h1></caption>
<tr class="pa">
	<td>글제목</td>
			<td ><input type="text" name="title"></td>
											 <td>아이디  </td> 
											 			<td>11</td>
</tr>
<tr class="pa">
	<td>글 내용 </td>
				<td style="width:500px; height:400px;" colspan=3;><textarea name="text" style="width:100%; heigth:100%"> </textarea></td>
</tr>
<tr class="pa">
	<td>첨부 파일 </td>
					<td colspan=2;><label for="file-ex">업로드 </label><input multiple="multiple" type="file"  name="filename"></td>
</tr>
</table> 

<input type="button" name="create" class="but" value="작성" onclick="alert('작성완료'); "><span>
<input type="reset" name="reset" value="초기화"></span>
</form>
</body>
</html>