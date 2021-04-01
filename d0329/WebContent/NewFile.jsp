<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>hello world</h1>
<%! int count=3; 
	String maketLower(String data){
		return data.toLowerCase();
	}
%>
<%
	for(int i=1; i<=count; i++){
		out.println("<html><head>title>aaa</title></head>");
		out.println("<body><h1>java server pages<</h1>");
		out.println("</body></html>");
	}
%>

<%= maketLower("hello world") %>

</body>
</html>