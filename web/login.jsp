<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>登录</title>
    <%
      String basePath=request.getScheme()//获取协议
      +"://"
      +request.getServerName()//获取服务器IP
      +":"
      +request.getServerPort()//获取服务器端口号
      +request.getContextPath()//获取工程路径
      +"/";
    %>
    <base href="<%=basePath%>">
    <link type="text/css" rel="stylesheet" href="/css/style.css">
  </head>
  <body>
    <div class="signup-form">
      <form class="" action="/login" method="post">
        <h1>Sign In</h1>
        <input type="text" placeholder="用户名" class="txtb" name="username">
        <input type="password" placeholder="密码" class="txtb" name="password">
        <span id="errormsg">
<%--          <%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>--%>
          ${requestScope.msg}
        </span>
        <input type="submit" value="登录"class="signup-btn">
        <a href="/register.jsp"><span>注册</span><span id="s1">忘记密码 ?</span></a>
      </form>
    </div>
  </body>
<script type="text/javascript" src="/jQ/jquery-1.7.2.js"></script>
<script>
    $(function () {
      $("#s1").click(function (event) {
        window.location="http://www.baidu.com";
        return false;
      });
    })

</script>
</html>
