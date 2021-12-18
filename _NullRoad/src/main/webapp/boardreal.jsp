<%@page import="Model.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<title>�Խ���</title>
<meta charset="UTF-8">
<meta name="description" content="Cryptocurrency Landing Page Template">
<meta name="keywords" content="cryptocurrency, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- Favicon -->
<link href="img/favicon.ico" rel="shortcut icon"/>

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/styleboard.css">
<link rel="stylesheet" href="css/resetboard.css">
<link rel="stylesheet" href="css/owl.carousel.css"/>
<link rel="stylesheet" href="css/style.css"/>
<link rel="stylesheet" href="css/width.css">
<script src="https://url.kr/g5/js/html5.js"></script>


</head>
<body>
<%
   MemberVO mvo=(MemberVO)session.getAttribute("mvo");
   String loginYN = "login.jsp?page=";
   String selflink = "boardreal.jsp";
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

<p>&nbsp;</p>
<main class="cd-main-content">
<!-- �Խ��� ��� ���� { -->
<div id="bo_list" style="width:95%">
    <!-- �Խ��� ������ ���� �� ��ư ���� { -->
    <div id="bo_btn_top">
        <div id="bo_list_total">
           
           
        </div>
      	 
    </div>
    <!-- } �Խ��� ������ ���� �� ��ư �� -->
    <div class="bo_reslist_hd">
        <ul>
            <li>
                <div class="s-number">��ȣ</div>
                <div class="s-subject">����</div>
                <div class="s-right">
                <div class="s-day">��¥</div>
                <div class="s-view">��ȸ</div>
                <div class="s-user">�۾���</div>
				</div>
            </li>
        </ul>
    </div>
    <div class="bo_reslist">
        <ul>
               
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
                <li class="">
                <div class="s-number">114</div>
                <div class="s-subject" style="padding-left:0px">
                    <div class="bo_tit">[������Ʈ]����!!! ��������!!!</div>
                </div>
                <div class="s-right">
                    <div class="s-user"><span class="sv_member">������</span></div>
                    <div class="s-view"><i class="fa fa-eye" aria-hidden="true"></i>11320</div>
                    <div class="s-day"></i>11-21</div>
                </div>
                </li>
               
               
	
        <div class="bo_fx">
                <ul class="btn_bo_user">
            <li><a href="write.html" class="btn_b03 btn"><i class="fa fa-pencil" aria-hidden="true"></i> �۾���</a></li>        </ul>	
            </div>
       
    </form>

    <div class="paginate" style="text-align:center; letter-spacing:10px;">
        <p>&nbsp;</p>
        <span class="num">
            <strong class="s-active" title="������ġ">1</strong>
            <a href="#">2</a>
            <a href="#">3</a>
            <a href="#">4</a>
            <a href="#">5</a>
            <a href="#">></a>
</main>
    
    
</div>
</div>
</div>



<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>




</body></html>