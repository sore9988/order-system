<%@ page language="java" contentType="text/html; charset=BIG5"
    pageEncoding="BIG5"%>
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
<body>
	<table width=500 align=center border=1>
		<tr>
			<td colspan=2 align=center>�q��ӥ�
		<tr>
			<td width=150>�ู: 
			<td width=350>${P.getDesk()}
		<tr>
			<td width=150>�~��:
			<td width=350>${P.getHumberger() }
		<tr>
			<td width=150>����:
			<td width=530>${P.getSteak() }
		<tr>
			<td width=150>�F��:
			<td width=350>${P.getSalad() }
		<tr>
			<td width=150>�@�@:
			<td width=350>${P.getSum() }��
		<tr>
			<td colspan=2 align=center>
			<a href="input.jsp">����</a>
			<a href="finish.jsp">�T�w</a>
		
	</table>	
</body>
</html>