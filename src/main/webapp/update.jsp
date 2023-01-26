<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>update status</title>
</head>
<body>
<h3>update</h3>
<form action="/easy/updateServlet" method="post">

    <%--隐藏域，提交id--%>
    <input type="hidden" name="id" value="${tickect.id}">

    status：
    <c:if test="${tickect.status == 0}">

        <input type="radio" name="status" value="0" checked>in maintenance
        <input type="radio" name="status" value="1">Finished<br>
    </c:if>

    <c:if test="${tickect.status == 1}">

        <input type="radio" name="status" value="0" >in maintenance
        <input type="radio" name="status" value="1" checked>Finished<br>
    </c:if>


    <input type="submit" value="Submit">
</form>
</body>
</html>