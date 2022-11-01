<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
// 전역변수, 1번만 처리됨
String name = "홍길동"; 
int age = 25;

%>
    
    
<% 
//스크립트릿, 요청시 마다 출력된다.

age++;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert ttle here</title>
</head>
<body>
<!-- Hello JSP!! <br>    HTML 주석 <% %><%!  %>는 수행-->
<%-- 안녕하세요 JSP!! <br>   JSP 주석--%>
나의 이름은 <%= name %> 입니다. <br>	
나의 이름은 <% out.println(name);  %> 입니다. <br>	
<!-- 나의 나이는 <%= age %> 살 입니다. <br> -->
<%-- 나의 나이는 <%= age %> 살 입니다. <br> --%>
	
</body>
</html>