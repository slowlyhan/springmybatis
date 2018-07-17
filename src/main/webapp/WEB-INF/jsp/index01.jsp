<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>首页</title>
    <style>
        *{
            padding:0;
            margin:0;
            font-family:"微软雅黑";
        }
        .header{
            height:72px;
            background:#458fce ;
        }
        .header .logo{
            color:#fff ;
            line-height:70px;
            font-size:30px;
            margin-left:20px;
            display:inline-block;
            text-align:center;

        }
        a {
            color: #fff ;
            text-decoration: none ;
        }
        .header .login{
            float:right;
            color:#fff ;
            line-height:72px;
            margin-right:2px;
            display:inline-block;
        }
        .banner{
            height:380px;
            overflow:hidden;
            background: #ddd;
        }
    </style>
</head>
<body>


<div class="row" style="width: 1210px; margin: 0 auto;">
    <div class="col-md-12">
        <ol class="breadcrumb">
            <li><a href="#">首页</a></li>
        </ol>
    </div>

        <table border="1">
            <tr>
                <th>ID</th>
                <th>姓名</th>
                <th>年龄</th>
            </tr>
            <c:forEach items="${List}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.userName }</td>
                <td>${user.age}</td>
                <td><a href="${pageContext.request.contextPath}/user/edit?id=${user.id}" style='color: green'>编辑</a></td>
                <td><a href="${pageContext.request.contextPath}/user/delete?id=${user.id}"style='color: green'>删除</a></td>
            </tr>
            </c:forEach>
        </table>

    <div>

        <form action="/user/insert">
            ID: <input type="text" name="id" />
            姓名: <input type="text" name="userName" />
            年龄: <input type="text" name="age" />
            密码: <input type="text" name="password" />
            添加：<input type="submit" value="Submit" />
        </form>

        <form action="/user/edit">
            ID: <input type="text" name="id" />
            姓名: <input type="text" name="userName" />
            年龄: <input type="text" name="age" />
            密码: <input type="text" name="password" />
            修改：<input type="submit" value="Submit" />
        </form>
    </div>
        <%--<div class="col-md-2" style="height:250px">--%>
            <%--<p>--%>
                <%--<a href="product_info.html" style='color: green'>${user.userName }</a>--%>
            <%--</p>--%>

            <%--<p>--%>
                <%--<a href="product_info.html" style='color: green'>${user.id}</a>--%>
            <%--</p>--%>

            <%--<p>--%>
                <%--<a href="product_info.html" style='color: green'>${user.age}</a>--%>
            <%--</p>--%>
        <%--</div>--%>
    <%--</c:forEach>--%>
</div>

</body>
</html>