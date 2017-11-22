<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lony13
  Date: 2017-11-18
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Categories List</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>

</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Category Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">
            <!-- need to change onClick -->
            <input type="button" value="Add Category"
                   onclick="window.location.href='showFormForAdd'; return false;"
                   class="add-button"/>

            <table>
                <tr>
                    <th>Category Name</th>
                    <th>Description</th>
                    <th>Action</th>
                </tr>

                <c:forEach var="tmpCategory" items="${categories}">
                    <c:url var="updateLink" value="/category/showFormForUpdate">
                        <c:param name="categoryID" value="${tmpCategory.categoryID}"/>
                    </c:url>

                    <c:url var="deleteLink" value="/category/delete">
                        <c:param name="categoryID" value="${tmpCategory.categoryID}"/>
                    </c:url>

                    <tr>
                        <td>${tmpCategory.categoryName}</td>
                        <td>${tmpCategory.description}</td>
                        <td>
                            <a href="${updateLink}">Update</a>
                            |
                            <a href="${deleteLink}"
                               onclick="if(!(confirm('Are you sure you want to delete this category'))) return false">Delete</a>
                        </td>
                    </tr>
                </c:forEach>

            </table>
        </div>
    </div>

    <br/><br/>

    <input type="button" value="Back"
           onclick="window.location.href='<c:url value="/home/menu"/>'; return false;"
           class="add-button"/>
</body>
</html>
