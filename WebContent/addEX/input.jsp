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

	<table width=500 align="center" border=1>
		<tr>
			<td align=center><jsp:include page="../header.jsp"/>
		<tr>
			<td align=center>
			
				<form method="post" action="../add">
				
					<table width=500 align="center" border=1>
						<tr>
							<td colspan=3>
							�ู:
							<select name="desk">
								<option value="A��">A��
								<option value="B��">B��
								<option value="C��">C��
								<option value="D��">D��							
							</select>
						<tr>
							<td width=200 align=center>
							<img src="pic/6.png"><br>
							�ƶq:
							<select name="humberger">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
								<option value="10">10
							</select>
							<td width=200 align=center>
							<img src="pic/2.png"><br>
							�ƶq:
							<select name="steak">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
								<option value="10">10
							</select>
							
							<td width=200 align=center>
							<img src="pic/3.png"><br>
							�ƶq:
							<select name="salad">
								<option value="0">0
								<option value="1">1
								<option value="2">2
								<option value="3">3
								<option value="4">4
								<option value="5">5
								<option value="6">6
								<option value="7">7
								<option value="8">8
								<option value="9">9
								<option value="10">10
							</select>
						<tr>
							<td colspan=3 align=center>	
							<input type="submit" value="�T�w">				
						
					</table>	
					</form>			
				<tr>
					<td align=center><jsp:include page="../footer.jsp"/>
			
		
			</table>
</body>
</html>
		