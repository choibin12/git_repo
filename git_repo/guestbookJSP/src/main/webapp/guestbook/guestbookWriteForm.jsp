<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./guestbookWrite.jsp" name="guestbookWriteForm" method="post">
	<table border="1" cellpadding="5"cellspacing="0">
				<tr>
				<th>작성자</th>
					<td>
					<input type="text" name="name" id="name" placeholder="작성자 입력">
					</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>
					<input type="text" name="email" id="email" size="30" placeholder="이메일 입력">
					</td>
				</tr>
				<tr>
					<th>홈페이지</th>
					<td>
					<input type="text" name="homepage" id="homepage" size="40" value="http://">
					</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>
					<input type="text" name="subject" id="subject" size="40" placeholder="제목 입력">
					<div id="subjectDiv"></div>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
					<textarea rows="5" cols="40" name="content" id="content"  placeholder="내용 입력" style="height: 300px;"></textarea>
					<div id="contentDiv"></div>
					</td>		
				</tr>
				<tr>
					<th colspan="2">
						<input type="button" value="글작성" onclick="checkGuestbookWrite()">
						<input type="reset" value="다시작성">
						<input type="button" value="글목록" onclick="location.href='guestbookList.jsp?pg=1'">
					</th>
				</tr>	
	</table>
</form>
	<script type="text/javascript">
	function checkGuestbookWrite() {
		document.getElementById("subjectDiv").InnerText="";
		document.getElementById("contentDiv").InnerText="";
		  if(document.getElementById("subject").value==""){
			 	document.getElementById("subjectDiv").innerText = "제목을 입력하세요";
			 	document.guestbookWriteForm.subject.focus();
		 } else if(document.getElementById("content").value==""){
			 	document.getElementById("contentDiv").innerText = "내용을 입력하세요";
			 	document.guestbookWriteForm.content.focus();
		 }else {
			 document.guestbookWriteForm.submit();
		 }
		
	}
	</script>
</body>
</html>