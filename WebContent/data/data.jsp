<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
        import="com.Porder"
    import="java.sql.ResultSet"
    import="java.util.ArrayList" 

    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>

<style>

canvas{	border-right: 1px solid gray;}

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
			<table width=600 align=center border>
			 <%
				int count=0;
				int sum=0;
				int countHum=0;
				int countSteak=0;
				int countSalad=0;
				ResultSet rs=Porder.queryAll();

				while(rs.next())
				{
					int w=rs.getInt("sum");
					int a=rs.getInt("humberger");
					int b=rs.getInt("steak");
					int c=rs.getInt("salad");

					count++;
					sum=sum+w;
					countHum=countHum+a;
					countSteak=countSteak+b;
					countSalad=countSalad+c;
				}

				out.println("<tr><td colspan=2>共:"+count+"筆,總金額:"+sum+"元");
				out.println("</table>");

			%>
			
		<tr>
			<td>

		 	
		
	
			
				
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
			<a href="../query/query.jsp">上一頁</a>
	
	</table>
</body>
</html>