<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
<title>Home</title>

<!-- Bootstrap core CSS -->
<link href="webjars/bootstrap/3.3.6/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.footer {
	bottom: 0;
	width: 100%;
	height: 60px;
	background-color: #f5f5f5;
}

.footer .container {
width: auto;
max-width: 680px;
padding: 0 15px;
}
</style>
</head>

<body>

	<nav role="navigation" class="navbar navbar-default">

		<div class="">
			<a href="/" class="navbar-brand">Brand</a>
		</div>

		<div class="navbar-collapse">
			<ul class="nav navbar-nav">
				<li><a href="#">Home</a></li>
				<li class="active"><a href="/todo.do">Todos</a></li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
			    <li><a href="/logout.do">Logout</a></li>
		    </ul>
		</div>

	</nav>

	<div class="container">
		<h1>Welcome ${name}</h1>

		<h2>ToDos</h2>
		<ol>
			<c:forEach items="${todos}" var="todo">
				<li>${todo.name}&nbsp;<a
					href="/delete-todo.do?todo=${todo.name}">Delete</a></li>
			</c:forEach>
		</ol>

		<p>
			<font color="red">${errorMessage}</font>
		</p>
		<form method="POST" action="/add-todo.do">
			New Todo : <input name="todo" type="text" /> <input name="add"
				type="submit" />
		</form>
	</div>
	<div class="row">
	<footer class="footer">
		<div class="container">
			<p>footer content</p>
		</div>
	</footer>
	</div>

	<script src="webjars/jquery/1.9.1/jquery.min.js"></script>
	<script src="webjars/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</body>

</html>