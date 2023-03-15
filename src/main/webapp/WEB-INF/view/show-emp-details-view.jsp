<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 15.03.2023
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<%--<head>--%>
<%--    <title>Title</title>--%>
<%--</head>--%>
<body>
<h2>Dear Employee, you are welcome</h2>
<br><br>
<%--Your name:${param.employeeName}--%>
Name: ${employee.name}
<br>
Surname: ${employee.surname}
<br>
Salary: ${employee.salary}
<br>
Department: ${employee.department}
<br>
tel.: ${employee.phoneNumber}
<br>
email: ${employee.email}
<br>
Car: ${employee.carBrand}
<br>
Language(-s):
<ul>
    <c:forEach var="lang" items="${employee.languages}">
        <li>
            ${lang}
        </li>
    </c:forEach>
</ul>

</body>
</html>
