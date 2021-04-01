<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="exam.jsp" %>
<%
	request.setCharacterEncoding("utf-8");
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String gender=request.getParameter("gender");
	String email=request.getParameter("email");
	String phone1=request.getParameter("phone1");
	String phone2=request.getParameter("phone2");
	String phone3=request.getParameter("phone3");
	String call1=request.getParameter("call1");
	String call2=request.getParameter("call2");
	String adress=request.getParameter("adress");
	String carnumber=request.getParameter("carnumber");
	String car=request.getParameter("car");
	
	System.out.println("id :"+id);
	System.out.println("name :"+name);
	System.out.println("password :"+password);
	System.out.println("gender :"+gender);
	System.out.println("email :"+email);
	System.out.println("phone1 :"+phone1);
	System.out.println("phone2 :"+phone2);
	System.out.println("phone3 :"+phone3);
	System.out.println("call1 :"+call1);
	System.out.println("call2 :"+call2);
	System.out.println("adress :"+adress);
	System.out.println("carnumber :"+carnumber);
	System.out.println("car :"+car);
	PreparedStatement pstmt=null;
	try{
		String sql="insert into member(id,name,password,gender,email,phone1,phone2,phone3,call1,call2,adress,carnumber,car) values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, password);
		pstmt.setString(4, gender);
		pstmt.setString(5, email);
		pstmt.setString(6, phone1);
		pstmt.setString(7, phone2);
		pstmt.setString(8, phone3);
		pstmt.setString(9, call1);
		pstmt.setString(10, call2);
		pstmt.setString(11, adress);
		pstmt.setString(12, carnumber);
		pstmt.setString(13, car);
		pstmt.executeUpdate();
		out.println("저장 완료");
	}catch(SQLException e){
		e.printStackTrace();
		out.println("저장 실패");
	}
%>
</body>
</html>