<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.Porder"
    import="java.sql.ResultSet"
    import="java.util.ArrayList" 
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
			<%
				int count=0;
				int sum=0;
				//ArrayList<Integer> p1=new ArrayList<>();
				int cac=0;
				ResultSet rs=Porder.queryAll();
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
					int x=rs.getInt("sum");
					out.println("<tr bgcolor=#E0ECF8>"+
							"<td align=center>"+rs.getInt("id")+
							"<td align=center>"+rs.getString("desk")+
							"<td align=center>"+rs.getInt("humberger")+
							"<td align=center>"+rs.getInt("steak")+
							"<td align=center>"+rs.getInt("salad")+
							"<td align=center>"+x);
					count++;
					sum=sum+x;
					
				}
				
				out.println("<tr><td colspan=2 align=center>�@:"+count+"��,�`���B:"+sum+"��");
				out.println("</table>");

			%>
				
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			<a href="../query/query.jsp">�W�@��</a>
	
	</table>
</body>
</html>