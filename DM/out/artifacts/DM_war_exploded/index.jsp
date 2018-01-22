<%--
  Created by IntelliJ IDEA.
  User: LJC
  Date: 2017/1/18
  Time: 10:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>文档管理系统</title>
</head>
<link rel="stylesheet" type="text/css" href="css/myfont.css"/>
<link rel="stylesheet" type="text/css" href="css/index.css">
<body>
    <div id="page">
        <div id="container">
            <div id="main">
                <h1>文档管理系统</h1>
                <div id="login">
                    <h3>用户登录</h3>
                    <form action="${pageContext.request.contextPath}/loginAction/login" method="post" id="loginForm">
                        <div id="loginName">
                            <span id="person">&#xe801;</span>
                            <input class="loginInfo" name="uid" id="usrename" placeholder="请输入用户名" />
                        </div>
                        <p class="errorMsg">
                            <div id="msg1">

                            </div>
                        </p>
                        <div id="loginPassword">
                            <span id="lock">&#xe800;</span>
                            <input type="password" class="loginInfo" name="upwd" id="userpwd" placeholder="请输入密码" />
                        </div>
                        <p class="errorMsg">
                            <div id="msg2">

                            </div>
                        </p>
                        <div id="submit">
                            <input type="submit" id="toLogin" value="登录"/>
                        </div>
                        <div id="regist">
                            <input type="button" id="toRegist" value="注册"/>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
//    var toLogin = document.getElementById("toLogin");
//    var param = $("#loginForm").serialize();
//    toLogin.onclick = function(){
//        $.post("",param,function(data){});
//    }

    /*登录验证*/
    //1.用户名验证
//    var username = document.getElementById("username");
//    var usermsg = document.getElementById("msg1");
//    var namereg = /^\w{6,12}$/;
//    username.onblur = loginName;
//    function loginName(){
//        if(namereg.test(username.value)){
//            usermsg.value="*用户名长度为6-12位";
//        }else{
//            usermsg.value="";
//        }
//    }
//    //2.密码验证
//    var userpwd = document.getElementById("userpwd");
//    var pwdmsg = document.getElementById("msg2");
//    var pwdreg =/^\d{6,10}$/;
//    userpwd.onblur = loginPwd;
//    function loginPwd(){
//        if(pwdreg.test(userpwd.value)){
//            pwdmsg.value="*密码必须是长度6-10的数字";
//        }else{
//            pwdmsg.value="";
//        }
//    }
</script>
</html>
