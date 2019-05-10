<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "p3_db.Cpro,p3_db.Poption,p3_dbcom.P3_cpro"
    import = "java.util.ArrayList"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<link rel = "stylesheet" href = "C:\a01_prg\workspace\webexp_svn\member\a00_3\프로젝트3/table.css">
<script>

</script>
<style>
#cloimg{
	float : left;
	width : 400px;
	height : 600px;
	margin : 10px 50px 0 25%;
}
#cate{
	float : left;
	width : 400px;
	height : 500px;
	margin : 10px 50px 0 50px;
}
td{
	text-align : center;
function addRow(){

}
</style>
</head>
<%
Cpro sch = new Cpro();
P3_cpro cp = new P3_cpro();
ArrayList<Cpro> clist = (ArrayList<Cpro>)cp.excepClose(0, sch);
System.out.println("검색된 데이터 건수:"+clist.size());
Poption psch = new Poption(clist.get(0).getP_num());
ArrayList<Poption> oplist = (ArrayList<Poption>)cp.excepClose(2, psch);

%>
<body>
<div class="header">
</div>

 <div class="columnA">
  <div id="column1" style="background-color:#bbb;">
  <div id="cloimg">
  <table  width = "390px" height = "490px">
  <tr><td><img src= "<%=clist.get(0).getP_image() %>" width = "390px" height = "490px"></td></tr> 
  </table>
  <br>
  <table border width = "390px" height = "80px">
  </table>
  </div>
  <div id = "point"></div>
  <div id="cate">
  <table border width = "390px" height = "300px">
  <tr><th colspan = "2"><%=clist.get(0).getP_name()%></th></tr>
  <tr><th>판매가</th><td><%=clist.get(0).getP_price()%>원</td></tr>
  <tr><th>색상 - 사이즈</th>
  <td><form>
  	<select name="color">
  	<option value="" selected>필수 선택</option>
    <option value=""><%=oplist.get(0).getPo_color() %>-<%=oplist.get(0).getPo_size() %></option>
    <option value="saab"><%=oplist.get(1).getPo_color() %>-<%=oplist.get(1).getPo_size() %></option>
    <option value="audi"><%=oplist.get(2).getPo_color() %>-<%=oplist.get(2).getPo_size() %></option>
  </select>
  </form></td></tr>
  </table>
  <br>
  <table border width = "390px" height = "190px">
  <tr><td></td></tr>
  <tr><td>장바구니</td></tr>
  <tr><td>구매</td></tr>
  </table>
  </div>
  </div>
  <div id="column2" style="background-color:#ccc;">Column</div>
 </div>
</div>
<div class="footer">
  <p>Footer</p>
</div>

</body>
</html>