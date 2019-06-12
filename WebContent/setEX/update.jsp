<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>修改</title>
<style>
	body {
	height:100vh;
	background-image: url('../addEX/pic/5.png');
	background-repeat:no-repeat;
	background-size:cover;
	 }
</style>
</head>
<body>
	<table width=600 align=center border>
		<tr>
			<td align=center><jsp:include page="../header.jsp"/>
		<tr>
			<td>
				<table width=400 align=center>
					<tr>
						<td align=center>修改
					<tr>
						<td align=center><a href="updateDesk.jsp">1)改桌號</a>
					<tr>
						<td align=center><a href="updateAll.jsp">2)改數量</a>
					
				
				</table>
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			<a href="../index.jsp">home</a>
	
	</table>
</body>
</html>