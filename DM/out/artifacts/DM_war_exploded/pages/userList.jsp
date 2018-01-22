<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
<style type="text/css">
    #container{
        width:96%;
        margin:0 auto;
    }
    #showEdit{
        width:400px;
    }
    .modal-body{
        margin-left:40px;
    }
    #editUser{
        text-align: center;
    }
</style>
<body>
    <div id="container">
        <table class="table table-striped" id="usersTab">
            <caption>用户信息列表</caption>
            <tr>
                <th>序号</th>
                <th>身份</th>
                <th>账号</th>
                <th>密码</th>
                <th>姓名</th>
                <th>年龄</th>
                <th>注册日期</th>
                <th>操作</th>
            </tr>
        </table>
    </div>
</body>
<script type="text/javascript">
    var url="http://localhost:8088/PM/userAction_qd/";
    //获取所有用户信息
    function getUserList(){
        $.get(url+"findUsersPro","",function(data){
            $.each(data,function(i,v){
                var tr="<tr>";
                tr+="<td>"+(i+1)+"</td>";
                tr+="<td>"+v[1]+"</td>";
                tr+="<td>"+v[0].uid+"</td>";
                tr+="<td>"+v[0].upwd+"</td>";
                tr+="<td>"+v[0].uname+"</td>";
                tr+="<td>"+v[0].uage+"</td>";
                tr+="<td>"+v[0].registdate+"</td>";
                tr+="<td>";
                tr+="<button class='btn btn-primary' data-toggle='modal' data-target='#myModal' onclick='toEdit("+v[0].uno+")'>修改</button>   ";
                tr+="<button type='button' class='btn btn-danger' id='delUser' onclick='delUser("+v[0].uno+")'>删除</button>";
                tr+="</td>";
                tr+="</tr>";
                $("#usersTab").append(tr);
            });
        },"json");
    }
    getUserList();

    //加载所有用户类型
    function loadUserType(){
        $.get(url+"tofindUserType","",function(data){
            $.each(data,function(i,v){
                var utype = "<option value='"+v.tno+"'>"+v.tname+"</option>"
                $("#utype").append(utype);
            })
        },"json");
    }
    loadUserType();

    //删除用户
    function delUser(uno){
        if(confirm("确定要删除吗?")){
            $.get(url+"delUser/"+uno,"",function(data){
                if(data){
                    location.reload("http://localhost:8088/PM/userAction_qd/");
                }
            });
        }
    }

    function toEdit(uno){
        location.href="http://localhost:8088/PM/userAction/findUserById/"+uno;
    }
</script>
</html>
