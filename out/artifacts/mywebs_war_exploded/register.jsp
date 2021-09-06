<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="utf-8">
  <title>注册页</title>
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
    <script type="text/javascript" src="/jQ/jquery-1.7.2.js"></script>
</head>
<body>
<div class="signup-form">
  <form class="in" action="/register" method="post">
    <h1>Sign Up</h1>
    <input type="text" placeholder="用户名" class="txtb" name="username" id="us">
    <input type="password" placeholder="密码" class="txtb" name="password" id="pwd">
    <input type="password" placeholder="确认密码" class="txtb" id="confirm">
    <input type="email" placeholder="邮箱" class="txtb" name="email" id="ems">
   <input  type="text"placeholder="验证码" class="txtb" name="code" id="sm" style="width: 140px"><img src="/kaptcha.jpg" style="width: 140px;height: 44px" id="codejpg" >
      <span id="error"></span>
      <span id="rerror">
<%--          <%=request.getAttribute("msg")==null?"":request.getAttribute("msg")%>--%>
          ${requestScope.msg}
      </span>
    <input type="submit" value="注册" class="signup-btn" id="reg">
    <a href="/login.jsp" id="return">返回首页</a>
  </form>
</div>
<%request.removeAttribute("msg");%>
</body>

  <script type="text/javascript">
      $(function () {
          $("#reg").click(function () {
              $("#rerror").empty();
              var un=$("#us").val();
              //字母数字下划线长度5-12
              var usernamePatt=/^\w{5,12}$/;
              if(!usernamePatt.test(un))
              {
                  $("#error").text("用户名不合法!");
                  return false;
              }
              var pwd=$("#pwd").val();
              //字母数字下划线长度5-12
              var pwdPatt=/^\w{5,12}$/;
              if(!pwdPatt.test(pwd))
              {
                  $("#error").text("密码不合法!");
                  return false;
              };
              var cpwd=$("#confirm").val();
              if(pwd!=cpwd)
              {
                  $("#error").text("两次输入密码不一致!");
                  return false;
              }
               var em=$("#ems").val();
              // if(em==null || em=="")
              // {
              //     $("#error").text("邮箱不能为空!");
              //     return  false;
              // }
              var emailPatt=/^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
              // var em=$("#email").val();
              // var emailPatt=/^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/
              // /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
              // alert(emailPatt.test(em));
              if(!emailPatt.test(em))
              {
                  $("#error").text("邮箱格式不合法!");
                  return false;
              }
              var code=$("#sm").val();
              if(code==null || code=="")
              {
                  $("#error").text("验证码不能为空!");
                  return  false;
              }
              $("#error").text();
          })
      })
  </script>
<script type="text/javascript">
    $(function () {
        $("#codejpg").click(function () {
                this.src="${basePath}/kaptcha.jpg?d="+new Date();
        })
    });
</script>
</html>
