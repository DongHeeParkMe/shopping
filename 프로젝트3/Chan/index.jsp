<%--
  Created by IntelliJ IDEA.
  User: KimChan
  Date: 2018. 6. 19.
  Time: 오후 9:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Main Page</title>
  <!--<link rel="stylesheet" href="WEB-INF/Maincss.css" type="text/css">-->
</head>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
<script type="text/javascript">
    //<![CDATA[
    /*$(document).ready(function(){
        $("img[class=imageslide]").hide();
        $("img[class=imageslide]").first().show();
        $("img[class=imageslide]").css("width", 800).css("height", 300);
        setInterval(function(){
            $("div[class=StreamImage]").append(
            $("img[class=imageslide]").first());
            $("img[class=imageslide]").first().fadeOut();
            $("img[class=imageslide]").last().hide();
            $("img[class=imageslide]").first().show();
        }, 1500)
    });*/
    $(document).ready(function(){
        $('.StreamImage').bxSlider({
            auto: true,
            mode: 'horizontal',
            useCSS: true,
            control: true,
            speed: 500,
            pause: 2000,
            infiniteLoop: true,
            slideWidth: 800,
            slideMargin: 0
        });
    });

    self.moveTo(0,0);
    self.resizeTo(screen.availWidth, screen.availHeight);
    //]]>
</script>
<style>
  /* Macbook 13.3ch */

  /*Image Slide*/
  .StreamImage{
    background-color: black;
    width: 800px;
    height: auto;
    position: fixed;
  }

  .StreamImage00{
    margin-left: 22%;
    width:800px;
    height:auto;
    positon:static;
  }

  .imageslide{
    width: 800px;
    height: 300px;
    postion: static;
  }

  .topbutton{
    width:1400px;
    margin:0px;
    padding:0px;
  }

  /*왼쪽 상단 시작*/
  .login, .singin, .basket, .olist, .mypage{
    float: left;
    border: none;
    background-color: white;
    position: relative;
    margin-left: 5px;
    height: 15px;
    cursor: pointer;
  }

  /*오른쪽 상단 시작*/
  .anno, .qgoods, .q1, .after{
    float: right;
    border: none;
    background-color: white;
    position: relative;
    margin-left: 10px;
    height: 15px;
    cursor: pointer;
  }

  /*Drop Down Menu*/
  .topMenu{
    border:none;
    border:0px;
    margin:0px;
    padding:0px;
    font: 67.5% "Lucida Sans Unicode", "Bitstream Vera Sans", "Trebuchet Unicode MS", "Lucida Grande", Verdana, Helvetica, sans-serif;
    font-size:14px;
    width: 1440px;
    font-weight:bold;
  }

  .topMenu ul{
    background: black;
    height:50px;
    list-style:none;
    margin:0;
    padding:0;
  }

  .topMenu li{
    background-color: black;
    float:left;
    padding:0px;
  }

  .topMenu ul li{
    margin-left: 65px;
  }

  .topMenu li a{
    background: black;
    color:#cccccc;
    display:block;
    font-weight:normal;
    line-height:50px;
    margin:0px;
    padding:0px 25px;
    text-align:center;
    text-decoration:none;
  }

  .topMenu li a:hover, .topMenu ul li:hover a{
    background: rgb(71,71,71);
    color:#FFFFFF;
    text-decoration:none;
  }

  .topMenu li ul{
    background: rgb(109,109,109);
    display:none; /* 평상시에는 드랍메뉴가 안보이게 하기 */
    height:auto;
    padding:0px;
    margin:0px;
    border:0px;
    position:absolute;
    width:200px;
    z-index:200;
    /*top:1em;
    /*left:0;*/
  }

  .topMenu li:hover ul{
    display:block; /* 마우스 커서 올리면 드랍메뉴 보이게 하기 */
  }

  .topMenu li li {
    background: rgb(109,109,109);
    display:block;
    float:none;
    margin:0px;
    padding:0px;
    width:200px;
  }

  .topMenu li:hover li a{
    background:none;
  }

  .topMenu li ul a{
    display:block;
    height:50px;
    font-size:12px;
    font-style:normal;
    margin:0px;
    padding:0px 10px 0px 15px;
    text-align:left;
  }

  .topMenu li ul a:hover, .topMenu li ul li:hover a{
    background: rgb(71,71,71);
    border:0px;
    color:#ffffff;
    text-decoration:none;
  }

  .topMenu p{
    clear:left;
  }
  /*Drop Down Menu*/
  .cloth{
    width:1440px;
    margin-right: 15px;
  }

  .cloth01, .cloth02, .cloth03, .cloth04{
    width: 250px;
    height: 400px;
    border: 1px solid;
    float: left;
    margin-left: 6%;
    margin-top: 5%;
  }

  @media screen and (min-width: 1500px){ /* 데스크탑 적용 */
    .StreamImage{
      background-color: black;
      width: 800px;
      height: 300px;
      margin-left: 29%;
    }
    .login{
      float:left;
    }
    .singin{
      float: left;
    }
    .topMenu{
      background-color: black;
    }

    ul, li{
      display: inline;
      float: left;
      color: whitesmoke;
    }

    li{
      position: relative;
      margin-left: 18ch;
    }
  }


</style>
<body>
<div class="topbutton">
<a href="#"><input type="button" value="로그인" class="login"></a>
<a href="#"><input type="button" value="회원가입" class="singin"></a>
<a href="#"><input type="button" value="장바구니" class="basket"></a>
<a href="#"><input type="button" value="주문내역" class="olist"></a>
<a href="#"><input type="button" value="마이페이지" class="mypage"></a>

<a href="#"><input type="button" value="공지사항" class="anno"></a>
<a href="#"><input type="button" value="상품문의" class="qgoods"></a>
<a href="#"><input type="button" value="1:1문의" class="q1"></a>
<a href="#"><input type="button" value="사용후기" class="after"></a>
</div>
<br>
<hr style="border: solid 3px; color:gray; width:1440px">

<div class="topMenu">
  <ul>
    <li><a href="#" id="current01">MADE</a>
      <ul>
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
      </ul>
    </li>

    <li><a href="#" id="current02">TOP</a>
      <ul>
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
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
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
      </ul>
    </li>

    <li><a href="#" id="current05">KINT</a>
      <ul>
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
      </ul>
    </li>

    <li><a href="#" id="current06">BLOUSE</a>
      <ul>
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
      </ul>
    </li>

    <li><a href="#" id="current07">OPS & SKIRT</a>
      <ul>
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
      </ul>
    </li>

    <li><a href="#" id="current08">BAG & SHOES</a>
      <ul>
        <li><a href="#">스키니</a></li>
        <li><a href="#">청바지</a></li>
        <li><a href="#">일자바지</a></li>
        <li><a href="#">배기바지</a></li>
      </ul>
    </li>
  </ul>
</div>

<br>
<div class="StreamImage00">
<div class="StreamImage">
  <a href="#"><img src="/11.PNG" class="imageslide"/></a>
  <a href="#"><img src="/Spring.jpg" class="imageslide"/></a>
  <a href="#"><img src="/Summer.jpg" class="imageslide"/></a>
  <a href="#"><img src="/Fall.jpg" class="imageslide"/></a>
</div>
</div>

<br>

<div class="cloth">
<div class="cloth01"></div>
<div class="cloth02"></div>
<div class="cloth03"></div>
<div class="cloth04"></div>
</div>
</body>
