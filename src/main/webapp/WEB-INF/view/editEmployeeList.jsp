<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        <title>employeeList</title>
    </head>
    <body>
    <h2>Employee List</h2>
    <form:form method="post" action="add" commandName="employee">
        <table>
        <tr>
            <td><form:label path="name"><spring:message code="label.name"/></form:label></td>
            <td><form:input path="name" /></td>
        </tr>
        
        <tr>
            <td><form:label path="email"><spring:message code="label.email"/></form:label></td>
            <td><form:input path="email" /></td>
        </tr>
        
        <tr>
            <td colspan="2">
                <input type="submit" value="<spring:message code="label.add"/>"/>
            </td>
        </tr>
    </table>
    </form:form>
    <h3>Employees</h3>
    <c:if  test="${!empty employeeList}">
    <table class="data">
    <tr>
        <th>Name</th>
        <th>Email</th>
        
        
    </tr>
    <c:forEach items="${employeeList}" var="emp">
        <tr>
            <td>${emp.name} </td>
            <td>${emp.email}</td>
            <td>delete</td>
        </tr>
    </c:forEach>
    </table>
    </c:if>
    </body>
</html>