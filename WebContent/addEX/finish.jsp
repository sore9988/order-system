<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"
    import="com.Porder"
    import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="BIG5">
<title>Insert title here</title>
<style>
	body {
	height:100vh;
	background-image: url('./pic/5.png');
	background-repeat:no-repeat;
	background-size:cover;
	 }
</style>	
</head>
<%
Porder p=(Porder)session.getAttribute("P");
p.add();

Date d1=new Date();
%>
<body>


	<table width=300 align=center border=0>
		<tr>
			<td colspan=2 align=center>
		<tr>
			<td>
				<table width=300 align=center border=0>
					<tr>
						<td colspan=2><hr><jsp:include page="../header.jsp"/>
					<tr>
						<td colspan=2 align=center>
						<font size=6><%=p.getDesk() %></font>  
						<%=d1.getYear()+1900 %>�~
						<%=d1.getMonth()+0 %>��
						<%=d1.getDate() %>��
					<tr>
						<td colspan=2><hr>
					<tr>
						<td width=150 align=center>A�\
						<td align=center><%=p.getHumberger() %>
					<tr>
						<td width=150 align=center>B�\
						<td align=center><%=p.getSteak() %>
					<tr>
						<td width=150 align=center>C�\
						<td align=center><%=p.getSalad() %>
					<tr>
						<td width=150 align=center>�@�@
						<td align=center><%=p.getSum() %>
					<tr>
						<td colspan=2 align=center>
						<a href="../index.jsp">�^����</a>
							
					<tr>
						<td colspan=2><hr>							
				</table>
		
		<tr>
			<td align=center><jsp:include page="../footer.jsp"/>
		<tr>
	</table>
	
</body>
</html>
						