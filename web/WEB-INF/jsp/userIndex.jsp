<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/23
  Time: 9:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8" />
    <title>表白墙-主页</title>
    <link rel="stylesheet" href="/css/button.css">
    <link rel="stylesheet" href="/css/form.css">

    <link rel="stylesheet" href="/css/index3.css" />
    <link id="MainCss" rel="stylesheet" href="/css/index2.css" />
    <link rel="stylesheet" type="text/css" href="https://blog-static.cnblogs.com/files/qinnian/flat-ui.min.css"/>
    <link id="mobile-style" media="only screen and (max-width: 767px)" type="text/css" rel="stylesheet" href="/css/index1.css" />
    <script src="https://common.cnblogs.com/scripts/jquery-2.2.0.min.js"></script>
</head>

<body class="has-navbar">
<a name="top"></a>

<div id="top_nav" class="navbar forpc">
    <nav id="nav_main" class="navbar-main">
        <ul id="nav_left" class="navbar-list navbar-left">
            <li class="navbar-branding"><img src="/assets/img/biaobaiqiang_logo.png" width="80px" height="40px" alt="表白墙Logo" /></li>
            <%--<li><a href="/" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-sitehome')">  </a></li>
            <li><a href="https://news.cnblogs.com/" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-news')">  </a></li>
            <li><a href="https://q.cnblogs.com/" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-q')">  </a></li>
            <li><a id="nav_brandzone" href="https://brands.cnblogs.com/" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-brands')">  </a></li>
            <li><a href="https://ing.cnblogs.com/" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-ing')">  </a></li>
            <li><a href="https://edu.cnblogs.com/" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-edu')">  </a></li>--%>
        </ul>

        <ul id="nav_right" class="navbar-list navbar-right">

            <li><a href="http://localhost:8080/userLogin" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-edu')">登录</a></li>
            <li><a href="http://localhost:8080/userRegister" onclick="ga('send', 'event', 'Link', 'click', 'skin-navbar-edu')">注册</a></li>

        </ul>
    </nav>
</div>


<!--done-->
<div id="home">
    <div id="header">
        <div id="blogTitle">

            <!--done-->
            <h1><a id="Header1_HeaderTitle" class="headermaintitle HeaderMainTitle" href="">${loginUser.username}</a></h1>
            <h2></h2>


        </div><!--end: 标题和副标题 -->
        <div id="navigator">

            <ul id="navList">
                <li><a id="blog_nav_sitehome" class="menu" href="http://localhost:8080/userIndex">首页</a></li>
                <li><a id="blog_nav_myhome" class="menu" href="http://localhost:8080/userHotIndex">热门</a></li>
                <li><a id="blog_nav_newpost" class="menu" href="http://localhost:8080/userAffiche">公告</a></li>
                <li><a id="blog_nav_contact" class="menu" href="http://localhost:8080/userPost">发帖</a></li>
                <li><a id="blog_nav_rss" class="menu" href="http://localhost:8080/userManagement">个人信息</a><li>
                <li><a id="blog_nav_admin" class="menu" href="http://localhost:8080">退出登录</a></li>
            </ul>
            <div class="blogStats">
                <div id="blog_stats_place_holder"><script>loadBlogStats();</script></div>
            </div><!--end: Stats -->
        </div><!--end: navigator 导航栏 -->
    </div><!--end: header 头部 -->


    <div id="main">
        <div id="mainContent">
            <div class="forFlow">

                <c:forEach items="${userNoteList}" var="note">
                    <div class="day">
                        <div class="dayTitle">
                        </div>
                        <div class="postTitle">
                            <a class="postTitle2 vertical-middle" href="">
                                <span>${note.username}:${note.title}</span>
                            </a>
                        </div>
                        <div class="postCon">
                            <div class="c_b_p_desc">
                                    ${note.message}<br/><br/>

                                            <%--<form action="/getComment">
                                                <input type="hidden" name="nid" value="${}"/>
                                                <button type="submit">显示评论</button>
                                            </form>--%>
                                        <%--显示评论--%>
                                        <c:forEach items="${comList}" var="com">
                                            ${com.username}  :  ${com.message}  ${com.insert_time}<br/>
                                        </c:forEach>
                                <form action="/userComment">
                                    <input type="hidden" name="id" value="${note.id}"/>
                                    <button type="submit" >评论</button>
                                </form>
                                <form action="/userIndexDianzan">
                                    <input type="hidden" name="id" value="${note.id}"/>
                                    <button type="submit" >点赞</button>
                                </form>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="postDesc">
                            posted @${note.insert_time}点赞数:${note.likes}
                        </div>
                        <div class="clear">

                        </div>
                    </div>


                </c:forEach>



                <div class="topicListFooter">
                    <div id="nav_next_page">

                    </div>
                </div>



            </div><!--end: forFlow -->
        </div><!--end: mainContent 主体内容容器-->

        <div id="sideBar">
            <div id="sideBarMain">
                <div id="sidebar_news" class="newsItem">
                    <script>loadBlogNews();</script>
                </div>
                <div id="sidebar_c3"></div>
                <div id="blog-calendar" style="display:none"></div><script>loadBlogDefaultCalendar();</script>
                <div id="leftcontentcontainer">
                    <div id="blog-sidecolumn"></div>
                    <script>loadBlogSideColumn();</script>
                </div>
            </div><!--end: sideBarMain -->
        </div><!--end: sideBar 侧边栏容器 -->
        <div class="clear"></div>
    </div><!--end: main -->
    <div class="clear"></div>
    <div id="footer">
        <!--done-->
        Copyright &copy; 2021 苓渊
        <br /><span id="poweredby">Powered by .NET 5.0 on Kubernetes</span>



    </div><!--end: footer -->
</div><!--end: home 自定义的最大容器 -->


<div id="page_end_html">

    <!-- 添加看板娘 -->
    <html xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <title>Live2D</title>

        <link rel="stylesheet" type="text/css" href="https://blog-static.cnblogs.com/files/qinnian/waifu1.css"/>
        <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    </head>
    <body>
    <div class="waifu" id="waifu">
        <div class="waifu-tips" style="opacity: 1;"></div>
        <canvas id="live2d" width="280" height="250" class="live2d"></canvas>
        <div class="waifu-tool">
            <span class="fui-home"></span>
            <span class="fui-chat"></span>
            <span class="fui-eye"></span>
            <span class="fui-user"></span>
            <span class="fui-photo"></span>
            <span class="fui-info-circle"></span>
            <span class="fui-cross"></span>
        </div>
    </div>
    <script src="https://blog-static.cnblogs.com/files/qinnian/live2d.min.js"></script>
    <script src="https://blog-static.cnblogs.com/files/qinnian/waifu-tips.js"></script>
    <script type="text/javascript">initModel()</script>

    <!--添加雪花飘落效果-->
    <script type="text/javascript">
        window.onload = function () {
            var minSize = 15; //最小字体
            var maxSize = 30;//最大字体
            var newOne = 600; //生成雪花间隔
            var flakColor = "#1bd3ff"; //雪花颜色
            var flak = $("<div></div>").css({position:"absolute","top":"0px"}).html("❉");//定义一个雪花
            var dhight = $(window).height(); //定义视图高度
            var dw =$(window).width()-80; //定义视图宽度
            setInterval(function(){
                var sizeflak = minSize+Math.random()*maxSize; //产生大小不等的雪花
                var startLeft = Math.random()*dw; //雪花生成是随机的left值
                var startOpacity = 0.7+Math.random()*0.3; //随机透明度
                var endTop= dhight-100; //雪花停止top的位置
                var endLeft= Math.random()*dw; //雪花停止的left位置
                var durationfull = 5000+Math.random()*3000; //雪花飘落速度不同
                flak.clone().appendTo($("body")).css({
                    "left":startLeft ,
                    "opacity":startOpacity,
                    "font-size":sizeflak,
                    "color":flakColor
                }).animate({
                    "top":endTop,
                    "left":endLeft,
                    "apacity":0.1
                },durationfull,function(){
                    $(this).remove()
                });
            },newOne);
        }
    </script>

    <!--添加鼠标跟随效果-->
    <style type="text/css">
        .draw {
            position: fixed;
            width: 1px;
            line-height: 1px;
            pointer-events: none;
        }
        @keyframes floatOne {
            0% {
                opacity:1;
            }
            50% {
                opacity:1;
            }
            100% {
                opacity:0;
                transform:translate3D(0, -20px, 0) scale(5) rotate(45deg);
            }
        }
    </style>
    <script type="text/javascript">
        var H = 0;
        $(document).bind('mousemove touchmove',function(e) {
            e.preventDefault();
            var drawSize = 10;
            var drawType = '♡';
            var floatType = 'floatOne';
            var xPos = e.originalEvent.pageX;
            var yPos = e.originalEvent.pageY;

            $('body').append('<div class="draw" style=" font-size:'+drawSize+'px;left:'+xPos+'px;top:'+yPos+'px;-webkit-animation:'+floatType+' .9s 1;-moz-animation:'+floatType+' .9s 1;color:#FF83FA;">'+drawType+'</div>');

            $('.draw').each(function() {
                var div = $(this);
                setTimeout(function() {$(div).remove();},800);
            });
        });
    </script>

    <!-- 添加鼠标点击文字特效 -->
    <script type="text/javascript">
        var a_idx = 0;
        jQuery(document).ready(function($) {
            $("body").click(function(e) {
                var a = new Array("❤");
                var $i = $("<span></span>").text(a[a_idx]);
                a_idx = (a_idx + 1) % a.length;
                var x = e.pageX,
                    y = e.pageY;
                $i.css({
                    "z-index": 999999999999999999999999999999999999999999999999999999999999999999999,
                    "top": y - 20,
                    "left": x,
                    "position": "absolute",
                    "font-weight": "bold",
                    "color": "rgb("+~~(255*Math.random())+","+~~(255*Math.random())+","+~~(255*Math.random())+")"
                });
                $("body").append($i);
                $i.animate({
                        "top": y - 180,
                        "opacity": 0
                    },
                    1500,
                    function() {
                        $i.remove();
                    });
            });
        });
    </script>
    </body>
    </html>
</div>
<input type="hidden" id="antiforgery_token" value="CfDJ8L-rpLgFVEJMgssCVvNUAjsLolbPI5NbMfIqvzDgPsJURj8D1F9AN2NpKhuqPSIe3g4J8Deqm3nRKRXCzFYOuCTmzA8SzM1YJmkjqRhvI6G7OZGIByfAbwQ64PU8cKTJuHzxCRGqjKwzcbfxzJyxYsSqjEX_fck1g7zFPRlZM9p5kocLJlfOsENrIOj9eVQo7w" />
</body>
</html>

