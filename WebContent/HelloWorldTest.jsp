<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%String str=request.getParameter("tt1"); 
	  str+="sisisi";
	  request.setAttribute("tt1", str);
	  request.setAttribute("tt2", "tttt2");
	  request.getRequestDispatcher("Hello3.jsp").forward(request,response);
	%>
	<p>here</p>
</body>
</html>