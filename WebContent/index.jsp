<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="java.util.Date"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style>
	body {
	height:100vh;
	background-image: url('./addEX/pic/5.png');
	background-repeat:no-repeat;
	background-size:cover;
	 }
</style>
</head>

<body>
<%
String[] x=request.getParameterValues("");

Date d1=new Date();

String date=(d1.getYear()+1900)+"年"+(d1.getMonth()+1)+"月"+d1.getDate()+"日";

application.setAttribute("DATE", date);
%>

	<table width=500 align=center border=1>
		<tr>
			<td align=center><jsp:include page="header.jsp"/>
		<tr>
			<td align=center><img src="./addEX/pic/7.png">
		<tr>
			<td align=center>
			<table width=500 align=center  border=0.5>
				<tr>
					<td align=center><a href="addEX/input.jsp">1)新增</a>
				<tr>
					<td align=center><a href="query/query.jsp">2)查詢</a>
				<tr>
					<td align=center><a href="setEX/update.jsp">3)修改</a>
				<tr>
					<td align=center><a href="delEX/delete.jsp">4)刪除</a>
				<!--  <tr>
					<td align=center><a href="data/data.jsp">5)分析</a>-->
			
			</table>
			
			
		<tr>
			<td align=center><jsp:include page="footer.jsp"/>28號 陳俞叡 座位:D6
	
	</table>
</body>
</html>