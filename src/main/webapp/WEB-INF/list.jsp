<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<html>
<body>
	
	<h2>${todos}</h2>
	
<ul>

	<c:forEach items="${todos}" var="todo">
	
		<c:if test="${todo.done}">
			<li><strike>${todo.name}</strike></li>			
		</c:if>
		
		<c:if test="${!todo.done}">
			<li>${todo.name}</li>			
		</c:if>
	
	</c:forEach>

</ul>
	
</body>
</html>
