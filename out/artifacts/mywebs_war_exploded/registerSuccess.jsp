<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册成功</title>
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
</head>
<body>
      <div style="text-align: center;margin: 300px;font-size: 35px">
        <span>注册成功</span>
        <a href="/login.jsp" style="text-decoration: none" >去登录</a>
      </div>
</body>
</html>