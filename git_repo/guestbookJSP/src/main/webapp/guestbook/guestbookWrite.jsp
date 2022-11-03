<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="guestbook.bean.GuestbookDTO"%> 
<%@page import="guestbook.dao.GuestbookDAO"%> 
  <% request.setCharacterEncoding("UTF-8"); 
   String name = request.getParameter("name"); 
   String email = request.getParameter("email");
   String homepage = request.getParameter("homepage"); 
   String subject = request.getParameter("subject"); 
   String content = request.getParameter("content"); 
   Map<String, String> map = new HashMap<String, String>();
   map.put("name", name);
   map.put("email", email);
   map.put("homepage", homepage);
   map.put("subject", subject);
   map.put("content", content);
	GuestbookDAO guestbookDAO = GuestbookDAO.getInstance();
int su = guestbookDAO.guestbookWrite(map);%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3><img src="../img/a.png" width="30" height="30" onclick="location.href='guestbookWriteForm.jsp?'" style="cursor: pointer;"></h3>
<% if(su == 1) { %>
 작성한 글을 저장했습니다
 <% } else {%>
 저장실패
 <% } %>
 <button type ="button" onclick="location.href='./guestbookList.jsp?pg=1'">목록</button>
 <button type ="button" onclick="history.go(-1)">뒤로</button>
 <button type ="button" onclick="location.href='index.jsp'">메인</button>
 

</body>
</html>