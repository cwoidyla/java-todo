<%@ include file="../common/header.jspf"%>
<%@ include file="../common/navigation.jspf"%>

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
	
<%@ include file="../common/footer.jspf"%>