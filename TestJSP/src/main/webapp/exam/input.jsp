<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="./result.jsp" >
<table border="1">
	<tr>
		<td width="50" align="center">x</td>
		<td>
		<input type="text" name="x" id="x">
		</td>
	</tr>
	<tr>
		<td align="center">y</td>
		<td>
		<input type="text" name="y" id="y">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="계산"></input>
		<input type="reset" value="취소"></input>
		</td>
	</tr>
</table>
</form>
</body>
</html>