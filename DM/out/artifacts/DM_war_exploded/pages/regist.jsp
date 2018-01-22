<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
</head>
<style type="text/css">
    #container{
        width:80%;
        margin:0 auto;
    }
    #main{
        margin-top:70px;
    }
    #formStyle{
        width:40%;
    }
    #regist{
        width:300px;
        height:50px;
        margin-top:8px;
        float:left;
    }
    #regist input{
        width:200px;
        height:50px;
        border:none;
        border-radius:3px;
        color:white;
        margin-left:50px;
        background:#3972F7;
    }
</style>
<body>
    <div id="container">
        <div id="main">
            <c:if test="${param.msg==1}">
                <div style="color:green">添加成功</div>
            </c:if>
            <c:if test="${param.msg==-1}">
                <div style="color:red">添加失败</div>red
            </c:if>
            <fieldset id="formStyle">
                <legend>用户注册</legend>
                <form action="${pageContext.request.contextPath}/userAction/addUser" id="registForm" method="post">
                    <p>
                        &nbsp;&nbsp;&nbsp;用户名：<input name="uid" id="uid"/>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        密码：<input name="upwd" id="upwd"/>
                    </p>
                    <p>
                        真实姓名 : <input name="uname" id="uname"/>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        年龄：<input type="number" name="uage" id="uage"/>
                    </p>
                    <p>
                        用户类型 : <select name="utype.tno" id="utype">
                                        <option value="">请选择用户类型</option>
                                   </select>
                    </p>
                    <p>
                        注册日期：<input type="date" name="registdate" id="registdate"/>
                    </p>
                    <div id="regist">
                        <input type="submit" value="注册"/>
                    </div>
                </form>
            </fieldset>
        </div>
    </div>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
        var url="http://localhost:8088/PM/userAction_qd/";
        //加载用户类型
        function loadUserType(){
            $.get(url+"tofindUserType","",function(data){
                $.each(data,function(i,v){
                    var utype = "<option value='"+v.tno+"'>"+v.tname+"</option>"
                    $("#utype").append(utype);
                })
            },"json");
        }
        loadUserType();
    </script>
</body>
</html>
