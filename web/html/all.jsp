<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <title>员工信息表</title>
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
  <link rel="stylesheet" href="/layui/css/layui.css">
  <style>
    #link a:hover{
      color: white;
    }
  </style>
  <script src="/layui/layui.js"></script>
<script type="text/javascript" src="/jQ/jquery-1.7.2.js"></script>
</head>
<body>
<div class="layui-layout layui-layout-admin">
  <div class="layui-header">
    <!--    <div class="layui-logo layui-hide-xs layui-bg-black">layout demo</div>-->
    <!-- 头部区域（可配合layui 已有的水平导航） -->
    <!--    <ul class="layui-nav layui-layout-left">-->
    <!--      &lt;!&ndash; 移动端显示 &ndash;&gt;-->
    <!--      <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-header-event="menuLeft">-->
    <!--        <i class="layui-icon layui-icon-spread-left"></i>-->
    <!--      </li>-->
    <div style="width: 75%;margin: auto;font-size: 25px;color: #5FB878;margin-top: 10px;float: left">人事管理系统后台</div>
    <!--      <li class="layui-nav-item layui-hide-xs"><a href="">nav 1</a></li>-->
    <!--      <li class="layui-nav-item layui-hide-xs"><a href="">nav 2</a></li>-->
    <!--      <li class="layui-nav-item layui-hide-xs"><a href="">nav 3</a></li>-->
    <!--      <li class="layui-nav-item">-->
    <!--        <a href="javascript:;">nav groups</a>-->
    <!--        <dl class="layui-nav-child">-->
    <!--          <dd><a href="">menu 11</a></dd>-->
    <!--          <dd><a href="">menu 22</a></dd>-->
    <!--          <dd><a href="">menu 33</a></dd>-->
    <!--        </dl>-->
    <!--      </li>-->
    <!--    </ul>-->
    <!--    <ul class="layui-nav layui-layout-right">-->
    <li class="layui-nav-item layui-hide layui-show-md-inline-block" id="link">
      <a href="javascript:;">
        <img src="../images/tx.png" class="layui-nav-img" style="margin-top: 10px">
        <a href="" >Your Profile</a>
        <a href="" >Settings</a>
        <a href="/login.jsp">Sign out</a>
      </a>
      <!--        <dl class="layui-nav-child">-->
      <!--          <dd><a href="">Your Profile</a></dd>-->
      <!--          <dd><a href="">Settings</a></dd>-->
      <!--          <dd><a href="">Sign out</a></dd>-->
      <!--        </dl>-->
    </li>
    <li class="layui-nav-item" lay-header-event="menuRight" lay-unselect>
      <a href="javascript:;">
        <i class="layui-icon layui-icon-more-vertical"></i>
      </a>
    </li>
    </ul>
  </div>

  <div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
      <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
      <ul class="layui-nav layui-nav-tree" lay-filter="test">
        <li class="layui-nav-item layui-nav-itemed">
          <a class="" href="/html/manager.jsp">档案管理</a>
          <dl class="layui-nav-child">
            <dd><a href="/html/add.jsp">员工信息录入</a></dd>
            <dd><a href="/html/select.jsp">员工信息查询</a></dd>
            <dd><a href="/html/query.jsp">显示所有档案信息</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">考勤管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">list 1</a></dd>
            <dd><a href="javascript:;">list 2</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">奖惩管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">list 1</a></dd>
            <dd><a href="javascript:;">list 2</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">工资管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">list 1</a></dd>
            <dd><a href="javascript:;">list 2</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item">
          <a href="javascript:;">系统管理</a>
          <dl class="layui-nav-child">
            <dd><a href="javascript:;">list 1</a></dd>
            <dd><a href="javascript:;">list 2</a></dd>
            <dd><a href="">超链接</a></dd>
          </dl>
        </li>
        <li class="layui-nav-item"><a href="javascript:;">去社区逛逛</a></li>
        <li class="layui-nav-item"><a href="">企业文化</a></li>
      </ul>
    </div>
  </div>

  <div class="layui-body" >
    <!-- 内容主体区域 -->
    <div style="padding: 15px"> </div>
    <table class="layui-table">
<%--    <table lay-filter="demo">--%>
      <colgroup>
        <col width="150">
        <col width="200">
        <col>
      </colgroup>
      <thead>
      <tr>
        <th>姓名</th>
        <th>手机号码</th>
        <th>所在部门</th>
        <th>工资</th>
        <th>社区账号</th>
        <th>备注</th>
        <th>修改信息</th>
        <th>删除员工</th>
      </tr>
      </thead>
      <tbody>
      <c:forEach items="${requestScope.employees}" var="employee">
      <tr>
        <td>${employee.name}</td>
        <td>${employee.phone}</td>
        <td>${employee.department}</td>
        <td>${employee.salary}</td>
        <td>${employee.username}</td>
        <td></td>
        <td><a href="/employees?action=getInstance&name=${employee.name}&pageNo=${requestScope.pageNo}">修改</a></td>
        <td><a href="/employees?action=delete&name=${employee.name}&pageNo=${requestScope.pageNo}" class="deleteClass">删除</a></td>
      </tr>
      </c:forEach>
<%--      <tr>--%>
<%--        <td>许闲心</td>--%>
<%--        <td>2016-11-28</td>--%>
<%--        <td>于千万人之中遇见你所遇见的人，于千万年之中，时间的无涯的荒野里…</td>--%>
<%--      </tr>--%>
      <tr>
        <div class="layui-btn-container ">
          <td style=""><a class="layui-btn layui-btn-primary" href="/employees?action=page&pageNo=1&pageSize=10">首页</a></td>
          <td><a class="layui-btn layui-icon layui-icon-left" href="/employees?action=page&pageNo=${requestScope.pageNo-1}&pageSize=10" id="last">上一页</a></td>
          <td><button class="layui-btn" style="background: white"><span style="color: black">
            <c:choose>
              <c:when test="${requestScope.pageTotal<=5}">
                <c:forEach begin="1" end="${requestScope.pageTotal}" var="i">
                  <c:if test="${i==requestScope.pageNo}">
                    <a href="/employees?action=page&pageNo=${i}&pageSize=10">[${requestScope.pageNo}]</a>
                  </c:if>
                  <c:if test="${i!=requestScope.pageNo}">
                  <a href="/employees?action=page&pageNo=${i}&pageSize=10">${i}</a>
                  </c:if>
                </c:forEach>
              </c:when>
              <c:when test="${requestScope.pageTotal>5}">
                <c:choose>
                  <c:when test="${requestScope.pageNo<3}">
                    <c:forEach begin="1" end="5" var="i">
                      <c:if test="${i==requestScope.pageNo}">
                        <a href="/employees?action=page&pageNo=${i}&pageSize=10">[${requestScope.pageNo}]</a>
                      </c:if>
                      <c:if test="${i!=requestScope.pageNo}">
                        <a href="/employees?action=page&pageNo=${i}&pageSize=10">${i}</a>
                      </c:if>
                    </c:forEach>
                  </c:when>
                  <c:when test="${requestScope.pageNo>=requestScope.pageTotal-3}">
                    <c:forEach begin="${requestScope.pageTotal-4}" end="${requestScope.pageTotal}" var="i">
                      <c:if test="${i==requestScope.pageNo}">
                        <a href="/employees?action=page&pageNo=${i}&pageSize=10">[${requestScope.pageNo}]</a>
                      </c:if>
                      <c:if test="${i!=requestScope.pageNo}">
                        <a href="/employees?action=page&pageNo=${i}&pageSize=10">${i}</a>
                      </c:if>
                    </c:forEach>
                  </c:when>
                </c:choose>
              </c:when>
              <c:otherwise>
                <c:forEach begin="${requestScope.pageNo-2}" end="${requestScope.pageNo+2}" var="i">
                  <c:if test="${i==requestScope.pageNo}">
                    <a href="/employees?action=page&pageNo=${i}&pageSize=10">[${requestScope.pageNo}]</a>
                  </c:if>
                  <c:if test="${i!=requestScope.pageNo}">
                    <a href="/employees?action=page&pageNo=${i}&pageSize=10">${i}</a>
                  </c:if>
                </c:forEach>
              </c:otherwise>
            </c:choose>
<%--            <a href="#">3</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">5</a>--%>
          </span></button></td>
          <td><span class="layui-btn " id="next">下一页<a class=" layui-icon layui-icon-right" href="/employees?action=page&pageNo=${requestScope.pageNo+1}&pageSize=10" style="color: white" id="next_a"></a></span></td>
          <td><a type="button" class="layui-btn layui-btn-primary" href="/employees?action=page&pageNo=${requestScope.pageTotal}&pageSize=10">末页</a></td>
          <td><button class="layui-btn " style="background: white"><span  style="color: black">共${requestScope.pageTotal}页,${requestScope.pageTotalCount}条记录</span></button></td>
          <td><button class="layui-btn" style="background: white" ><span style="color: #0C0C0C">到第</span><input type="text" class="layui-input-inline" style="width: 50px" name="pageGo" id="page_input"><span style="color: #0C0C0C">页</span></button></td>
          <td><button type="button" class="layui-btn" id="searchPageBtn"><input type="button" value="确定" style="width: 66px;background: #009688;color: white;border: none"></button></td>
        </div>
      </tr>
      </tbody>
    </table>
  </div>

  <div class="layui-footer">
    <!-- 底部固定区域 -->
    底部固定区域
  </div>
</div>
<script>
  //JS
  layui.use(['element', 'layer', 'util'], function(){
    var element = layui.element
            ,layer = layui.layer
            ,util = layui.util
            ,$ = layui.$;

    //头部事件
    util.event('lay-header-event', {
      //左侧菜单事件
      menuLeft: function(othis){
        layer.msg('展开左侧菜单的操作', {icon: 0});
      }
      ,menuRight: function(){
        layer.open({
          type: 1
          ,content: '<div style="padding: 15px;">处理右侧面板的操作</div>'
          ,area: ['260px', '100%']
          ,offset: 'rt' //右上角
          ,anim: 5
          ,shadeClose: true
        });
      }
    });

    window.onload=function () {
      var pageNo='${requestScope.pageNo}';
      var pageTotal='${requestScope.pageTotal}';
      if(pageNo==1)
      {
        document.getElementById("last").className="layui-btn-disabled layui-icon layui-icon-left";
      }
      if(pageNo==pageTotal)
      {
        document.getElementById("next").className="layui-btn-disabled";
      }
    }

    $(function () {
      $("#searchPageBtn").click(function () {
        var pageCode = $("#page_input").val();
        var pageTotal='${requestScope.pageTotal}';
        if(pageCode>=1&&pageCode<=pageTotal) {
          location.href = "<%=basePath%>employees?action=page&pageNo=" + pageCode + "&pageSize=10"
        }
        else
        {
          alert("请输入正确的页码");
        }
      })
    })
  });
</script>
<script type="text/javascript">
  $(function () {
    $("a.deleteClass").click(function () {
      return confirm("你确定要删除"+$(this).parent().parent().find("td:first").text()+"?");
    })
  })
</script>
</body>
</html>