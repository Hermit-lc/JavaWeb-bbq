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
    <title>表白墙-评论</title>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="panel panel-success">
    <div class="panel-heading">
        <h3 class="panel-title">发布评论</h3>
    </div>
    <div class="panel-body">
        <form class="form-horizontal" role="form" action="/doUserComment">
            <!---隐藏的用户名-->
            <div class="form-group">
                <div class="col-xs-12">
                    <input type="hidden" name="uid" value="${loginUser.uid}">
                    <input type="hidden" name="username" value="${loginUser.username}">
                    <input type="hidden" name="nid" value=1><%--${allNoteList.id}--%>
                    <%--<input type="hidden" name="id" value="${userNoteList.id}">--%>
                </div>
            </div>
            <!---隐藏的用户名-->
            <%--<div class="form-group">
                <div class="col-xs-12">
                    <input type="text" class="form-control" id="title" placeholder="请输入" name="title" onblur ="CheckTitle();">
                </div>
            </div>--%>
            <div class="form-group">
                <div class="col-xs-12">
                    <textarea class="form-control" rows="3" placeholder="请输入评论"  id="content" name="message" onblur="CheckMessage();"></textarea>

                </div>
            </div>
            <div class="form-group">
                <div class="col-xs-6"></div>
            </div>
            <div class="form-group">
                <div class="col-xs-10"><button type="submit" class="btn btn-primary" >发布评论</button></div>
            </div>
        </form>
    </div>
</div>


<%--<script type="text/javascript">

        function CheckTitle() {
            var Title = document.getElementById("title").value;
            if (Title == "" || Title.value == null) {
                alert("请输入标题");
            }
        }

        function CheckMessage() {
            var Message = document.getElementById("message").value;
            if (Message == "" || Message.value == null) {
                alert("请输入内容");
            }
        }

</script>--%>

</body>
</html>