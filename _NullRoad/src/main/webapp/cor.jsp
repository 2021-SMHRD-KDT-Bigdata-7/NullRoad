<%@page import="Model.MemberVO"%>
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
<%	MemberVO mvo = (MemberVO) session.getAttribute("mvo");%>
	<div class="page-content">
		<div class="form-v10-content">
			<form class="form-detail" action="CorUpd.do" method="post" id="myform">
				<div class="form-left">
					<h2>ȸ�� ���� ����</h2>
					<div class="form-row">
						<input type="text" name="m_pw" class="m_pw" id="m_pw" placeholder="��й�ȣ" required>
					</div>
						<div class="form-row">
							<input type="text" name="m_phone" class="m_phone" id="m_phone" placeholder="����ó" required>
						</div>
						<div class="form-row">
							<input type="text" name="m_car_num" class="m_car_num" id="m_car_num" placeholder="������ȣ" required>
						</div>
						<div class="form-row">
							<input type="text" name="m_account" class="m_account" id="m_account" placeholder="���¹�ȣ" required>
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