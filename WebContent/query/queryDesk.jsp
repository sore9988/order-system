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
						<td align=center>�ู:
							<select name="desk">
								<option value="A��">A��
								<option value="B��">B��
								<option value="C��">C��
								<option value="D��">D��							
							</select>
						<input type="submit" value="�T�w">			
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
					"<td align=center>�ู"+
					"<td align=center>�~��"+
					"<td align=center>����"+
					"<td align=center>�F��"+
					"<td align=center>���B");
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
			<a href="query.jsp">�W�@��</a>
	
	</table>
</body>
</html>