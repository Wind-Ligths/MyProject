<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>编辑用户信息</title>
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
            <c:if test="${param.status==2}">
                <div style="color:green">修改成功</div>
            </c:if>
            <c:if test="${param.status==-2}">
                <div style="color:red">修改失败</div>red
            </c:if>
            <fieldset id="formStyle">
                <legend>编辑用户信息</legend>
                <form action="${pageContext.request.contextPath}/userAction/editUser" method="post">
                    <input type="hidden" name="uno" value="${user.uno}">
                    <p>
                        &nbsp;&nbsp;&nbsp;用户名：<input name="uid" id="uid" value="${user.uid}"/>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        密码：<input name="upwd" id="upwd" value="${user.upwd}"/>
                    </p>
                    <p>
                        真实姓名 : <input name="uname" id="uname" value="${user.uname}"/>
                    </p>
                    <p>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        年龄：<input type="number" name="uage" id="uage" value="${user.uage}"/>
                    </p>
                    <p>
                        用户类型 : <select name="utype.tno" id="utype">
                                        <option value="">请选择用户类型</option>
                                        <c:forEach var="obj" items="${utypes}">
                                            <option value="${obj.tno}">${obj.tname}</option>
                                        </c:forEach>
                                    </select>
                    </p>
                    <p>
                        <fmt:formatDate var="date" pattern="yyyy-MM-dd" value="${user.registdate}"/>
                        注册日期：<input type="date" name="registdate" id="registdate" value="${date}"/>
                    </p>
                    <div id="regist">
                        <input type="submit" value="保存"/>
                    </div>
                </form>
            </fieldset>
        </div>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript">
    var url="http://localhost:8088/PM/userAction_qd/";
    var select  = document.getElementsByName("utype.tno");
    //绑定类型
    for(var i = 0; i < select[0].options.length; i ++){
        var p = select[0].options[i];
        if(p.value == "${user.utype.tno}"){
            p.selected = true;
            break;
        }
    }

    //日期赋值


    <%--formdate.value=${user.registdate};--%>
</script>
</html>
