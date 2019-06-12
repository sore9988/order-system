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
			<td colspan=2 align=center>訂單細目
		<tr>
			<td width=150>桌號: 
			<td width=350>${P.getDesk()}
		<tr>
			<td width=150>漢堡:
			<td width=350>${P.getHumberger() }
		<tr>
			<td width=150>牛排:
			<td width=530>${P.getSteak() }
		<tr>
			<td width=150>沙拉:
			<td width=350>${P.getSalad() }
		<tr>
			<td width=150>一共:
			<td width=350>${P.getSum() }元
		<tr>
			<td colspan=2 align=center>
			<a href="input.jsp">重填</a>
			<a href="finish.jsp">確定</a>
		
	</table>	
</body>
</html>