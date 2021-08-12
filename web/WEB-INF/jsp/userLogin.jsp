<%--
  Created by IntelliJ IDEA.
  User: 李聪
  Date: 2021/6/21
  Time: 18:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>表白墙-登陆</title>
    <link rel="stylesheet" href="../assets/libs/particles/css/style.css">
    <link rel="stylesheet" href="../assets/css/base.css">
    <link rel="stylesheet" href="../assets/css/login.css" />
</head>
<body>
<!-- particles.js container -->
<div id="particles-js"></div>
<div id="wrapper">
    <div>
        <img src="../assets/img/biaobaiqiang_logo.png" />
        <h2>与世界分享你的知识、经验和见解</h2>
    </div>
    <nav class="switch_nav">
        <a href="http://localhost:8080/userRegister" id="switch_signup" class="switch_btn">注册</a>
        <a href="javascript:;" id="switch_login" class="switch_btn on">登陆</a>
        <div class="switch_bottom" id="switch_bottom"></div>
    </nav>
    <div id="login">
        <form method="post" action="/doLogin">
            <ul class="group_input">
                <li><input type="text" class="mobile required" id="mobile" placeholder="username" name="username"/></li>
                <li><input type="password" class="psd required" id="psd" placeholder="password" name="password" /></li>
            </ul>
            <button type="submit" class="submit_btn" id="btnSubmit">登陆</button>
        </form>
        <div class="states"></div>
        <div class="states">
            <div class="states three_MinIcon">
                <a href="javascript:;" class="MinIcon_weixin"><img src="../assets/img/icon_weixin.jpg" style="width:20px;height:18px" /></a>
                <a href="javascript:;" class="MinIcon_weibo"><img src="../assets/img/icon_weibo.jpg" style="width:20px;height:18px" /></a>
                <a href="javascript:;" class="MinIcon_qq"><img src="../assets/img/icon_qq.jpg" style="width:20px;height:18px" /></a>
            </div>
        </div>
    </div>
    <div class="QRcode_btn"><div class="QRcode"><div class="box"></div></div></div>
    <div id="footer"></div>
</div>
<script src="js/common.js"></script>
<script src="../assets/libs/jquery-1.12.4/jquery.min.js"></script>
<script src="../assets/libs/particles/particles.min.js"></script>
<script src="../assets/libs/particles/js/app.js"></script>
<!-- <script src="../assets/libs/particles/js/lib/stats.js"></script> -->
<script>
    $(function(){
        //为表单的必填文本框添加提示信息（选择form中的所有后代input元素）
        // $("form :input.required").each(function () {
        //     //通过jquery api：$("HTML字符串") 创建jquery对象
        //     var $required = $("<strong class='high'>*</strong>");
        //     //添加到this对象的父级对象下
        //     $(this).parent().append($required);
        // });
        // var errorMsg = $(".error-msg").text();
        //为表单元素添加失去焦点事件
        $("form :input").blur(function(){
            var $parent = $(this).parent();
            $parent.find(".msg").remove(); //删除以前的提醒元素（find()：查找匹配元素集中元素的所有匹配元素）
            //验证手机号
            if($(this).is("#mobile")){
                var mobileVal = $.trim(this.value);
                // var regMobile = /^1[3|4|5|7|8][0-9]{9}$/;
                if(mobileVal == ""){
                    var errorMsg = " 请输入用户名！";
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>");
                } else{
                    var okMsg=" 输入正确";
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }
            }
            //验证密码
            if($(this).is("#psd")){
                var psdVal = $.trim(this.value);
                var regPsd = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,20}$/;
                if(psdVal== "" || !regPsd.test(psdVal)){
                    var errorMsg = " 密码为6-20位字母、数字的组合！";
                    $parent.append("<span class='msg onError'>" + errorMsg + "</span>");
                }
                else{
                    var okMsg=" 输入正确";
                    $parent.append("<span class='msg onSuccess'>" + okMsg + "</span>");
                }
            }
        }).keyup(function(){
            //triggerHandler 防止事件执行完后，浏览器自动为标签获得焦点
            $(this).triggerHandler("blur");
        }).focus(function(){
            $(this).triggerHandler("blur");
        });

        //点击重置按钮时，通过trigger()来触发文本框的失去焦点事件
        /*$("#btnSubmit").click(function(){
            //trigger 事件执行完后，浏览器会为submit按钮获得焦点
            $("form .required:input").trigger("blur");
            var numError = $("form .onError").length;
            if(numError){
                return false;
            }
            alert('登陆成功！')
        });*/
    })

</script>


</body>
</html>