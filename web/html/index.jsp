<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <!--<meta name="viewport" content="width=device-width, initial-scale=1.0">-->
  <meta content="initial-scale=0.1,user-scalable=yes, width=device-width" name="viewport">
  <!--<meta content="initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no, width=device-width" name="viewport">-->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="baidu-site-verification" content="LVYknAXnzI" />
  <title>Creator职工社区</title>
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
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>
  <meta name="applicable-device" content="pc,mobile">
  <meta property="og:image" content="http://www.hrmxpress.cn/logo.png"/>
  <meta href="https://www.hrmxpress.cn/" rel="canonical">
  <meta name="mobile-agent" content="format=html;url=http://m.ihr360.com/"/>
  <!-- Bootstrap -->
<!--  <link rel="stylesheet" href="/public/templets/jiakang/css/bootstrap.min.css">-->
<!--  <link rel="stylesheet" href="/public/templets/jiakang/css/bootstrap-theme.min.css">-->
  <link type="text/css" rel="stylesheet" href="css/index.css"/>
  <link type="text/css" rel="stylesheet" href="css/css.css"/>
  <script src="/jQ/jquery-1.7.2.js"></script>
</head>
<body>
<!--焦点图-->
<link href="/public/templets/jiakang/css/bootstrap-touch-slider.css" rel="stylesheet" media="all">
<script src="/public/templets/jiakang/js/bootstrap.min.js"></script>
<script src="/public/templets/jiakang/js/jquery.touchSwipe.min.js"></script>
<script src="/public/templets/jiakang/js/bootstrap-touch-slider.js"></script>
<link rel="stylesheet" type="text/css" href="/public/templets/jiakang/css/swiper.min.css"/>
<!-- 图片滚动 -->
<link href="../css/roll.css" type="text/css" rel="stylesheet"/>
<link href="/public/templets/jiakang/css/owl.theme.css" type="text/css" rel="stylesheet"/>
<!-- 图片滚动 -->
<script type="text/javascript" src="/public/templets/jiakang/js/owl.carousel.js"></script>
<link rel="stylesheet" href="/public/templets/jiakang/css/index.css">
<div class="sy0">
  <style>
    .menu li {margin-left: 32px;}
    .menu li .txtk {/*display: block;*/}
    .menu li .txtk .d3 {width: 300px;float: left;padding-top: 38px;padding-left: 62px;}
    .menu li .txtk .d3 h1 {width: 100%;float: left;font-size: 21px;color: #333333;line-height: normal;padding-bottom: 12px;border-bottom: solid 1px #dddddd;font-weight: bold;}
    .menu li .txtk .d3 dl {width: 100%;float: left;}
    .menu li .txtk .d3 dd {float: left;width: 100%;height: 50px;line-height: 50px;font-size: 16px;}
    .menu li .txtk .d3 dd a {display: block;width: 100%;height: 50px;/*background: url(../images/nav_jt.png) right no-repeat;*/}
    .menu li .txtk .d3 dd a:hover {/*background: url(../images/nav_jt_.png) right no-repeat;*/}
    .menu li .txtk .d2 span {width: 100%;float: left;font-size: 21px;color: #333333;line-height: normal;padding-bottom: 12px;border-bottom: solid 1px #dddddd;font-weight: bold;}
    .menu li a.dbta{background: url(/public/templets/jiakang/images/icon_index_w.png);background-size: 100% 100%;width: 38px;height: 38px;line-height: 33px;margin-top: 23px;}
    .menu li a.new_on{background: url(/public/templets/jiakang/images/icon_index_b.png);background-size: 100% 100%;width: 38px;height: 38px;line-height: 33px;margin-top: 23px;}
    .menu li a.dbta:hover{background: url(/public/templets/jiakang/images/icon_index_b.png);background-size: 100% 100%; }
    .logo{width:120px;margin-top: 7px;}
    #logo{color: #f2f2f2;}
    #logo:hover{color:#53bebd;}
    .logo img {width: 120px;height: 45px;}
    .menu li {margin-left: 9px;}
  </style>
  <div class="top1">
    <div class="main">
      <ul class="menu">
        <li><a href="http://www.hrmxpress.cn" class="dbt dbta new_on"></a></li>
        <li><a class="dbt hot" style="color:#ffc805;" href="/ihr2/">最新版本</a></li>
        <li><a class="dbt" href="/salary/" title="薪资计算">薪资计算</a></li><li><a class="dbt" href="/file/" title="智能档案">智能档案</a></li><li><a class="dbt" href="/attendance/" title="考勤排班">考勤排班</a></li><li><a class="dbt" href="/html/download.jsp" title="">下载</a></li>
        <li>
<!--          <a class="dbt" href="/function/">功能</a>-->
          <div class="txtk">
            <div class="main">
              <div class="d1"><img src="/attachment/202003/gnnav.png"/></div>
              <div class="d2"> <span>功能</span>
                <dl>
                  <dd id="new_dd"><a href="/function/renshiguanli/">人事管理</a></dd>
                  <dd><a href="/cmsmanger/plus/list.php?tid=15">智能档案</a></dd><dd><a href="/cmsmanger/plus/list.php?tid=16">考勤排班</a></dd><dd><a href="/cmsmanger/plus/list.php?tid=17">薪资计算</a></dd><dd><a href="/function/zhaopinguanli/">招聘管理</a></dd><dd><a href="/function/jixiaoguanli/">绩效管理</a></dd><dd><a href="/function/yidongbangong/">移动办公</a></dd><dd><a href="/function/yuangongzizhuAPP/">员工自助APP</a></dd>
                </dl>
              </div>
              <div class="d3" style="display: none;">
                <dl>
                  <dd><a href="/function/renshiguanli/#name">员工花名册</a></dd>
                  <dd><a href="/function/renshiguanli/#mange">招聘管理</a></dd>
                  <dd><a href="/function/renshiguanli/#performance">绩效考核</a></dd>
                  <dd><a href="/function/renshiguanli/#pay">薪资福利</a></dd>
                  <dd><a href="/function/renshiguanli/#develop">绩效发展</a></dd>
                </dl>
              </div>
              <div class="clear"></div>
            </div>
          </div>
        </li>
        <li><a class="dbt" href="/html/upload.jsp">上传</a></li>
        <li class=''>
          <a class="dbt"  href="/case/">案例</a>
          <div class="txtk">
            <div class="main">
              <div class="d1"></div>
              <div class="d2"><span>案例</span>
                <dl>
                  <dd><a href='/case/'>行业</a></dd><dd><a href='/case/anli/'>案例</a></dd>
                </dl>
              </div>
              <div class="clear"></div>
            </div>
          </div>
        </li><li class=''>
        <a class="dbt"  href="/video/">资源中心</a>
        <div class="txtk">
          <div class="main">
            <div class="d1"></div>
            <div class="d2"><span>资源中心</span>
              <dl>
                <dd><a href='/video/'>视频中心</a></dd><dd><a href='/tool/zhengcefagui/'>政策法规</a></dd><dd><a href='/tool/ques/youguanirenshi/'>常见Q&A</a></dd><dd><a href='/tool/HRzhishiku/'>HR知识库</a></dd><dd><a href='/tool/HRgongjuxiazai/'>HR工具下载</a></dd>
              </dl>
            </div>
            <div class="clear"></div>
          </div>
        </div>
      </li><li class=''>
        <a class="dbt"  href="/about/">关于我们</a>
        <div class="txtk">
          <div class="main">
            <div class="d1"></div>
            <div class="d2"><span>关于我们</span>
              <dl>
                <a href='/about/huodongzhongxin/'>活动中心</a></dd><dd><a href='/contact/'>联系我们</a></dd>
              </dl>
            </div>
            <div class="clear"></div>
          </div>
        </div>
      </li>
        <!-- <li><a class="dbt" href="/offer/">报价</a></li>   -->
      </ul>
    </div>
  </div>
  <div id="menu_bj"></div>
  <script>
    $(function () {
      $('#new_dd').hover(function () {
        $(".d3").show();
      },function () {
        $(".d3").hide();
      })

      $('.d3').hover(function () {
        $(this).show();
      },function () {
        $(this).hide();
      })

    })
  </script>
  <div id="bootstrap-touch-slider" class="carousel bs-slider fade  control-round indicators-line" data-ride="carousel"   data-interval="3000">
    <ol class="carousel-indicators">
      <li data-target="#bootstrap-touch-slider" data-slide-to="0"   class="active"></li>

      <li data-target="#bootstrap-touch-slider" data-slide-to="1" ></li>
      <li data-target="#bootstrap-touch-slider" data-slide-to="2" ></li>
      <li data-target="#bootstrap-touch-slider" data-slide-to="3" ></li>
      <li data-target="#bootstrap-touch-slider" data-slide-to="4" ></li>
      <li data-target="#bootstrap-touch-slider" data-slide-to="5" ></li>

    </ol>
    <!-- Wrapper For Slides -->
    <div class="carousel-inner" role="listbox" background="/images/m_bj_03.png">
      <div class="item active">
        <div style="cursor:pointer" onclick="window.location='https://www.ihr360.com/web/page/login';">
          <a href="/archives/3869.html"><img src="/attachment/202009/5926920200Z31IR3_88FE3DFCB94512B8EA32D52AF584621A.jpg" alt="" class="slide-image"/></a>
          <a href="/archives/3869.html"><div class="bs-slider-overlay"  style=" background: none;" ></div></a>
          <div class="slide-text slide_style_left">
                    <span class="s1" data-animation="animated fadeInLeft">
                        <p class="p_1"><a style="color: inherit;" href="/archives/3869.html"></a></p>
                        <p class="p_2"></p>
                        <p class="p_3"></p>
                    </span>
            <a href="/archives/3869.html"> <span class="s2" data-animation="animated fadeInRight" style="animation-delay: 1s;"><img src=""></span></a>
          </div>
        </div>
      </div>

      <div class="item ">
        <div style="cursor:pointer" onclick="window.location='https://www.ihr360.com/web/page/login';">
          <a href="/archives/3870.html"><img src="/attachment/202009/5926920200Z31I923_A8EB0D8EF0F57FDC831871A342F32009.jpg" alt="" class="slide-image"/></a>
          <a href="/archives/3870.html"><div class="bs-slider-overlay"  style=" background: none;" ></div></a>
          <div class="slide-text slide_style_left">
                    <span class="s1" data-animation="animated fadeInLeft">
                        <p class="p_1"><a style="color: inherit;" href="/archives/3870.html"></a></p>
                        <p class="p_2"></p>
                        <p class="p_3"></p>
                    </span>
            <a href="/archives/3870.html"> <span class="s2" data-animation="animated fadeInRight" style="animation-delay: 1s;"><img src=""></span></a>
          </div>
        </div>
      </div>
      <div class="item ">
        <div style="cursor:pointer" onclick="window.location='https://www.ihr360.com/web/page/login';">
          <a href="/archives/3871.html"><img src="/attachment/202003/592692020032G50432_6E41836E7A8903DD7973D29F4B80A6FE.jpg" alt="" class="slide-image"/></a>
          <a href="/archives/3871.html"><div class="bs-slider-overlay"  style=" background: none;" ></div></a>
          <div class="slide-text slide_style_left">
                    <span class="s1" data-animation="animated fadeInLeft">
                        <p class="p_1"><a style="color: inherit;" href="/archives/3871.html"></a></p>
                        <p class="p_2"></p>
                        <p class="p_3"></p>
                    </span>
            <a href="/archives/3871.html"> <span class="s2" data-animation="animated fadeInRight" style="animation-delay: 1s;"><img src=""></span></a>
          </div>
        </div>
      </div>
      <div class="item ">
        <div style="cursor:pointer" onclick="window.location='https://www.ihr360.com/web/page/login';">
          <a href="/archives/3872.html"><img src="/attachment/202003/592692020032G53032_B96E2023C57CD7E7396A61E1C0E0F987.jpg" alt="" class="slide-image"/></a>
          <a href="/archives/3872.html"><div class="bs-slider-overlay"  style=" background: none;" ></div></a>
          <div class="slide-text slide_style_left">
                    <span class="s1" data-animation="animated fadeInLeft">
                        <p class="p_2"></p>
                        <p class="p_3"></p>
                    </span>
          </div>
        </div>
      </div>
      <div class="item ">
        <div style="cursor:pointer" onclick="window.location='https://www.ihr360.com/web/page/login';">
          <a href="/archives/3873.html"><img src="/attachment/202003/592692020032G53140_F81CD05F52AE8F8D9DF2DB16F4666000.png" alt="" class="slide-image"/></a>
          <a href="/archives/3873.html"><div class="bs-slider-overlay"  style=" background: none;" ></div></a>
          <div class="slide-text slide_style_left">
          </div>
        </div>
      </div>
      <div class="item ">
        <div style="cursor:pointer" onclick="window.location='https://www.ihr360.com/web/page/login';">
          <a href="/archives/3926.html"><img src="/attachment/202009/5926920200Z31J126_B3EC449367A9EFA370A839EF20E65E2F.jpg" alt="" class="slide-image"/></a>
          <a href="/archives/3926.html"><div class="bs-slider-overlay"  style=" background: none;" ></div></a>
          <div class="slide-text slide_style_left">
                    <span class="s1" data-animation="animated fadeInLeft">
                        <p class="p_1"><a style="color: inherit;" href="/archives/3926.html"></a></p>
                        <p class="p_2"></p>
                        <p class="p_3"></p>
                    </span>
            <a href="/archives/3926.html"> <span class="s2" data-animation="animated fadeInRight" style="animation-delay: 1s;"><img src=""></span></a>
          </div>
        </div>
      </div>

    </div>
    <a class="ban_jt1 carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="prev"></a>
    <a class="ban_jt2 carousel-control" href="#bootstrap-touch-slider" role="button" data-slide="next"></a>
  </div>
  <div class="clear"></div>
</div>
<style>
  .sy1 {
    width: 100%;
    background: none;
    background-size: 100% 100%;
    position: relative;
  }
  .sy0 {
    width: 100%;
    background: #0ccbc5;
    /*background: #efefef;*/
  }
  .sy0 .al_bt {
    margin: 42px 0px 33px 0px;
  }
  .main_inner{float: left;width: 48%;}.main_inner:nth-of-type(2) {margin-left: 27px;}
  .main_inner .sy_lm22 ul {
    float: left;
    width: 590px;
    margin-bottom: 29px;
  }
  .main_inner .sy_lm22 ul li:nth-of-type(3){
    margin-top: 6px;}
  .main_inner:nth-of-type(1) .sy_lm22 ul{
    border-right: 1px dashed #aeaeae;}

  .main_inner .sy_lm22 ul li div{
    display: none;
    padding-top: 0;
    padding-left: 20px;
    color: #a9a9a9;
    font-size: 16px;
    line-height: 24px;
    position: relative;
    overflow: hidden;
    padding: 8px 19px;}
  .main_inner .sy_lm22 ul li a{
    padding-top: 0px;
    padding-left: 20px;
    color: #404040;
    font-size: 18px;
    line-height: 30px;
    position: relative;
    overflow: hidden;}
  .main_inner .sy_lm22 ul li a:hover{
    color: #52bebc;
  }
  .main_inner .sy_lm22 ul li a:before{
    content: "";
    width: 5px;
    height: 5px;
    border-radius:50%;
    background-color: #52bebc;
    display: inline-block;
    position: absolute;
    top: 50%;
    margin-top: -2.5px;
    left: 0;
  }.more_div{
     width: 100%;
     padding-bottom: 26px;
     /*text-align: right;*/
     /*padding-right: 21px;*/
   }.more_div a{
      color: #52bebc;
    }
  .media_a{float: left;    margin-left: 504px;}
  .product_a{float: right;    margin-right: 56px;}
</style>

<!-- kv下横条内容  add 2018.5.12 -->
<style>
  .cj1_bottom {
    width: 100%;
    text-align: center;
    background: #000;
    /*position: absolute;*/
    bottom: 0px;
  }
  .cj1_bottom p{
    color: white;
    font-size: 17px;
    /* font-weight: bold; */
    line-height: normal;
    padding: 14px;
  }
</style>

<!-- <div class="cj1_bottom">
   <p class="p_22"><span style="color: #eda953;">2810</span> 次产品改进：上线 <span style="color: #eda953;">535</span> 天，每周保持迭代版本，共更新 <span style="color: #eda953;">152</span> 次版本，新增 <span style="color: #eda953;">9523 </span>项功能，优化 <span style="color: #eda953;">1405</span> 项功能，修复 <span style="color: #eda953;">406</span> 处问题</p>
</div> -->
<!-- end kv下横条内容 -->
<div class="sy1">
  <div class="main">
    <ul class="sy_lm1 wow fadeInUp">
      <li>
        <a href="/file/"  class="on"  rid="0" ><i class="i1"></i><br><p>员工花名册</p></a>
        <style>
          .sy_lm1 i.i1 {background: url(/images/rs.png) no-repeat;}
          .sy_lm1 a.on i.i1 {background: url("")) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/attendance/"  rid="1" ><i class="i2"></i><br><p>考勤排班</p></a>
        <style>
          .sy_lm1 i.i2 {background: url(/public/templets/jiakang/images/icon/icon6.png) no-repeat;}
          .sy_lm1 a.on i.i2 {background: url(/public/templets/jiakang/images/icon/icon6-1.png) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/salary/"  rid="2" ><i class="i3"></i><br><p>薪资计算</p></a>
        <style>
          .sy_lm1 i.i3 {background: url(/public/templets/jiakang/images/icon/icon4.png) no-repeat;}
          .sy_lm1 a.on i.i3 {background: url(/public/templets/jiakang/images/icon/icon4-1.png) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/function/zhaopinguanli/"  rid="3" ><i class="i4"></i><br><p>招聘管理</p></a>
        <style>
          .sy_lm1 i.i4 {background: url(/public/templets/jiakang/images/icon/icon2.png) no-repeat;}
          .sy_lm1 a.on i.i4 {background: url(/public/templets/jiakang/images/icon/icon2-1.png) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/function/jixiaoguanli/"  rid="4" ><i class="i5"></i><br><p>绩效考核</p></a>
        <style>
          .sy_lm1 i.i5 {background: url(/public/templets/jiakang/images/icon/icon3.png) no-repeat;}
          .sy_lm1 a.on i.i5 {background: url(/public/templets/jiakang/images/icon/icon3-1.png) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/function/renshiguanli/#develop"  rid="5" ><i class="i6"></i><br><p>培训发展</p></a>
        <style>
          .sy_lm1 i.i6 {background: url(/public/templets/jiakang/images/icon/icon5.png) no-repeat;}
          .sy_lm1 a.on i.i6 {background: url(/public/templets/jiakang/images/icon/icon5-1.png) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/function/yidongbangong/"  rid="6" ><i class="i7"></i><br><p>移动办公</p></a>
        <style>
          .sy_lm1 i.i7 {background: url(/public/templets/jiakang/images/icon/icon7.png) no-repeat;}
          .sy_lm1 a.on i.i7 {background: url(/public/templets/jiakang/images/icon/icon7-1.png) no-repeat;}
        </style>
      </li>
      <li>
        <a href="/function/yuangongzizhuAPP/"  rid="7" ><i class="i8"></i><br><p>员工自助</p></a>
        <style>
          .sy_lm1 i.i8 {background: url(/public/templets/jiakang/images/icon/icon8.png) no-repeat;}
          .sy_lm1 a.on i.i8 {background: url(/public/templets/jiakang/images/icon/icon8-1.png) no-repeat;}
        </style>
      </li>
    </ul>
    <div class="sy_nr1">
      <div class="txtk wow fadeInLeft">
            <span class="s_txt"  style="display:block;" >
                <h2>员工花名册</h2>
                <p>企业档案信息一站式管理<br />打通员工入离职信息管理全流程</p>
                <a href="/file/" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>考勤排班</h2>
                <p>直击考勤排班痛点<br />解决考勤数据汇总难</p>
                <a href="/attendance/" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>薪资计算</h2>
                <p>自动关联考勤，同步匹配税务、社保、绩效、假勤.....</p>
                <a href="/salary/" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>招聘管理</h2>
                <p>从收简历、安排面试到录用，一个平台搞定招聘工作流</p>
                <a href="/function/zhaopinguanli/" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>绩效考核</h2>
                <p>手机端完成自评他评，及时考核不拖延</p>
                <a href="/function/jixiaoguanli/" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>培训发展</h2>
                <p>培训从线下搬到线上，员工随时随地学习<br />企业节省成本</p>
                <a href="/function/renshiguanli/#develop" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>移动办公</h2>
                <p>企业协同（OA）让公司内部管理有秩序   <br />沟通无障碍</p>
                <a href="/function/yidongbangong/" class="cd_a_lan">了解更多<i></i></a>
            </span>
        <span class="s_txt" >
                <h2>员工自助</h2>
                <p>外出移动互联，办公室内PC端登录端<br />公司与你随时相伴</p>
                <a href="/function/yuangongzizhuAPP/" class="cd_a_lan">了解更多<i></i></a>
            </span>
      </div>
      <div class="imgk wow fadeInRight">
        <div class="sy_pic">
          <ul>
            <li><img src="../images/rs.png" alt="员工花名册软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/kaoqinpaiban.png" alt="考勤排班软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/xinzijisuan.png" alt="薪资计算软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/zhaopinguanli.png" alt="招聘管理软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/jixiaokaohe.png" alt="绩效考核软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/peixun.png" alt="培训发展软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/yidongbang.png" alt="移动办公软件系统"></li>
            <li><img src="/public/templets/jiakang/images/icon/yuangognzihu.png" alt="员工自助软件系统"></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</div>
<div class="sy0">
  <div class="main">
    <div class="main_inner">
<!--      <div class="al_bt wow fadeInUp"><span class="s1"><a>媒体报道</a></span></div>-->

      <div class="sy_lm22 wow fadeInUp">
      </div>
      <div class="clear"></div>
    </div>
    <div class="main_inner">
      <div class="sy_lm22 wow fadeInUp">
      </div>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
    <div class="more_div">
      <div class="clear"></div>
    </div>
  </div>
</div>

<!--video-->
<div class="sy2" style="width:100%; background:url(../images/m_bj_03.png) top center no-repeat; background-size:100% 100%;">
  <div class="main" style="position: relative;">
    <div class="al_bt wow fadeInUp"><span class="s1"><b style="color: white">视频中心</b>Video Center</span></div>

    <div class="index_hangye4">
      <div class="swiper-container swiper-container2">
        <div class="swiper-wrapper ">
          <div class='swiper-slide red-slide pd1'>
            <i onclick="location.href='/archives/3900.html'"></i>
            <div class="index_hangye5">
              <div class="index_hangye6">HR如何拥抱人工智能</div>
              <div class="index_hangye7"></div>
              <div class="index_hangye8"><a href="<a href='/video/'>有关i人事</a>">查看视频</a></div>
            </div>
          </div>
          <div class='swiper-slide red-slide pd1'>
            <i onclick="location.href='/archives/3899.html'"></i>
          </div>
          <div class='swiper-slide red-slide pd1'>
            <i onclick="location.href='/archives/3898.html'"></i>
            <div class="index_hangye5">
              <div class="index_hangye6">预测新零售未来用工模式</div>
              <div class="index_hangye7"></div>
              <div class="index_hangye8"><a href="<a href='/video/'>有关i人事</a>">查看视频</a></div>
            </div>
          </div>

        </div>
        <div class="swiper-button-prev btn_left2"></div>
        <div class="swiper-button-next btn_right2"></div>
      </div>
    </div>
  </div>
</div>
<!--/video-->
<div class="foot3 wow fadeInUp"></div>
<script type="text/javascript">
  //左右滚动
  $(document).ready(function () {
    $("#owl-demo1").owlCarousel({
      items: 5,
      lazyLoad: true,
      navigation: true,
      pagination: true,
      autoPlay: true,
      itemsMobile: [450, 2],
      itemsTablet: [650, 3],
      itemsDesktopSmall: [900, 5],
      itemsDesktop: [1199, 5],
    });

    $('#owl-demo1 .item img').hover(function () {

      $(this).attr('src',$(this).attr('src_h'));

    },function () {
      $(this).attr('src', $(this).attr('src_s'));

    })

    $('.sy_lm4 li img').hover(function () {

      $(this).attr('src',$(this).attr('src_h'));

    },function () {
      $(this).attr('src', $(this).attr('src_s'));

    })

// 媒体报道，版本更新
    /*  $('.main_inner .sy_lm22 ul li').hover(function(){
      var index=$(this).index();

      $(this).siblings('li').find(".slide_div").stop().slideUp();
      $(this).find('.slide_div').slideDown();


},function(){

})*/


  });
</script>
<script type="text/javascript">

  $(document).ready(function () {


//选项卡
    $(".sy_lm1 li").mouseover(function () {
      var rid = $(this).find("a").attr("rid");
      $(this).find("a").addClass("on");
      $(this).siblings().find("a").removeClass("on");
      var index = $(this).index();
//            $(".sy_pic").find("ul").stop().animate({left: -750 * rid + 'px'}, 800);
      var left= -750 * rid + 'px';
      $(".sy_pic").find("ul").css('left',left);
      $(".sy_nr1").find(".s_txt").hide().eq(
 //         index).show();
    });

  });
</script>


<script type="text/javascript">
  //焦点图
  $('#bootstrap-touch-slider').bsTouchSlider();
</script>
<!--右侧客服-->
<style>
  #kf{
    height: 380px;
    background-size: 100% 100%;
    margin-top: -192px;
    z-index: 1900;
  }
  #kf li a.a0 {
    float: left;
    margin-left: 15px;
  }

  #kf li a.a0 {
    background: url(/public/templets/jiakang/images/icon_home_w.png) no-repeat;
    background-size: 100% 100%;
    width: 55px;
    height: 56px;
    display: block;
  }

  #kf li a.a0:hover, #kf li:hover a.a0 {
    background: url(/public/templets/jiakang/images/icon_home_b.png) no-repeat;
    background-size: 100% 100%;
  }

  #kf li.l0 .txtk {
    width: 200px;
    text-align: center;
    font-size: 12px;
    margin-top: -34px;
  }

  #kf li.l0 span {
    font-size: 16px;
    padding-bottom: 5px;
  }

  #kf span {
    display: block;
    color: #14abb3;
    font-weight: bold;
  }
</style>
<div id="kf">
  <ul>
    <li class="l0"><a href="http://www.hrmxpress.cn" class="a0"></a>
      <div class="txtk"><i></i>
        <span style="cursor: pointer;" onclick="location.href='http://www.hrmxpress.cn'">首页</span>
      </div>
    </li>
    <li class="l3"><a class="a3"></a>
      <div class="txtk"><i></i>
        <span>400-806-2822</span>
        <p>(售前：工作日9:00-18:00)</p></div>
    </li>
    <li class="l2"><a class="a2"></a>
      <div class="txtk"><i></i>
        <span>QQ:800801035</span>
        <p>(售后咨询：工作日 9:00-18:00)<br>(售前咨询：工作日 9:00-18:00)</p></div>
    </li>
    <li class="l1"><a class="a1"></a>
      <div class="txtk"><i></i><img src="/public/templets/jiakang/images/kf_ewm.jpg">
        <p>微信号：irenshi360<br>扫码关注获得更多支持</p></div>
    </li>

    <li><a href="/down/" class="a4"></a></li>
  </ul>
</div>
<div class="foot3" >
  </a>
</div>
<div class="foot2">
  <div class="main">
    <div class="link_lb">
      <span class="s1">友情链接：</span>
    </div>
    <div class="clear"></div>
  </div>
</div>
<style>
  .cd_f2 {
    float: left;
    width: 100%;
    line-height: 30px;
  }

  .foot .f1{
    width: 100%;
  }
  .cd_f {
    margin-left:0px;
  }
  .cd_f a {margin: 0px}

  .cd_f2 li {
    float: left;
    /*width: 14.2857%;*/
    width:9%;
  }
</style>
<div class="foot">
  <div class="main">
    <div class="f1">
      <div class="cd_f">
        <ul class="cd_f2">
          <li>
            <a href="/ihr2/" class="dbt" style="color: #ffffff;">最新版本</a>
            <p>

            </p>
          </li><li>
          <a href="/salary/" class="dbt" style="color: #ffffff;">薪资计算</a>
          <p>

          </p>
        </li><li>
          <a href="/file/" class="dbt" style="color: #ffffff;">智能档案</a>
          <p>

          </p>
        </li><li>
          <a href="/attendance/" class="dbt" style="color: #ffffff;">考勤排班</a>
        </li><li>
          <a href="http://localhost:8080/mywebs/web/html/upload.html" class="dbt" style="color: #ffffff;">上传</a>
          <p>

          </p>
        </li><li>
<!--          <a href="/function/" class="dbt" style="color: #ffffff;">功能</a>-->
          <p>
            <a href='/function/renshiguanli/'>人事管理</a><br/><a href='/cmsmanger/plus/list.php?tid=15'>智能档案</a><br/><a href='/cmsmanger/plus/list.php?tid=16'>考勤排班</a><br/><a href='/cmsmanger/plus/list.php?tid=17'>薪资计算</a><br/><a href='/function/zhaopinguanli/'>招聘管理</a><br/><a href='/function/jixiaoguanli/'>绩效管理</a><br/><a href='/function/yidongbangong/'>移动办公</a><br/><a href='/function/yuangongzizhuAPP/'>员工自助APP</a><br/>
          </p>
        </li><li>
          <a href="/down/" class="dbt" style="color: #ffffff;">下载</a>
          <p>
          </p>
        </li><li>
          <a href="/case/" class="dbt" style="color: #ffffff;">案例</a>
          <p>
            <a href='/case/'>行业</a><br/><a href='/case/anli/'>案例</a><br/>
          </p>
        </li><li>
          <a href="/video/" class="dbt" style="color: #ffffff;">资源中心</a>
          <p>
            <a href='/video/'>视频中心</a><br/><a href='/tool/zhengcefagui/'>政策法规</a><br/><a href='/tool/ques/youguanirenshi/'>常见Q&A</a><br/><a href='/tool/HRzhishiku/'>HR知识库</a><br/><a href='/tool/HRgongjuxiazai/'>HR工具下载</a><br/>
          </p>
        </li><li>
          <a href="/about/" class="dbt" style="color: #ffffff;">关于我们</a>
          <p>
            <a href='/about/huodongzhongxin/'>活动中心</a><br/><a href='/contact/'>联系我们</a><br/>
          </p>
        </li>
        </ul>
      </div>
      <div class="fnr">Copyright © xxxxxxxxxx<a href="#" rel="nofollow" target="_blank" >浙ICP备16377917号-3<a/></div>
      <div class="fx"></div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<script type="text/javascript">
  jQuery(document).ready(function () {
//        var pk = document.body.clientWidth;
    jQuery(window).scroll(function(){

      if (jQuery(window).scrollTop() > 698) {
        $('.kq_nav').css('position','fixed');
        $('.kq_nav').css('top','0px');
        $('.kq_nav').css('z-index',1000);

      }else {
        $('.kq_nav').css('position', 'relative');

      }

      if (jQuery(window).scrollTop() > 128) {
        $('.top1').css('position','fixed');
        $('.top1').css('background', '#121415');


      }else {
//                $('.sy0 .top1').css('background', 'none');
        $('.top1').css('position', '');

      }

    })


  })

</script>

<script type="text/javascript" src="/public/templets/jiakang/js/wow.js"></script>
<!--<script src="/public/templets/jiakang/js/jquery-1.11.0.js" type="text/javascript" charset="utf-8"></script>-->
<script src="/public/templets/jiakang/js/swiper.min.js" type="text/javascript" charset="utf-8"></script>
<script>
  var wow = new WOW({
    boxClass: 'wow',
    animateClass: 'animated',
    offset: 0,
    mobile: true,
    live: true
  });
  wow.init();


  var mySwiper1 = new Swiper('.swiper-container2', {
    direction: 'horizontal',
    slidesPerView: 'auto',
    loopedSlides: 5,
    loop: true,
    // 如果需要前进后退按钮
    nextButton: '.btn_left2',
    prevButton: '.btn_right2',
  })


  //移动
  setInterval(function () {
    var top4 = $('.swiper-container2').offset().top;
    var topsss = $(document).scrollTop() + 600;

    if (topsss > top4) {
      $('.shang2').addClass('shang1');
      $('.xia2').addClass('xia1');
    } else {
      $('.shang2').removeClass('shang1');
      $('.xia2').removeClass('xia1');

    }

  }, 100)

  $(function () {

    if(7==1){
      $('.swiper-wrapper').addClass('nochange');
    }

  })
</script>

<div style="display:none;width:80%;text-align: center;"><span>友情链接：</span>
  <a href="http://www.muli.group/"  title="上海高定家居">上海高定家居</a>

  <a href="http://www.shkk17.com/"  title="冷水机">冷水机</a>
</div>
</body>
</html>