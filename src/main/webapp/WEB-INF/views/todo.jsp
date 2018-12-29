<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<title>Home</title>
<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
<h1>Welcome ${name}</h1>
<div>
<h2>ToDos</h2>
<ol>
<c:forEach items="${todos}" var="todo">
   <li>${todo.name} <a href="/delete-todo.do?todo=${todo.name}">Delete</a></li> 
</c:forEach>
</ol>

<p><font color="red">${errorMessage}</font></p>
<form method="POST" action="/todo.do">
New Todo : <input name="todo" type="text" /> <input name="add" type="submit" />
</form>
</div>
<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>