
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title></title>
</head>
<body>

<p>update olacak burada</p>


	<form action="update" method="post">
	    <input type="hidden" name="id" value="${todo.id}">
	    <br>
	    <input type="text" name="name" value="${todo.name}">
	    <br>
	    <input type="text" name="desc" value="${todo.desc}">
	    <br>
	    <input type="date" name="dueDate" value="${todo.dueDate}">
	    <br>
	    <label>Is Done?</label>
	    <input type="checkbox" name="done" <c:if test="${todo.done}">checked</c:if>>
	    <br>
	<button>Update the Todo</button>
	
	
	</form>

</body>
</html>
