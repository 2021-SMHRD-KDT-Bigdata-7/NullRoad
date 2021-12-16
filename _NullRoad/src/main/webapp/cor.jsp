<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Form-v10 by Colorlib</title>
	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<!-- Font-->
	<link rel="stylesheet" type="text/css" href="css/montserrat-font.css">
	<link rel="stylesheet" type="text/css" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
	<!-- Main Style Css -->
    <link rel="stylesheet" href="css/corstyle.css"/>
</head>
<style>
	body{
		background-color:#484748;
	}
</style>
<body class="form-v10">
	<div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="#" method="post" id="myform">
				<div class="form-left">
					<h2>ȸ�� ���� ����</h2>
					<div class="form-row">
						<select name="title">
						    <option class="option" value="title">�����/������</option>
						    <option class="option" value="businessman">�����</option>
						    <option class="option" value="reporter">������</option>
						</select>
						<span class="select-btn">
						  	<i class="zmdi zmdi-chevron-down"></i>
						</span>
					</div>
					<div class="form-group">
						<div class="form-row form-row-1">
							<input type="text" name="id" id="id" class="input-text" placeholder="���̵�" required>
						</div>
						<div class="form-row form-row-2">
							<input type="password" name="pw" id="pw" class="input-text" placeholder="��й�ȣ" required>
						</div>
					</div>

					<div class="form-row">
						<input type="text" name="nick" class="nick" id="nick" placeholder="�г���" required>
					</div>
				
						<div class="form-row">
							<input type="text" name="tel" class="tel" id="tel" placeholder="����ó" required>
						</div>
						<div class="form-row">
							<input type="text" name="car" class="car" id="car" placeholder="������ȣ" required>
						</div>
						<div class="form-row">
							<input type="text" name="num" class="num" id="num" placeholder="���¹�ȣ" required>
						</div>

					
			
				</div>
				<div class="form-right">
					<h2>���� ���� ����</h2>
					<div class="form-row">
						<input type="text" name="street" class="street" id="street" placeholder="�ּ�" required>
					</div>
					<div class="form-row">
						<input type="text" name="tel" class="tel" id="tel" placeholder="����ó" required>
					</div>
					<div class="form-row">
						<input type="text" name="num" class="num" id="num" placeholder="�Աݰ��¹�ȣ" required>
					</div>
					<br><br><br><br><br><br><br><br><br>
					<div class="form-row-last">
						<input type="submit" name="register" class="register" value="�����ϱ�">
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>