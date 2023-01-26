<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<h1></h1>


<hr>
<table border="1" cellspacing="0" width="80%">
    <tr>
        <th>ID</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Floor Unit</th>
        <th>Category</th>
        <th>Date</th>
        <th>Description</th>
        <th>status</th>

    </tr>


    <c:forEach items="${tickects}" var="tickect" varStatus="status">
        <tr align="center">
            <td>${status.count}</td>
            <td>${tickect.firstName}</td>
            <td>${tickect.lastName}</td>
            <td>${tickect.email}</td>
            <td>${tickect.phone}</td>
                <td>${tickect.floorUnit}</td>
                <td>${tickect.category}</td>
                <td>${tickect.date}</td>
                <td>${tickect.description}</td>
                <c:if test="${tickect.status == 1}">
                <td>Finished</td>
            </c:if>
            <c:if test="${tickect.status != 1}">
                <td>in maintenance</td>
            </c:if>

            <td><a href="/easy/selectByIdServlet?id=${tickect.id}">update</a>
    </c:forEach>

</table>


</body>
</html>