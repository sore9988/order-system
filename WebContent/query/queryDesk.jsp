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
	<table width=600 align=center border>
		<tr>
			<td align=center><jsp:include page="../header.jsp"/>
		<tr>
			<td>
			
			<form method="post" action="queryDesk.jsp">
				<table width=500 align=center>
					<tr>
						<td align=center>桌號:
							<select name="desk">
								<option value="A桌">A桌
								<option value="B桌">B桌
								<option value="C桌">C桌
								<option value="D桌">D桌							
							</select>
						<input type="submit" value="確定">			
				</table>			
			</form>
				<hr>
			<%
				
			request.setCharacterEncoding("big5");
			
			String DESK=request.getParameter("desk");
			
			ResultSet rs=Porder.queryDesk(DESK)	;
			
			
			out.println("<table align=center width=500>");
			out.println("<tr bgcolor=#F2F5A9>"+
					"<td align=center>ID"+
					"<td align=center>桌號"+
					"<td align=center>漢堡"+
					"<td align=center>牛排"+
					"<td align=center>沙拉"+
					"<td align=center>金額");
			while(rs.next())
			{
				out.println("<tr bgcolor=#E0ECF8>"+
						"<td align=center>"+rs.getInt("id")+
						"<td align=center>"+rs.getString("desk")+
						"<td align=center>"+rs.getInt("humberger")+
						"<td align=center>"+rs.getInt("steak")+
						"<td align=center>"+rs.getInt("salad")+
						"<td align=center>"+rs.getInt("sum"));
			}
			
			out.println("</table>");
		
			
			
			%>
				
				
				
				
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			<a href="query.jsp">上一頁</a>
	
	</table>
</body>
</html>