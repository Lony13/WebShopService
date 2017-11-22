<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Lony13
  Date: 2017-11-16
  Time: 20:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home Page</title>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-object-style.css">

</head>
<body>
    <div id="wrapper">
        <div id="header">
            <h2>Home Page</h2>
        </div>
    </div>

    <div id="container">
        <div id="content">
            <input type="button" value="Show Customers"
                   onclick="window.location.href='<c:url value="/customer/list"/>'"
                   class="add-button"/>

            <input type="button" value="Show Categories"
                   onclick="window.location.href='<c:url value="/category/list"/>'"
                   class="add-button"/>
        </div>
    </div>
</body>
</html>
