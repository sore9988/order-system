<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
   import="com.Porder"
   import="java.sql.ResultSet"
   import="java.sql.*"
   %>
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
			<form method="post" action="queryID.jsp">
				<table width=500>
					<tr>
						<td align=center>
						請輸入單號:
						<input type="text" name="id">
						<input type="submit" value="確定">			
				
				</table>
			
			</form>
			<hr>
			<%
				try
				{
					int ID=Integer.parseInt(request.getParameter("id"));
					ResultSet rs=Porder.queryID(ID);
					out.println("<table align=center width=300 border=0>");
					
					while(rs.next())
					{
						out.println("<tr bgcolor=#E0ECF8><td align=center colspan=2>訂單編號:"+rs.getInt("id")+
								"<tr><td colspan=2><hr>"+
								"<tr><td align=center width=100>桌號"+"<td>"+rs.getString("desk")+
								"<tr><td align=center width=100>漢堡"+"<td>"+rs.getInt("humberger")+
								"<tr><td align=center width=100>牛排"+"<td>"+rs.getInt("steak")+
								"<tr><td align=center width=100>沙拉"+"<td>"+rs.getInt("salad")+
								"<tr><td colspan=2><hr>"+
								"<tr><td align=center width=100>金額"+"<td>"+rs.getInt("sum")+
								"<tr><td colspan=2><hr>");
					}
					
					out.println("</table>");
				
				}
				catch(NumberFormatException  e)
				{
					
				}
			%>
				<table>
				<tr>

				</table>	
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			<a href="query.jsp">上一頁</a>
	
	</table>
</body>
</html>