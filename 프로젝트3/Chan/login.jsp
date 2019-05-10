<%@ page import="example.Customer" %>
<%@ page import="example.Customer_DB" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.SQLException" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="../CSS/login.css" type="text/css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
    //<![CDATA[
    $( document ).ready( function() {
        var jbOffset = $( '.topMenu' ).offset();
        $( window ).scroll( function() {
            if ( $( document ).scrollTop() > jbOffset.top ) {
                $( '.topMenu' ).addClass( 'jbFixed' );
            }
            else {
                $( '.topMenu' ).removeClass( 'jbFixed' );
            }
        });
    } );

</script>
<body>
<div class="topbutton">
    <a href="login.jsp"><input type="button" value="로그인" class="login"></a>
    <a href="http://192.168.0.68:7080/webprj/p3/p3_reg.jsp"><input type="button" value="회원가입" class="singin"></a>
    <a href="#"><input type="button" value="장바구니" class="basket"></a>
    <a href="Olist.jsp"><input type="button" value="주문내역" class="olist"></a>
    <a href="MyPage.jsp"><input type="button" value="마이페이지" class="mypage"></a>

    <a href="#"><input type="button" value="공지사항" class="anno"></a>
    <a href="#"><input type="button" value="상품문의" class="qgoods"></a>
    <a href="#"><input type="button" value="1:1문의" class="q1"></a>
    <a href="#"><input type="button" value="사용후기" class="after"></a>
</div>
<br>
<hr class="justline">

<div class="topMenu">
    <ul>
        <li><a href="#" id="current01">MADE</a>
            <!--<ul>
              <li><a href="#">스키니</a></li>
              <li><a href="#">청바지</a></li>
              <li><a href="#">일자바지</a></li>
              <li><a href="#">배기바지</a></li>
            </ul>-->
        </li>

        <li><a href="#" id="current02">TOP</a>
            <ul>
                <li><a href="#">라운드넥</a></li>
                <li><a href="#">브이넥</a></li>
                <li><a href="#">나시티</a></li>
                <li><a href="#">니트</a></li>
            </ul>
        </li>

        <li><a href="#" id="current03">PANTS</a>
            <ul>
                <li><a href="#">스키니</a></li>
                <li><a href="#">청바지</a></li>
                <li><a href="#">일자바지</a></li>
                <li><a href="#">배기바지</a></li>
            </ul>
        </li>

        <li><a href="#" id="current04">OUTER</a>
            <ul>
                <li><a href="#">자켓</a></li>
                <li><a href="#">점퍼</a></li>
                <li><a href="#">베스트</a></li>
                <li><a href="#">가디건</a></li>
                <li><a href="#">코</a></li>
            </ul>
        </li>

        <li><a href="#" id="current05">KINT</a>
            <ul>
                <li><a href="#">니트</a></li>
                <li><a href="#">가디건</a></li>
                <li><a href="#">니트/조끼</a></li>
                <li><a href="#">원피스/스커트</a></li>
            </ul>
        </li>

        <li><a href="#" id="current06">BLOUSE</a>
            <ul>
                <li><a href="http://192.168.0.68:7080/webprj/p3/Main3.jsp">블라우스</a></li>
                <li><a href="#">셔츠/남방</a></li>
            </ul>
        </li>

        <li><a href="#" id="current07">OPS & SKIRT</a>
            <ul>
                <li><a href="#">원피스</a></li>
                <li><a href="#">스커트</a></li>
                <li><a href="#">점프수트</a></li>
            </ul>
        </li>

        <li><a href="#" id="current08">BAG & SHOES</a>
            <ul>
                <li><a href="#">가방</a></li>
                <li><a href="#">플랫/단화</a></li>
                <li><a href="#">힐</a></li>
                <li><a href="#">운동화/스니커즈</a></li>
            </ul>
        </li>
    </ul>
</div>
<form action="loginform.jsp" method="get">
<div class="LoginSet">
<div class="Login">
    <input type="hidden" name="loginid">
   <input type="hidden" name="loginpass">
    <table class="Loginin">

        <tr><th>아이디:</th><td><input type="text" name="id"></td></tr>
        <tr><th>패스워드:</th><td><input type="password" name="pass"/></td></tr>

    </table>
    <div class="Loginbtn">
    <input type='submit' value='로그인'/>
    <input type="button" value="회원가입" name="regs"  onclick="location='reg.jsp'">
    </div>
</div>
</div>
</form>
</body>
</html>