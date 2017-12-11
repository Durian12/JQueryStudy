<%@ page language="java" contentType="text/html; utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<form id="form1" action="HelloWorldTest.jsp" method="post" name="toHWJ">
		<input type="text" name="tt1">
	</form>
	
	<form action="Hello3.jsp" method="post" name="toHWJ2">
		
	</form>
	
	<input type="button"  value="formCom" onclick='document.getElementById("form1").submit()'/>
	<input type="image" id="img1" src="bt_login.gif" 
			onclick='toHWJ2.submit()'
			onmouseover='src="timg.jpg"' 
			onmouseout='src="bt_login.gif"'/>
	<p><%=(request.getAttribute("tt1")==null?"":request.getAttribute("tt1")) %></p>
	<p id="p1"><%=(request.getAttribute("tt2")) %></p>
	<input type="button" value="colorP1" 
			onclick='document.getElementById("img1").src="timg.jpg"' 
			onmouseover='document.getElementById("p1").style.color="red"' 
			onmouseout='document.getElementById("p1").style.color="black"'
			onmousedown='document.getElementById("p1").style.color="purple"'
			onmouseup='document.getElementById("p1").style.color="blue"'/>
	
</body>
</html>