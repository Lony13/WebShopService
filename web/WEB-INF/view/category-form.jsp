<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Lony13
  Date: 2017-11-18
  Time: 16:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Save Category</title>

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
            <h2>CRM - Category Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <h3>Save Customer</h3>
        <form:form action="saveCategory" modelAttribute="category" method="POST">
            <!-- associate this data with category id -->
            <form:hidden path="categoryID"/>

            <table>
                <tbody>
                <tr>
                    <td><label>Category Name:</label></td>
                    <td><form:input path="categoryName"/></td>
                </tr>

                <tr>
                    <td><label>Description:</label></td>
                    <td><form:input path="description"/></td>
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
               onclick="window.location.href='<c:url value="${pageContext.request.contextPath}/category/list"/>';
               return false;"
               class="add-button"/>
    </div>
</body>
</html>
