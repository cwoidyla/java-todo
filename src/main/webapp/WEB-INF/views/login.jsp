<html>
<head>
<title>Welcome</title>
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
	<nav class="navbar navbar-default">
		<a href="/" class="navbar-brand">Brand</a>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
			<li><a href="/todo.do">Todos</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/login.do">Login</a></li>
		</ul>
	</nav>
	<div class="container">
	<h1>Authentication Page</h1>
	<p><font color="red">${error}</font></p>
		<form action="/login.do" method="POST">
			Name : <input name="name" type="text" /> 
			Password : <input name="password" type="password" /> 
			<input type="submit" />
		</form>
	</div>
	</body>
	<div class="row">
		<div class="span12"></div>
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
</html>