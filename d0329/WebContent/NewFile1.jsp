<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int i;
	for(i=1;i<=100;i++){
		if(i%2==1){
			continue;
		}
		System.out.println(i);
		out.println(i);
		%>
		
		<%
	}
%>
</body>
</html>