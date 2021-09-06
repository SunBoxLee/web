<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>下载</title>
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
    <form action="/download" method="post">
      <div style="width:400px;margin:auto;margin-top: 420px"><span>请输入你要下载的用户名:</span><input type="text" name="username"></div>
      <input type="submit" name="download" value="下载"style="margin-left: 800px;margin-top: 20px">
    </form>
    <div style="margin-top: 20px;"><a href="/html/index.jsp"style="margin-left: 790px;text-decoration: none;">返回首页</a></div>
</body>
</html>