<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lony13
  Date: 2017-11-16
  Time: 10:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Customers</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>

</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>CRM - Customer Relationship Manager</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">
            <input type="button" value="Add Customer"
                    onclick="window.location.href='showFormForAdd'; return false;"
                    class="add-button"/>

            <table>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Address</th>
                    <th>Action</th>
                </tr>

                <c:forEach var="tmpCustomer" items="${customers}">
                    <c:url var="updateLink" value="/customer/showFormForUpdate">
                        <c:param name="customerID" value="${tmpCustomer.id}"/>
                    </c:url>

                    <c:url var="deleteLink" value="/customer/delete">
                        <c:param name="customerID" value="${tmpCustomer.id}"/>
                    </c:url>

                    <tr>
                        <td>${tmpCustomer.firstName}</td>
                        <td>${tmpCustomer.lastName}</td>
                        <td>${tmpCustomer.address}</td>
                        <td>
                            <a href="${updateLink}">Update</a>
                            |
                            <a href="${deleteLink}"
                               onclick="if(!(confirm('Are you sure you want to delete this customer'))) return false">Delete</a>
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
