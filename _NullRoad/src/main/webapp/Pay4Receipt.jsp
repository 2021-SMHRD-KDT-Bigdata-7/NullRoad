<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.MemberVO"%>
<%@page import="Model.DAO"%>
<%@page import="Model.ReservationVO"%>
<%@page import="Model.ParkingVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>�����ϱ�</title>
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
	<link rel="stylesheet" href="css/mypage.css"/>
	
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
    <!-- iamport.payment.js -->
    <script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
    <script>
        var IMP = window.IMP; // ���� ����
        IMP.init("imp50823523"); // ��: imp00000000
    </script>
	
<style>
	.spad {
    padding-top: 50px;
    }
	.title_icon{
	height:0px;
	}
	.user_name{
	text-align:center;
	}
	.widget-title{
	text-align:center;
	}
	#myp_section_wrap .section01 .user_wrap .user_info .user_name {
	font-size:1.8rem;
	}


</style>

</head>
<body>
<%
session = request.getSession();
ParkingVO pvo = null;
if (session.getAttribute("pvo")!=null){
	pvo = (ParkingVO)session.getAttribute("pvo");
	session.setAttribute("pvo", pvo);
}
ReservationVO resvo = null;
if (session.getAttribute("resvo")!=null){
	resvo = (ReservationVO)session.getAttribute("resvo");
	session.setAttribute("resvo", resvo);
}

//DB���� �α��� �޾ƿ���
DAO dao = new DAO();
MemberVO mvo = null;
MemberVO mvo_temp = null;
if (session.getAttribute("mvo")!=null){
	mvo_temp = (MemberVO)session.getAttribute("mvo");
	mvo = dao.Login(mvo_temp.getM_id(), mvo_temp.getM_pw());
}else{
	response.sendRedirect("Pay1LoginCheck.jsp");
}
String Systime = dao.Sysdate();
SimpleDateFormat format = new SimpleDateFormat("yy-MM-dd HH:mm:ss");
Date Start = format.parse(resvo.getChk_in_time());
Date End = format.parse(Systime);
long UseTime = (End.getTime() - Start.getTime())/60000;
%>
<%
long price = UseTime*(pvo.getPrk_fee()/60);
%>
<%
   String loginYN = "login.jsp?page=";
   String selflink = "Pay4Receipt.jsp";
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
         <a href="login.jsp?page=<%=selflink%>" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
         <a href="login.jsp?page=<%=selflink%>" class="site-btn">�α���</a>
         <%}else{ %> 
         <div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
         <a href="Logout.do?page=<%=selflink%>" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
         <a href="Logout.do?page=<%=selflink%>" class="site-btn">�α׾ƿ�</a>
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
                    <a href="<%=loginYN%>Q_QNA.jsp">Q&A</a>
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


	<!-- About section -->
	<p>&nbsp;</p>
	<section class="about-section spad">
		<div class="container">
<!-- Blog section -->



<section class="blog-page spad">
	<div class="container">
		<div class="row">
			<div class="col-lg-8">
				<div class="row">

			<div class="col-lg-4 col-md-6 sideber pt-5 pt-lg-0">
			</div>
		</div>
		<div class="widget-area" >
			<h4 class="widget-title">�����ϱ�</h4>
			<div id="myp_section_wrap" class="clear-fix">
				<div class="section01">
					<div class="user_wrap bgfff">

						<div class="user_info">
							<div class="user_name">
								 ������� ������ : <%=pvo.getPrk_seq() %> 
							</div>
							<p>&nbsp;</p>
							<div class="user_class" style="font-size:18px;">������ ������ : <%=pvo.getPrk_status()%></div>
							<p>&nbsp;</p>
							<div class="user_mail" style="font-size:18px;">������ ��� : <%=pvo.getPrk_fee()%></div>
						</div>
						
					</div>
					
				</div>

				<div class="section02">
					<div class="top_wrap">
						<div class="left fwb">
							<div class="title">������ : <%=resvo.getChk_in_time()%></div>
							<div class="title">������� : <%=Systime%></div>
							<div class="title_icon"><img src="./img/white.png" alt="����Ʈ"></div>
							<p>&nbsp;</p>
						</div>
						<div class="right fwb">
							<div class="title">���ð�(��) : <%=UseTime%></div>
							<div class="title_icon"><img src="./img/white.png" alt="�̿볻��"></div>
							<p>&nbsp;</p>
						</div>
					</div>
					<div class="bottom_wrap">
						<div class="left fwb">
							<div class="title">����� : <%=price%></div>
							<div class="title_icon"><img src="./img/white.png" alt="����"></div>
							<p>&nbsp;</p>
						</div>
						<div class="right fwb" onclick="location.href='/present/push.do'">
							<div class="title">��������Ʈ : <%=mvo.getM_point() %></div>
							<div class="title_icon"><img src="./img/white.png"></div>
							
							
</div>
</div>
<div class="user_wrap bgfff">

						<div class="user_info">
						  	<p>&nbsp;</p>
						  	<p>&nbsp;</p>
							<div class="user_name">
							<input id="cashBox" type="text" placeholder="���� �ݾ� �Է�">��
   							<button onclick="requestPay()" class="login100-form-btn">�����ϱ�</button>
 	
						<%if (mvo.getM_point()>price) { %>
						<br>
						<form action="PaymentService.do" method="post">
						<input type="text" value="<%=price%>" name="price" style = "display:none">
						<input type="text" value="<%=UseTime%>" name="time" style = "display:none">
						<input type="text" value="<%=mvo.getM_point()-price%>" name="gold" style = "display:none">
						<input type="submit" class="login100-form-btn" value="�����ϱ�">
						</form>
						<%}%>
							</div>
   							<p>&nbsp;</p>
   							<p>&nbsp;</p>

						</div>
						
					</div>

</div>
</div>
</div>
</div>
</div>
</div>

</section>




    <script>
      function requestPay() {
    	let cash = Number(document.getElementById("cashBox").value)
    	
    	if (cash>=1000){
        // IMP.request_pay(param, callback) ����â ȣ��
        IMP.request_pay({ // param
            //�Ķ���� ���� https://docs.iamport.kr/sdk/javascript-sdk?lang=ko#request_pay
            pg: "html5_inicis",
            pay_method: "card",
            merchant_uid: "ORD20180131-0000<%=resvo.getRes_seq()%>",//���� �ֹ� ��ȣ �ߺ����� ����
            name: "NullRoad���� ����",//�ֹ��� ������ ���� 16�� �̳� �ۼ�
            amount: cash,//���� �ݾ�
            buyer_email: "<%=mvo.getM_phone()%>",//�ֹ��� �̸���
            buyer_name: "<%=mvo.getM_name()%>",//�ֹ��� ��
            buyer_tel: "<%=mvo.getM_phone()%>",//�ֹ��� �ּ�
            buyer_addr: "<%=mvo.getM_account()%>",//�ֹ��� �ּ�
            buyer_postcode: "<%=mvo.getM_car_num()%>"//�ֹ��� �����ȣ
        }, function (rsp) { // callback
            if ( rsp.success ) {
            //������ȯ ���� https://docs.iamport.kr/sdk/javascript-sdk?lang=ko#request_pay-rsp 
        var msg = '������ �Ϸ�Ǿ����ϴ�.';
        msg += '����ID : ' + rsp.imp_uid;
        msg += '���� �ŷ�ID : ' + rsp.merchant_uid;
        msg += '���� �ݾ� : ' + rsp.paid_amount;
        msg += 'ī�� ���ι�ȣ : ' + rsp.apply_num;
        alert(msg);
        } else {
        var msg = '������ �����Ͽ����ϴ�.';
        msg += '�������� : ' + rsp.error_msg;
        alert(msg);
        $.ajax({
        	  url:'Pay0MoneyBase.jsp', //�����������ϴ� ���������� �ּҸ� �ִ´�.
        	  type:'post', //�����͸� ������ �����ϰ� �ȴ�.
        	  data:{
        	         name: '<%=mvo.getM_id()%>',  //�����͹ڽ��� ���̵� ������ �ش� �����͹ڽ��� �����͸� �����ش�.
        	         money: cash
        	  } ,
        	  success : function(t){ 
        	                location.reload();
        	  } ,
        	  error : function(){
        	            location.reload();
        	  }
        	});
        }
        });
    	}else{
    		alert("�����ݾ��� 1000���� �Ѿ���մϴ�.")
    	}
      }

    </script>
		
<!-- Blog section end -->









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
