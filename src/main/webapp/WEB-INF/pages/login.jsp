<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh_CN">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=9">
    <meta name="author" content="Mosaddek">
    <meta name="keyword" content="FlatLab, Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/favicon.ico">

    <title>模块化测试系统</title>

    <link rel="shortcut icon"
          href="${pageContext.request.contextPath}/statics/img/favicon.html">

    <!-- Bootstrap core CSS -->
    <link
            href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css"
            rel="stylesheet">
    <link
            href="${pageContext.request.contextPath}/statics/css/bootstrap-reset.css"
            rel="stylesheet">
    <link
            href="${pageContext.request.contextPath}/statics/css/jquery-confirm.css"
            rel="stylesheet"/>
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/statics/css/style1.css"
          rel="stylesheet">
    <link
            href="${pageContext.request.contextPath}/statics/css/style-responsive.css"
            rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/statics/css/login1.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/statics/css/layout.css" rel="stylesheet">
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/statics/img/favicon.ico">
    <link href="${pageContext.request.contextPath}/statics/assets/font-awesome/css/font-awesome.css" rel="stylesheet"/>
    <script src="http://libs.baidu.com/jquery/1.11.3/jquery.min.js"></script>
    <script
            src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <script
            src="${pageContext.request.contextPath}/statics/js/jquery.validate.min.js"></script>
    <!-- js confirm确认框 -->
    <script
            src="${pageContext.request.contextPath}/statics/js/jquery-confirm.js"></script>

</head>
<body class="login-body">
<!--背景遮布-->
<div class="lc_version"></div>
<div class="lc_ss">
    <div class="lc_circle">
        <img src="${pageContext.request.contextPath}/statics/img/falses.png" class="lc_false"/>
    </div>
    <br/>
    <strong class="lc_ssTop">1111APP</strong><br/>
    <span id="phoneUp">手机下载</span>
    <span id="pcUp">电脑下载</span>
    <img src="${pageContext.request.contextPath}/statics/img/downloadnew3.png" class="lc_ewm"/>
    <div class="lc_phone">
        <div class="lc_android">
            <a id="Aapp"><i class="icon-android lc_phones"></i>
                <span>Android版下载</span></a>
        </div>
        <br/>
        <div class="lc_ios">
            <a id="ios" target="_blank"><i class="icon-apple lc_phones"></i>
                <span>iOS版本下载</span></a>
        </div>
    </div>
</div>
<div>
    <div class="yasin_logo">
        <img src="${pageContext.request.contextPath}/statics/img/yx_log_new.png"/>
        <span style="position:relative;top:5px;left:10px;font-size:16px;">模块化测试系统(版本：2.0，建议使用谷歌浏览器)</span>
    </div>
    <div class="login_header">
        <span class="sys_name">管理平台</span>
        <span class="top_link visible-sm visible-md visible-lg">
			<span>手机端也能用！</span>
			<a href="javascript:void(0)" class="download_text" id="lc_indexApp">APP下载</a>
			</span>
    </div>
</div>
<div class="login_cont">
    <img src="${pageContext.request.contextPath}/statics/img/login_new.png"
         class="lc_img visible-sm visible-md visible-lg"/>
    <div class="container">
        <div class="form-signin">
            <!-- Nav tabs -->
            <ul class="nav nav-tabs nav-justified" role="tablist" id="myTabs">
                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab"
                                                          data-toggle="tab">密码登录</a></li>
                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">短信登录</a>
                </li>
            </ul>
            <div class="login-wrap">
                <!-- Tab panes -->
                <div class="tab-content">
                    <div role="tabpanel" class="tab-pane fade in active" id="home">
                        <form method="post" id="loginForm" name="loginForm">
                            <input type="text" name="username" class="form-control" placeholder="手机号码" autofocus
                                   id="username" maxlength="22" class="lc_usename">
                            <input type="password" name="password" class="form-control" placeholder="密码" id="password"
                                   maxlength="23" class="">
                            <div style="overflow:hidden;">
                                <input type="text" name="imageCode" class="form-control" id="code" placeholder="验证码"
                                       maxlength="4">

                                <!-- <span style="width: 100px;float: left;height: 38px;"> </span> -->
                                <img id="getYzm" alt="验证码" src="" style="width: 100px;float: left;height: 38px;">
                            </div>
                            <select id="outTime" name="outTime" class="form-control"
                                    style="height: 38px; font-size: 12px;">
                                <option class="form-control" value="60">1小时</option>
                                <option class="form-control" value="180">3小时</option>
                                <option class="form-control" value="300">5小时</option>
                                <option class="form-control" value="480">8小时</option>
                                <option class="form-control" value="1440">24小时</option>
                            </select>
                            <!-- <img id="getYzm" alt="验证码" src="" style="width: 100px;height: 38px;position:absolute;bottom:40%;right:9%;"> -->
                            <label class="checkbox" style="width: 80px;overflow: hidden;clear: both;">
                                <input type="checkbox" value="remember-me" id="remember"> 记住密码
                            </label>
                            <a href="javascript:forgetpasswd();" class="lc_loginRemember">忘记密码</a>
                            <a href="javascript:sign();" class="lc_loginRemember">免费注册</a>
                            <button class="btn btn-lg btn-login btn-block" type="submit">登 录</button>
                        </form>
                    </div>
                    <div role="tabpanel" class="tab-pane fade" id="profile">
                        <form method="post" id="loginSms" name="loginSms">
                            <input type="text" name="phone" id="phone" class="form-control" placeholder="手机号码" autofocus
                                   maxlength="22">
                            <div class="input-group" style="margin-bottom:15px;">
                                <input type="text" name="smsCode" id="smsCode" maxlength="10" class="form-control"
                                       placeholder="短信验证码" style="margin-bottom: 0;">
                                <div class="input-group-addon"><a href="javascript:settime();"
                                                                  id="smsCodeHtml">获取短信验证码</a></div>
                            </div>
                            <button class="btn btn-lg btn-login btn-block" type="submit" onclick="enter()">登 录</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!--footer-->
<div class="login_footer visible-sm visible-md visible-lg">
    <p>
        Copyright © 2018 fruitsalad 全国统一客服热线：400-188-9999
    </p>
</div>


<div class="modal fade" id="wgComModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content" style="margin-top:125px; ">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"
                        style="color:white;opacity:1;">×
                </button>
                <h4 class="modal-title" id="wgComModalLabel">动态替换内容</h4>
            </div>
            <div class="modal-body" id="wgComMain"> 数据努力的加载中.....</div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>
<script type="text/javascript">
    function enter() {
        var tests = /^[1-9]+(\.[0-9]+)?$/;
        var phone = $("#phone").val();
        var verify = $("#smsCode").val();
        var outTime = $("#outTime").val();
        /* if(!tests.test(phone)){
            alert("请输入正确手机号码");
            return;
        }
        if(!tests.test(verify)){
            alert("请输入正确验证码");
            return;
        } */

    }

    //记住密码
    /* var user = document.getElementById("userName").value;
       var pass = document.getElementById("password").value;

            var tests = /^[0-9]{6,22}$/;
            var passd = /^[0-9a-zA-Z]{6,22}$/;

            if(!tests.test(user)){
                alert("请正确输入手机号码");
                return;
            }
            if(!passd.test(pass)){
                alert("请正确输入密码");
                return;
            } */
    var user = document.getElementById("username"),
        pass = document.getElementById("password"),
        check = document.getElementById("remember"),
        loUser = localStorage.getItem("user") || "";
    loPass = localStorage.getItem("pass") || "";
    user.value = loUser;
    pass.value = loPass;
    if (loUser !== "" && loPass !== "") {
        check.setAttribute("checked", "");
    }

    function fn() {
        var code = $("#code").val();
        if (code == "") {
            alert("请输入正确验证码");
            return false;
        }
        if (check.checked) {
            localStorage.setItem("user", user.value);
            localStorage.setItem("pass", pass.value);
            /* window.location.href = "http://www.baidu.com";   */
        } else {
            localStorage.setItem("user", "");
            localStorage.setItem("pass", "");
        }

    }

    /* 扫描二维码弹出层 start*/
    $("#lc_indexApp").click(function () {
        $(".lc_ss").css("display", "block");
        $(".lc_version").css("display", "block");
    });
    $(".lc_false").click(function () {
        $(".lc_ss").css("display", "none");
        $(".lc_version").css("display", "none");
    });
    $(".lc_android").mouseover(function () {
        $(".lc_android").css({
            "background": "#2baf2b",
        });
        $("#Aapp").css({
            "color": "white"
        });
    });
    $(".lc_android").mouseout(function () {
        $(".lc_android").css({
            "background": "white",
        });
        $("#Aapp").css({
            "color": "#666666"
        });
    });

    $(".lc_ios").mouseover(function () {
        $("#ios").css({
            "color": "white"
        });
        $(".lc_ios").css({
            "background": "#2baf2b"
        });
    });
    $(".lc_ios").mouseout(function () {
        $("#ios").css({
            "color": "#666666"
        });
        $(".lc_ios").css({
            "background": "white"
        });
    });
    $(".lc_ios").click(function () {
        window.open("https://itunes.apple.com/us/app/七彩芯员工端/id1252887550?l=zh&ls=1&mt=8");
    });

    /* 扫描二维码弹出层 end*/


    function appDownLoad() {
        $.ajaxSetup({contentType: 'application/x-www-form-urlencoded'});
        $.getJSON("${pageContext.request.contextPath}/WgAppversion/app", function (r) {
            $("#Aapp").attr("href", r.AnUrl);
        });
    }


    var countdown = 60;
    var flag = 1;

    function settime() {
        if (flag == 1) {
            flag = 2;
            $.post("${pageContext.request.contextPath}/login/sendSms", {phone: $("#phone").val()}, function (result) {
                if (result.code == 0) {
                    daojishi();
                } else {
                    alert(result.msg);
                    flag = 1;
                }
            }, "json");
        }
    }

    function daojishi() {
        if (countdown == 0) {
            $("#smsCodeHtml").empty().html("获取短信验证码");
            countdown = 60;
            flag = 1;
        } else {
            $("#smsCodeHtml").empty().html(countdown + "秒后可重新获取");
            countdown--;

            setTimeout(function () {
                daojishi();
            }, 1000);
        }

    }


    function loginBtn_click() {
        var strName = $('#username').val();
        var strPass = $('#password').val();
        localStorage.setItem('keyName', strName);
        if ($('#remember').is(':checked')) {
            localStorage.setItem('keyPass', strPass);
        } else {
            localStorage.removeItem('keyPass');
        }
    }

    $("#getYzm")
        .click(
            function () {
                var url = "${pageContext.request.contextPath}/common/getSysManageLoginCode?t=tsx"
                    + Math.random() + 123;
                this.src = url;
            }).click().show();

    //页面加载初始化时候 ----对表单输入框 进行增加验证 --并设定验证通过够执行流程
    /*validate具有多样的功能支持，并支持自定义函数验证，所以可以满足所有的要求*/
    $(document)
        .ready(
            function () {
                // 在键盘按下并释放及提交后验证提交表单
                $("#loginForm")
                    .validate(
                        {
                            // 验证规则
                           /* rules : {
                                username : {
                                    required : true,
                                    minlength : 4,
                                    digits : true
                                },
                                password : {
                                    required : true,
                                    minlength : 6,
                                    maxlength : 15
                                },
                                imageCode : {
                                    required : true,
                                    minlength : 4
                                }
                            },
                            messages : {
                                username : {
                                    required : "手机号码不能为空",
                                    minlength : "",
                                    digits : ""
                                },
                                password : {
                                    required : "密码不能为空",
                                    minlength : "",
                                    maxlength : ""
                                },
                                imageCode : {
                                    required : "",
                                    minlength : ""
                                }
                            },*/
                            submitHandler: function (form) {
                                //验证通过后 走此出业务流程  使用整体提交表单属性
                                $.post("${pageContext.request.contextPath}/login/username", $('#loginForm').serialize(),
                                    function (data) {
                                        if (data.code == 0) {
                                            window.location.href = '${pageContext.request.contextPath}'
                                                + data.url;
                                        } else {
                                            /* $ .alert({ title : '温馨提示：', content : data.msg, }); */
                                            alert(data.msg);
                                        }
                                    }, "json");
                            }
                        });
                //存储密码
                var strName = localStorage.getItem('username');
                var strPass = localStorage.getItem('password');
                if (strName) {
                    $('#user').val(strName);
                }
                if (strPass) {
                    $('#pass').val(strPass);
                }

                $("#loginSms")
                    .validate(
                        {// 验证规则
                            rules: {
                                phone: {required: true, minlength: 11, digits: true},
                                smsCode: {required: true, minlength: 4, maxlength: 6}
                            },
                            messages: {
                                phone: {
                                    required: "",
                                    minlength: "",
                                    digits: ""
                                },
                                smsCode: {
                                    required: "",
                                    minlength: "",
                                    maxlength: ""
                                }
                            },
                            submitHandler: function (form) {
                                //验证通过后 走此出业务流程  使用整体提交表单属性
                                $.post("${pageContext.request.contextPath}/login/smsLogin",
                                    $('#loginSms')
                                        .serialize(),
                                    function (data) {
                                        if (data.code == 0) {
                                            window.location.href = '${pageContext.request.contextPath}'
                                                + data.forwardUrl;
                                        } else {
                                            $
                                                .alert({
                                                    title: '温馨提示：',
                                                    content: data.msg,
                                                });

                                        }
                                    }, "json");
                            }
                        });
                appDownLoad();

            });
    /*
    document.getElementsByTagName('loginForm')[0].onkeydown = function(e){
        var e = e || event;
        var keyNum = e.which || e.keyCode;
        return keyNum==13 ? false : true;
    };
    */
    /*
    document.getElementsByTagName('loginSms')[0].onkeydown = function(e){
        var e = e || event;
        var keyNum = e.which || e.keyCode;
        return keyNum==13 ? false : true;
    };

    $(function() {
        $('#myTab li:eq(0) a').tab('show');
    });
    */
    function forgetpasswd() {
        $("#wgComModal").modal({
            keyboard: false, backdrop: 'static', show: true
        });
        //赋值模态框标题
        $("#wgComModalLabel").empty().append("找回密码");
        $.post("${pageContext.request.contextPath}/login/forgetpasswd", {phone: $("#phone").val()}, function (result) {
            $("#wgComMain").empty().html(result);
        });
    }

    function sign(){
        location.href = "${pageContext.request.contextPath}/login/sign";
    }
</script>

</body>
</html>