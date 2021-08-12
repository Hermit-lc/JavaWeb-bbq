<%--
  Created by IntelliJ IDEA.
  User: 李聪
  Date: 2021/6/24
  Time: 18:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>表白墙-发公告</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">发布公告</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" role="form" action="/doAdminPost">

            <!---隐藏的用户名-->
            <div class="form-group">
                <div class="col-xs-12">
                    <input type="text" class="form-control" id="title" placeholder="请输入标题" name="title">
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-12">
                    <textarea class="form-control" rows="3" placeholder="请输入内容" id="content" name="message"></textarea>
                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-6">

                </div>
                <div class="col-xs-6" >

                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-10">
                    <button type="submit" class="btn btn-primary">发布公告</button>
                </div>
            </div>
        </form>
    </div>
</div>
</body>
</html>



