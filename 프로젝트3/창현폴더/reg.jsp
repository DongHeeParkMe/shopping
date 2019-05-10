<%@ page language="java"
 contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
table{
	background-color:#938274;
	border:1px solid;
	width:450px;
	height:500px;
	text-align:center;
	margin-top:100px;
	margin:auto;
	
}
td{
	margin:0px;
	padding:0px;
	}
.but {
		margin-left:530px;
			}

</style>
</head>
<body>
<form>
<table >
<caption> <h1> 회원가입 </h1> </caption>
<tr>
<th>아이디 </th>
	<td>
	<div>
	<input type="text" name="inputID" /><span>
<input type="button" value="중복확인" onclick="checkId()"/>
		</div>
		</td>
</tr>
<tr>
<th>비밀번호 </th> 
		<td colspan="2"><input type="password" name="inputPass"/></td></tr>
<tr>
<th>이름 </th><td colspan="2"><input type="text" name="inputName"/></td>
</tr>
<tr>
<th>전화번호 </th>
	<td colspan="2"><input type="text" name="inputTel"></td>
</tr>
<tr>
	<th>이메일 </th>
		<td colspan="2"><input type="text" name="inputEmail"></td>
</tr>
<tr>
<th>생년월일 </th>
			<td colspan="2"><div>
				<select name="years">
					<option value="2000" selected>2000</option>
					<option value="1999" selected>1999</option>
					<option value="1998" selected>1998</option>
					<option value="1997" selected>1997</option>
					<option value="1996" selected>1996</option>
				</select>
					<select name="Months">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
			   		</select>
						<select name="days">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>
							<option value="21">21</option>
							<option value="22">22</option>
							<option value="23">23</option>
							<option value="24">24</option>
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>
							<option value="30">30</option>
							<option value="31">31</option>
						</select>
						</div>
		</td>		
</tr>
<tr> <th>주소 </th> <td colspan="2"><input type="text" name="inputAddress"/></td></tr>
</table>

<input type="button" class="but" value="회원가입"/><span><input type="button" value="취소" onclick="history.back()" ></span>

</form>
</body>
</html>