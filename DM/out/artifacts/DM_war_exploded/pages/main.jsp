<%--
  Created by IntelliJ IDEA.
  User: hjk
  Date: 2017/11/8
  Time: 20:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" isELIgnored="false" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>文档管理系统</title>
    <style type="text/css">
        body{
            margin: 0;
            padding: 0;
        }
        #myiframe{
            width: 1170px;
            height:520px;
            border:none;
        }
        #mainTitle{
            color:#fefefe;
            font-size:20px;
        }
    </style>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/layui/css/layui.css">
    <script src="${pageContext.request.contextPath}/layui/layui.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <div class="layui-header layui-bg-cyan">
        <div class="layui-logo" id="mainTitle">文档管理系统</div>
        <!-- 头部区域（可配合layui已有的水平导航） -->
        <ul class="layui-nav layui-layout-left">
            <li class="layui-nav-item"><a href="">关于系统</a></li>
            <li class="layui-nav-item"><a href="">公告</a></li>
            <li class="layui-nav-item"><a href="">反馈</a></li>
            <li class="layui-nav-item">
                <a href="javascript:;">其它</a>
                <dl class="layui-nav-child">
                    <dd><a href="">用户管理</a></dd>
                </dl>
            </li>
        </ul>
        <ul class="layui-nav layui-layout-right">
            <li class="layui-nav-item">
                <a href="javascript:;">
                    <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                    ${param.uname}
                </a>
                <dl class="layui-nav-child">
                    <dd><a href="">基本资料</a></dd>
                    <dd><a href="">安全设置</a></dd>
                </dl>
            </li>
            <li class="layui-nav-item"><a href="">退出</a></li>
        </ul>
    </div>

    <div class="layui-side layui-bg-black">
        <div class="layui-side-scroll">
            <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
            <ul class="layui-nav layui-nav-tree layui-bg-black"  lay-filter="test">
                <li class="layui-nav-item">
                    <a class="" href="javascript:;">文档管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">文档新增</a></dd>
                        <dd><a href="javascript:;">文档检索</a></dd>
                        <dd><a href="javascript:;">修改文档</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">个人中心</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;">个人信息</a></dd>
                        <dd><a href="javascript:;">修改密码</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item">
                    <a href="javascript:;">用户管理</a>
                    <dl class="layui-nav-child">
                        <dd><a href="javascript:;userServer.toAddUser();">新增用户</a></dd>
                        <dd><a href="javascript:;userServer.toUserList();">管理用户</a></dd>
                    </dl>
                </li>
            </ul>
        </div>
    </div>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <iframe id="myiframe" src="${pageContext.request.contextPath}/pages/welcome.jsp"></iframe>
    </div>
    <%--<div class="layui-footer myfooter">--%>
        <%--<!-- 底部固定区域 -->--%>
        <%--&lt;%&ndash;© layui.com - 底部固定区域&ndash;%&gt;--%>
    <%--</div>--%>
</div>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });
    //用户服务
    var userServer={};
        //去注册用户界面
        userServer.toAddUser=function(){
            $("#myiframe").attr("src","../pages/regist.jsp");
        }
        userServer.toUserList=function(){
            $("#myiframe").attr("src","../pages/userList.jsp");
        }
</script>
</body>
</html>