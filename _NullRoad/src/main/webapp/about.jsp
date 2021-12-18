<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>�����ǵ�</title>
	<meta charset="UTF-8">
	<meta name="description" content="Cryptocurrency Landing Page Template">
	<meta name="keywords" content="cryptocurrency, unica, creative, html">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- Favicon -->
	<link href="img/favicon.ico" rel="shortcut icon"/>

	<!-- Google Fonts -->
	<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="css/bootstrap.min.css"/>
	<link rel="stylesheet" href="css/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/themify-icons.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


</head>
<body>
<%
   MemberVO mvo=(MemberVO)session.getAttribute("mvo");
   String loginYN = "login.jsp?page=";
   String selflink = "main.jsp";
   if (mvo!=null){loginYN = "";}
   
%>
   <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>
   <!-- Header section -->
   <header class="header-section clearfix">
      <div class="container-fluid">
         <a href="main.jsp" class="site-logo" style="font-family : ImcreSoojin; font-size:40px;">
            nroad
         </a>
         <%if(mvo==null){%>
         <div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
         <a href="login.jsp?page="+<%=selflink%> class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
         <a href="login.jsp?page="+<%=selflink%> class="site-btn">�α���</a>
         <%}else{ %> 
         <div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
         <a href="Logout.do?page="+<%=selflink%> class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
         <a href="Logout.do?page="+<%=selflink%> class="site-btn">�α׾ƿ�</a>
         <%} %>
         <nav class="main-menu">
            <ul class="menu-list">
               <div class="dropdown">
                  <button class="dropbtn"><b>About us&nbsp;</b></button>
                  <div class="dropdown-content">
                    <a href="about.jsp">�����ǵ�</a>
                    <a href="gide.jsp">�����</a>
                  </div>
                 </div>
               <div class="dropdown">
                  <button class="dropbtn"><b>Community&nbsp;</b></button>
                  <div class="dropdown-content">
                    <a href="<%=loginYN%>Bo_Reviewboard.jsp">����Խ���</a>
                    <a href="<%=loginYN%>Bo_Freeboard.jsp">�����Խ���</a>
                  </div>
                 </div>
               <div class="dropdown">
                  <button class="dropbtn"><b>Service</b></button>
                  <div class="dropdown-content">
                    <a href="<%=loginYN%>contact.jsp">�����ϱ�</a>
                    <a href="<%=loginYN%>one.jsp">1:1����</a>
                    <a href="<%=loginYN%>Q_Q&A.jsp">Q&A</a>
                    <a href="<%=loginYN%>mypage.jsp">����������</a>
                  </div>
                 </div>

            </ul>
         </nav>
      </div>
   </header>
   <!-- Header section end -->


<!-- Page info section -->
<div class = "mobile">
<section class="page-info-section">
	<div class="container">
	</div>
</section>
</div>
<!-- Page info end -->
<p>&nbsp;</p><p>&nbsp;</p><p>&nbsp;</p>


	<!-- About section -->
	<section class="about-section spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-6 about-text">
					<h2>���� �ǵ�</h2>
					
					<h5>There's a space behind the pillar.</h5>
					<p> ���� ���� �������� ������ �����Ǿ� �ִ� ������ ���� ���� ���ѹα��� ��� ����鿡�Դ�
						�ſ� �ͼ��� ǳ���� ���̴�.
						<br><br>
						��������, Ȥ�� '�������'�̶� �Ҹ���� �� ������ ����ȭ�� �����
						��� ������ �޴� �����̳� �α��е��� �ſ� ���� �ѱ������� �� ���ذ� ���� ü�� �� �� �ۿ� ����.
						<br><br>
						�ҹ� ������ ������ ���⺸�� �����ڿ��� ������ ���� ������ �����ϴ� �Ͱ� ���� ���� ������
						������ �ǹ����� ���ͼ��� �����ϴ� ������ν� ���������� �߰� �÷����� 'nullRoad'�� �����Ͽ���.
					</p>
				</div>
			</div>
			<div class="about-img">
				<br><br><br><br><br><br>
				<img src="img/parking.png" alt="">
			</div>
		</div>
	</section>
	<!-- About section end -->


	<!-- Fact section -->
	<section class="about-section spad gradient-bg">
		<div class="container text-white">
			<div class="row"  data-aos="slide-up" data-aos-duration="2500">
				<div class="col-lg-6 offset-lg-6 about-text">
					<br>
					<h2 style="font-size: 48px;">���� ���� �����ϰ� 
						<br>������ ������!</h2>

				
				</div>
			</div>
			<div class="about-img" style="text-align: center;">
				<ul>
					<a>�������</a><div class="memberCountCon1" style="font-size: 30px;"></div>
					<a>�̿��� ��</a><div class="memberCountCon2" style="font-size: 30px;"></div>
				</ul>
			</div>
		</div>
	</section>
	<!-- Fact section end -->







<!-- Footer section -->
<footer class="footer-section">
	<div class="container">
		<div class="row spad">


		<div class="footer-bottom">
			<div class="row">

				<div class="col-lg-8 text-center text-lg-right">
					<ul class="footer-nav">
						<li><a href=""></a></li>
						<li><a href="">King Jo</a></li>
						<li><a href="">60, Songam-ro, Nam-gu, Gwangju, Republic of Korea</a></li>
						<li><a href="">bszt123@naver.com</a></li>
						<li><a href="">010-3083-0491</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>


	<!--====== Javascripts & Jquery ======-->

	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src ="js/count.js"></script>

</body>
</html>
