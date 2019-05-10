<%--
  Created by IntelliJ IDEA.
  User: KimChan
  Date: 2018. 7. 2.
  Time: 오후 4:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    session.removeAttribute("id");
    response.sendRedirect("login.jsp");
%>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
