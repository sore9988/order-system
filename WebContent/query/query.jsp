<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.Porder"
    import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
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
	<table width=600 align=center border=1>
		<tr>
			<td align=center><jsp:include page="../header.jsp"/>
		<tr>
			<td>
			<table align=center>
				
					<td align=center>�d��
				<tr>
					<td align=center><a href="queryAll.jsp">1)����</a>
				<tr>
					<td align=center><a href="queryDesk.jsp">2)�ู̮</a>
				<tr>
					<td align=center><a href="querySum.jsp">3)�̪��B</a>
				<tr>
					<td align=center><a href="queryID.jsp">4)�̳渹</a>

			</table>	
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			<a href="../index.jsp">�W�@��</a>
	
	</table>
</body>
</html>