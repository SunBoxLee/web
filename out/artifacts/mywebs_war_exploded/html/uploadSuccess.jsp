<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>上传成功</title>
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
  <span>上传成功</span>
  <a href="/html/index.jsp" style="text-decoration: none" >返回首页</a>
</div>
</body>
</html>