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
<link rel = "stylesheet" href = "/webprj/css/p3.css">
<link rel = "stylesheet" href = "/webprj/css/table.css">
<script>
<%
Cpro sch = new Cpro();
P3_cpro cp = new P3_cpro();
ArrayList<Cpro> clist = (ArrayList<Cpro>)cp.excepClose(0, sch);
System.out.println("검색된 데이터 건수:"+clist.size());
Poption psch = new Poption(clist.get(0).getP_num());
ArrayList<Poption> oplist = (ArrayList<Poption>)cp.excepClose(2, psch);
%>

function addRow(op){
	
	
	mytable = document.getElementById('serviceTbody');
	row = mytable.insertRow(mytable.rows.length);
	
	var idx = op.color.selectedIndex;
	
	switch(idx){
	case 0 : break;
	case 1 : 
	cell1 = row.insertCell(0);
	cell1.innerHTML = "<tr><td><%=oplist.get(0).getPo_color()%></td>" 
	                  +"<td>&nbsp&nbsp&nbsp</td>"
	                  +"<td><input type='number' name='cnt0' value='1' style = 'width : 40px;'></td></tr>"; 
	var cnt = document.querySelector('input[name=cnt0]').value;
	var pri = <%=clist.get(0).getP_price()%>;
	cell1.innerHTML += "<div>cnt*pri</div>";
	break;
	case 2 :
	cell1 = row.insertCell(0);
	cell1.innerHTML = "<tr><td><%=oplist.get(1).getPo_color()%></td></tr>";
	break;
	case 3 :
	cell1 = row.insertCell(0);
	cell1.innerHTML = "<tr><td><%=oplist.get(2).getPo_color()%></td></tr>";
	break;
	}
	return true;
}
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
}
#totalcnt{
	text-align : right;
}
#totalcntTable{
	width : 390px; 
	height : 40px;
	border-top: 1px solid #000;
}
</style>
</head>
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
  <table class ="mono_table" border width = "390px" height = "300px">
  <tr><th colspan = "2" class ="mono_table"><%=clist.get(0).getP_name()%></th></tr>
  <tr><th>판매가</th><td><%=clist.get(0).getP_price()%>원</td></tr>
  <tr><th>색상 - 사이즈</th>
  <td><form>
  	<select name="color" onchange = "addRow(this.form)" style="width: 118px; ">
  	<option value="0" selected>필수 선택</option>
    <option value="1" ><%=oplist.get(0).getPo_color() %>-<%=oplist.get(0).getPo_size() %></option>
    <option value="2"><%=oplist.get(1).getPo_color() %>-<%=oplist.get(1).getPo_size() %></option>
    <option value="3"><%=oplist.get(2).getPo_color() %>-<%=oplist.get(2).getPo_size() %></option>
  </select>
  </form></td></tr>
  </table>
  <br>
  <table id = "totalcntTable">
  <tbody id = "serviceTbody">
  </tbody>
  <tr><td id = "totalcnt">총 구매액 :</td></tr>
  </table>
  <table width = "390px" height = "60px">
  <tr><td width = "180px" style = "background-color : red">구 매</td>
  <td></td>
  <td width = "120px" style = "background-color : white">CART</td></tr>
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