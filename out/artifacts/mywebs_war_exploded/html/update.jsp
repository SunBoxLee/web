<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>管理系统后台 - Layui</title>
    <link rel="stylesheet" href="../layui/css/layui.css">
    <style>
        #link a:hover{
            color: white;
        }
    </style>
    <script src="../layui/layui.js"></script>
    <script src="../jQ/jquery-1.7.2.js"></script>

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
                <a href="../login.jsp">Sign out</a>
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
                    <a class="" href="manager.jsp;">档案管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="add.jsp">员工信息录入</a></dd>
                        <dd><a href="select.jsp">员工信息查询</a></dd>
                        <dd><a href="query.jsp">显示所有档案信息</a></dd>
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
        <div style="padding: 15px"></div>
        <form class="layui-form" action="/employees" method="post">
            <input type="hidden" name="action" value="update">
            <div class="layui-form-item">
                <label class="layui-form-label">姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="name" required  lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input" value="${requestScope.employee.name}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">电话</label>
                <div class="layui-input-block">
                    <input type="text" name="phone" id="phonenumber" required  lay-verify="required" placeholder="请输入手机号" autocomplete="off" class="layui-input" value="${requestScope.employee.phone}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">部门</label>
                <div class="layui-input-block">
                    <input type="text" name="department" required  lay-verify="required" placeholder="请输入所在部门" autocomplete="off" class="layui-input" value="${requestScope.employee.department}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">工资</label>
                <div class="layui-input-block">
                    <input type="text" name="salary" required  lay-verify="required" placeholder="请输入员工当月基础薪资" autocomplete="off" class="layui-input" value="${requestScope.employee.salary}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">用户名</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required  lay-verify="required" placeholder="请输入员工社区账号" autocomplete="off" class="layui-input" value="${requestScope.employee.username}">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">单选框</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="男" title="男">
                    <input type="radio" name="sex" value="女" title="女" checked>
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">文本域</label>
                <div class="layui-input-block">
                    <textarea name="desc" placeholder="请输入内容" class="layui-textarea"></textarea>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button id="submit" class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
        <div style="width: 300px;text-align: center;color: red"><span id="error"></span></div>
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

    });
</script>
<script type="text/javascript">
    $(function () {
        $("#submit").click(function () {
            var phone = $("#phonenumber").val();
            var phonePatt=/^1[3|4|5|7|8][0-9]{9}$/;
            if(!phonePatt.test(phone))
            {
                $("#error").text("手机号码格式不正确!");
                return false;
            }
        })
    });
</script>
</body>
</html>