<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>文件上传</title>
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
<div style="width: 300px;height: 300px;position:absolute;top:400px ;left: 710px">
    <div style="float: left"><span style="font-size: 20px">选择文件:</span></div>
<!--    <div style="position:relative; width: 100px;margin: auto ">-->
    <img src="../images/upload.png" width="100" />
    <form action="/upload"enctype="multipart/form-data" method="post" >
        <div><span style="font-size: 20px">用&nbsp;户&nbsp;名&nbsp;:</span><input type="text" style="width: 95px" name="username"> </div>
    <input type="file" name="file" style="position:absolute;top:0px;left:12px;opacity:0;width:100px;height: 100px"/>
        <input type="button" style="display: none">
        <input type="submit" value="上传" style="width: 100px;margin-left: 85px;margin-top: 20px">
    </form>
    </div>
</body>
</html>