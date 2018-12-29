<html>
<head>
<title>Welcome</title>
</head>
<body>
<h1>Authentication Page</h1>
<p><font color="red">${error}</font></p>
	<form action="/login.do" method="POST">
		Name : <input name="name" type="text" /> 
		Password : <input name="password" type="password" /> 
		<input type="submit" />
	</form>
</body>
</html>