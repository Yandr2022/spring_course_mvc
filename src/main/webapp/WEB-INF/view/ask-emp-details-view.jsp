<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 15.03.2023
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<body>
<h2>Dear Employee, please enter details about you</h2>
<br><br>
<%--<form action="showDetails" method="get">--%>
<%--    <input type="text" name="employeeName" placeholder="Write your name">--%>
<%--    <input type="submit">--%>
<%--</form>--%>

<form:form action="showDetails" modelAttribute="employee">
    Name:<form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname:<form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary:<form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    tel:<form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    email:<form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    Department<form:select path="department">
    <form:options items="${employee.departments}" />
</form:select>
    <br><br>
    Which car do you want?
    <form:radiobuttons items="${employee.carBrands}" path="carBrand"/>
    <br><br>
    Foreign Language(-s)
    <form:checkboxes path="languages"  items="${employee.languageList}"/>
    <br><br>
    <input type="submit" value="ok">
</form:form>
</body>
</html>
