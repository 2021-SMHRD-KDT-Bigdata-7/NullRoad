<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>�Խ���</title>
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
        <link rel="stylesheet" href="css/style3.css"/>

    </head>
    <body>
<%
   MemberVO mvo=(MemberVO)session.getAttribute("mvo");
   String loginYN = "login.jsp?page=";
   String selflink = "Q_Q&A.jsp";
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
         <a href="login.jsp?page=main.jsp" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
         <a href="login.jsp?page=main.jsp" class="site-btn">�α���</a>
         <%}else{ %> 
         <div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
         <a href="Logout.do?page=main.jsp" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
         <a href="Logout.do?page=main.jsp" class="site-btn">�α׾ƿ�</a>
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
  
 
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
            <table class="board-list" style="margin:auto">
                <colgroup>
                    <col style="width:5%;">
                    <col style="width:85%;">
                    <col style="width:10%;">

                    
                </colgroup>
                <thead>
                    <tr>
                        <th scope="col" style="text-align: center;"></th>
                        <th scope="col" style="text-align: center;">���ֹ��� ����</th>
                        <th scope="col" style="text-align: center;"></th>

                        
                    </tr>
                </thead>
                <tbody>
                    
                    <tr class="notice">
                        <td><b>Q.</b></td>
                        <td class="text-left" style="text-align: center;"><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
                          <b>���� ���� �� �ڸ��� �ٸ� ���� �����Ǿ������� ��� �ϳ���?</b>
                          </a><div style="DISPLAY: none; color: gray;">
                          <br>
                          ������ 010-3083-0491�� ���� �ֽø� �ٷ� �ٸ� �ڸ��� ���� ���͵帮�ڽ��ϴ�.<br>
                          �̿뿡 ���� ������ �ּ��� ���ϰڽ��ϴ�.
                          </div></td>
                        <td style="color:silver">����������</td>
                    </tr>
                    <tr class="notice">
                        <td><b>Q.</b></td>
                        <td class="text-left" style="text-align: center;"><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
                          <b>������ ��� ����� �˷��ּ���.</b>
                          </a><div style="DISPLAY: none; color: gray;">
                          <br>
                          Ȩ�������� �����ϱ� ��ư�� ���� �������� ������ �Բ� ��Ͻ�û���ֽø�,<br>
                          �����ڰ� ���� �� 2-3�� �̳��� ������ ��� ���θ� �ȳ��ص帳�ϴ�.
                          </div></td>
                        <td style="color:silver">����������</td>
                    </tr>
                    <tr class="notice">
                        <td><b>Q.</b></td>
                        <td class="text-left" style="text-align: center;"><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
                          <b>����Ʈ ���� �� ��� ���� ó���ǳ���?</b>
                          </a><div style="DISPLAY: none; color: gray;">
                          <br>
                          ����Ʈ�� ������ ���, ������ �����Ͻ� ���¿��� �ڵ����� �ʿ��� ��ŭ�� ����Ʈ�� �����˴ϴ�.
                          </div></td>
                        <td style="color:silver">����������</td>
                    </tr>
                    <tr class="notice">
                        <td><b>Q.</b></td>
                        <td class="text-left" style="text-align: center;"><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
                          <b>���� QR�� ���� ���߾��.</b>
                          </a><div style="DISPLAY: none; color: gray;">
                          <br>
                          ����QR�ڵ带 ���ν��� ��� ��� ����� �ΰ��ǹǷ�<br>
                          ������ 010-3083-0491�� ���� �ֽñ�ٶ��ϴ�.          
                          </div></td>
                        <td style="color:silver">����������</td>
                    </tr>
                    <tr class="notice">
                        <td><b>Q.</b></td>
                        <td class="text-left" style="text-align: center;"><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
                          <b>��� ������ ��� �ǳ���?</b>
                          </a><div style="DISPLAY: none; color: gray;">
                          <br>
                          �ð��� ����� ��¼�� ��¼�� ���� ��� �˾� <br>
                          �׸��� ���� �ʹ� ����ͽ��ϴ� �Ӹ��� ���Ŀ� ^^_
                          </div></td>
                        <td style="color:silver">����������</td>
                    </tr>
                    <tr class="notice">
                        <td><b>Q.</b></td>
                        <td class="text-left" style="text-align: center;"><a onclick="this.nextSibling.style.display=(this.nextSibling.style.display=='none')?'block':'none';" href="javascript:void(0)">
                          <b>�����/������ ���� �̿��� �Ұ����Ѱ���?</b>
                          </a><div style="DISPLAY: none; color:gray">
                          <br>
                          ����ڿ� ������ ���ÿ� �̿� �����մϴ�.<br>
                          ���翡�� �����ϱ⸦ ���� �̿� ���ֽø�ǰ�, �����ÿ��� �����ϱ⸦ ���� ������ ��Ͻ�û�� ���ֽø� �˴ϴ�.
                          </div></td>
                        <td style="color:silver">����������</td>
                    </tr>


                

                    
                

                    
                    
                
                
                </tbody>
            </table>



        </div>


    
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
</body>
</html>