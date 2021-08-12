<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2021/6/24
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html >
<head>
    <meta charset="utf-8" />
    <title>表白墙-公告</title>

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
            </div><!--end: blogStats -->
        </div><!--end: navigator 博客导航栏 -->
    </div><!--end: header 头部 -->
    <div id="main">
        <div id="mainContent">
            <div class="forFlow">



                <c:forEach items="${userAfficheList}" var="aff">
                    <div class="day">
                        <div class="dayTitle">
                        </div>
                        <div class="postTitle">
                            <a class="postTitle2 vertical-middle" href="">
                                <span>${aff.title}</span>
                            </a>
                        </div>
                        <div class="postCon">
                            <div class="c_b_p_desc">${aff.message}</div>
                        </div>
                        <div class="clear"></div>
                        <div class="postDesc">
                            posted @${aff.insert_time}
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
</body>
</html>
