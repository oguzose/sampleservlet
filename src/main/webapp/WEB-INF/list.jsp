<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
</head>
<body>
<ul>

    <c:forEach items="${todos}" var="todo">

    <c:if test="${todo.done}">
        <li>
            <del>${todo.name}</del>
			<%-- <li>${todo.dueDate}</li> --%>
        </li>
    </c:if>
    
    <form action="list" method="post">
        <c:if test="${!todo.done}">

            <input type="checkbox" name="id" value="${todo.id}">
            <li>${todo.name}</li>
			<%-- <li>${todo.dueDate}</li> --%>
            
        </c:if>

        </c:forEach>
        <button>Check done</button>
    </form>

</ul>
</body>
</html>
