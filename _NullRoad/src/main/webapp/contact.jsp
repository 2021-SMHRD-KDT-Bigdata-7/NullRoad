<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>������ ����ϱ�</title>
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
<style>
.button {
    display: flex;
    justify-content: center;
	color:#7e3bc3;
}
label {
    cursor: pointer;
    font-size: 1em;
}


#chooseFile {
    visibility: hidden;
}

.container-login100-form-btn {
  width: 100%;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
  padding-top: 20px;
}

.login100-form-btn {
  font-family: Montserrat-Bold;
  font-size: 15px;
  line-height: 1.5;
  color: #fff;
  text-transform: uppercase;
  height: 50px;
  border-radius: 5px;
  background: #7e3bc3;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 25px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn:hover {
  background: #484748;
}

</style>

</head>
<body>
<%

	MemberVO mvo=(MemberVO)session.getAttribute("mvo");
%>
<!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

	<!-- Header section -->
	<header class="header-section clearfix">
		<div class="container-fluid">
			<a href="main.jsp" class="site-logo" style="font-family: ImcreSoojin; font-size:40px;">
				nroad
			</a>
			<%if(mvo==null){ %>
			<div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
			<a href="login.jsp?page=contact.jsp" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
			<a href="login.jsp?page=contact.jsp" class="site-btn">�α���</a>
			<%}else{ %> 
			<div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
			<a href="Logout.do?page=contact.jsp" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
			<a href="Logout.do?page=contact.jsp" class="site-btn">�α׾ƿ�</a>
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
						  <a href="#">����Խ���</a>
						  <a href="boardreal.jsp">�����Խ���</a>

						</div>
					  </div>
					<div class="dropdown">
						<button class="dropbtn"><b>Service</b></button>
						<div class="dropdown-content">
						  <a href="contact.jsp">�����ϱ�</a>
						  <a href="one.jsp">1:1����</a>
						  <a href="qNa.jsp">Q&A</a>
						  <a href="mypage.jsp">����������</a>
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


	


	<p>&nbsp;</p>
	<!-- Contact section -->
	<section class="contact-page spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-7">
					<h2>������ �����ϱ�</h2>
					<br><br>
					<form class="contact-form">
						<div class="row">
							<div class="col-md-6">
								<div class="form-group">
									<input class="check-form" type="text" placeholder="�������">
									<span><i class="ti-check"></i></span>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="check-form" type="text" placeholder="������">
									<span><i class="ti-check"></i></span>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="check-form" type="text" placeholder="����ó">
									<span><i class="ti-check"></i></span>
								</div>
							</div>
							<div class="col-md-6">
								<div class="form-group">
									<input class="check-form" type="text" placeholder="�ǹ���">
									<span><i class="ti-check"></i></span>
								</div>
							</div>
								<div class="col-md-6">
									<div class="form-group">
										<input type="text" id="sample6_address" placeholder="�����ּ�*"><br>
										<span><i class="ti-check"></i></span>
									</div>
								</div>
								<div class="col-md-6" >
									<div class="form-group" >
										</div>
									</div>

								<div class="col-md-6" >
									<div class="form-group" >
										<input type="text" name="sample6_detailAddress" placeholder="���ּ�"/>
										<span><i class="ti-check"></i></span>
									</div>
								</div>
								<div class="col-md-6" >
									<div class="form-group" >
										</div>
									</div>

							<div class="col-md-12">
								<div class="form-group">
									
									<div class="container">
										<div class="image-upload" id="image-upload">
								
											<form method="post" enctype="multipart/form-data">
												<div class="button">
													<label for="chooseFile">
														 ������ �̹��� ��� 
													</label>
												</div>
												<input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
											</form>
								
											<div class="fileContainer">
												<div class="fileInput">
													<p style="color:#20509e">FILE NAME: </p>
													<p id="fileName"></p>
												</div>
											</div>
										</div>
								</div>
								
								<div class="col-md-12">
									<div class="container-login100-form-btn">
										<a id="alertStart" class="login100-form-btn">
											<b style="color: #fff;">������û</b>
										</a>
									</div>
							</div>
						</div>
					</form>
				</div>

			</div>
		</div>
	</section>
	<!-- Contact section end -->


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
    <script src= "js/alert4.js"></script>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>


	<!--====== adress ======-->
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		window.onload = function(){
    	document.getElementById("sample6_address").addEventListener("click", function(){ //�ּ��Է�ĭ�� Ŭ���ϸ�
        new daum.Postcode({
				oncomplete: function(data) {
					// �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
	
					// �� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
					// �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
					var addr = ''; // �ּ� ����

	
					//����ڰ� ������ �ּ� Ÿ�Կ� ���� �ش� �ּ� ���� �����´�.
					addr = data.jibunAddress;

	
					// �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.

					document.getElementById("sample6_address").value = addr;
					// Ŀ���� ���ּ� �ʵ�� �̵��Ѵ�.
					document.querySelector("input[name=sample6_detailAddress]").focus(); //���Է� ��Ŀ��
				}
			}).open();
		});
	}
	</script>
	<script>
		function loadFile(input) {
    var file = input.files[0];	//���õ� ���� ��������

    //�̸� ����� ���� div�� text(���� �̸�) �߰�
    var name = document.getElementById('fileName');
    name.textContent = file.name;

  	//���ο� �̹��� div �߰�
    var newImage = document.createElement("img");
    newImage.setAttribute("class", 'img');

    //�̹��� source ��������
    newImage.src = URL.createObjectURL(file);   

    newImage.style.width = "70%";
    newImage.style.height = "70%";
    newImage.style.visibility = "hidden";   //��ư�� ������ �������� �̹����� �����
    newImage.style.objectFit = "contain";

    //�̹����� image-show div�� �߰�
    var container = document.getElementById('image-show');
    container.appendChild(newImage);
};
	</script>

	

</body>
</html>