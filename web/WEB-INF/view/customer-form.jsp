<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lony13
  Date: 2017-11-16
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save Customer</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css">

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-object-style.css">
</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <h3>Save Customer</h3>
        <form:form action="saveCustomer" modelAttribute="customer" method="POST">
            <!-- associate this data with customer id -->
            <form:hidden path="id"/>

            <table>
                <tbody>
                    <tr>
                        <td><label>First Name:</label></td>
                        <td><form:input path="firstName"/></td>
                    </tr>

                    <tr>
                        <td><label>Last Name:</label></td>
                        <td><form:input path="lastName"/></td>
                    </tr>

                    <tr>
                        <td><label>Email:</label></td>
                        <td><form:input path="address"/></td>
                    </tr>

                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Submit" class="save"/></td>
                    </tr>
                </tbody>
            </table>
        </form:form>

        <br/><br/>

        <input type="button" value="Back"
               onclick="window.location.href='<c:url value="${pageContext.request.contextPath}/customer/list"/>';
               return false;"
               class="add-button"/>

    </div>
</body>
</html>
