<%@page import="Model.MemberVO"%>
<%@page import="Model.ParkableVO"%>
<%@page import="Model.ReservationVO"%>
<%@page import="Model.ParkingVO"%>
<%@page import="Model.DAO"%>
<%@page import="Model.BuildingVO"%>
<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<title>����</title>
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
	<link rel="stylesheet" href="css/animate.css"/>
	<link rel="stylesheet" href="css/owl.carousel.css"/>
	<link rel="stylesheet" href="css/style.css"/>


<style>
img {
        max-width: 100%;
      }
        .spad{
            padding-top:50px;
        }
      
        .jb-a {
            
          width: 400px;
          margin: 0px auto;
          position: relative
          
        }
        .jb-c {
          position: absolute;
          top: 0px;
          left: 0px;
          display: none;
        }
        .jb-a:hover .jb-c {
          display: block;
        }
        .jb-c {
          position: absolute;
           top: 0px;
          left: 0px;
          opacity: 0;
          transition: opacity 0.5s linear;
  }
      .jb-a:hover .jb-c {
           opacity: 1;
  }



.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff; display:none;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
#placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png) no-repeat;}
#placesList .item .marker_1 {background-position: 0 -10px;}
#placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}

.overlaybox {position:relative;width:360px;height:350px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/box_movie.png') no-repeat;padding:15px 10px;}
        .overlaybox li {list-style: none;}
        .overlaybox .boxtitle {color:#fff;font-size:16px;font-weight:bold;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png') no-repeat right 120px center;margin-bottom:8px;}
        .overlaybox .first {position:relative;width:247px;height:136px;margin-bottom:8px;}
        .first .text {color:#fff;font-weight:bold;}
        
        .first .movietitle {position:absolute;width:100%;bottom:0;background:rgba(0,0,0,0.4);padding:7px 15px;font-size:14px;}
        .overlaybox ul {width:247px;}
        .overlaybox li {position:relative;margin-bottom:2px;background:#2b2d36;padding:5px 10px;color:#aaabaf;line-height: 1;}
        .overlaybox li span {display:inline-block;}
        
        .overlaybox li .title {font-size:13px;}
         
        .overlaybox li .up {background-position:0 -40px;}
        .overlaybox li .down {background-position:0 -60px;}
        
        .overlaybox li:hover {color:#fff;background:#d24545;}
        .overlaybox li:hover .up {background-position:0 0px;}
        .overlaybox li:hover .down {background-position:0 -20px;}   
         .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '����', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
    .close {position: absolute;top: 17px;right: 124px;color: rgb(238, 31, 31);width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
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
#ressel {
  margin-top:20px;
  margin-left:70px;
  font-family: Montserrat-Bold;
  font-size: 15px;
  line-height: 1.5;
  color: #fff;
  text-transform: uppercase;
  height: 40px;
  border-radius: 5px;
  background: #7e3bc3;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;


  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

#ressel:hover {
  background: #484748;
}

.login100-form-btn {
  font-family: Montserrat-Bold;
  font-size: 15px;
  line-height: 1.5;
  color: #fff;
  text-transform: uppercase;
  height: 40px;
  border-radius: 5px;
  background: #7e3bc3;
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 0 20px;

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn:hover {
  background: #484748;
}
li.sj{
background:none;}
    
</style>
</head>
<body>
<%
   MemberVO mvo=(MemberVO)session.getAttribute("mvo");
   String loginYN = "login.jsp?page=";
   String selflink = "MapTest.jsp";
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
	
    <div class="map_wrap">
        <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>
        <p>
        <div class="container-login100-form-btn">
            <button onclick="setOverlayMapTypeId('traffic')" class="login100-form-btn">�������� ����</button> &nbsp;
            <button id="navi" href="#" onclick="myKakaoNavi1()" class="login100-form-btn">����</button>&nbsp;
            <button onclick="onDisplay()" class="login100-form-btn">�˻�â ���̱�</button>&nbsp;
            <button onclick="offDisplay()" class="login100-form-btn">�˻�â �����</button>
            </p>
        </div>
        <div id="menu_wrap" class="bg_white">
            <div class="option">
                <div>
                    <form onsubmit="searchPlaces(); return false;">
                        Ű���� : <input type="text" value="����" id="keyword" size="15"> 
                        <button type="submit">�˻��ϱ�</button> 
                    </form>
                </div>
            </div>
            <hr>
            <ul id="placesList"></ul>
            <div id="pagination"></div>
        </div>
    </div>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f10bde5d4f1ce8537df658a268a51e2&libraries=services,clusterer"></script>
    <script>
    var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
        mapOption = { 
            center: new kakao.maps.LatLng(33.450705, 126.570677), // ������ �߽���ǥ
            level: 4 // ������ Ȯ�� ����
        };
    
    var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�
   
    var markers = [];
    var marker=[];
    <%
    	DAO dao = new DAO();
		// ���߿� ���ļ� ����
		//ArrayList<BuildingVO> positions = new ArrayList<BuildingVO>();
		ArrayList<BuildingVO> bldlist=dao.BldSel();
		ArrayList<ParkingVO> prklist=dao.PrkSel();
		ArrayList<ReservationVO> reslist=dao.ResSel();
		ArrayList<BuildingVO> bldhidon=dao.BldHidOn();
		ArrayList<ParkableVO> prkablelist=dao.Prkable();
		//�ӽ� ������
		
    %>
    var overlay=[];
    var positions = [];
    
    
    //���� ���� �ֱ�
    <%for(int i = 0; i < bldhidon.size(); i++){%>
	    var content = '<div class="overlaybox">' +
	    '    <div class="boxtitle"><%=bldhidon.get(i).getBld_name()%></div>' +
	            '            <div class="close" onclick="closeOverlay(<%=i %>)" title="�ݱ�"></div>' +
	    '    <div class="first" style="background:url(./img/<%=bldhidon.get(i).getBld_picture1()%>)">' +
	    
	    '        <div class="movietitle text">��밡���� ������� <%for(int j=0; j<prkablelist.size();j++){if(bldhidon.get(i).getBld_seq()==prkablelist.get(j).getBld_seq()){%><%=prkablelist.get(j).getBld_prkable()%><%}}%></div>' +
	    '    </div>' +
	    '    <ul>' +
	    '        <li>' +
	    '            <span class="title"><%=bldhidon.get(i).getSigungu()%> <%=bldhidon.get(i).getEmdong()%> <%=bldhidon.get(i).getDetail_addr()%></span>' +
	    '        </li>' +
	    '        <li>' +
	    				
	    '            <span class="title">�ð��� <%=dao.PrkFeeSelect(bldhidon.get(i).getBld_seq())%> ��</span>' +
	    

	    '        </li>' +
	    '        <li class = "sj">' +
	    			
	    '            <button id="ressel" onclick = "clickFunction(<%=bldhidon.get(i).getBld_seq()%>)">����</button>' +
    			
	    
	    '        </li>' +
	    
	    '    </ul>' +
	    '</div>';
    	
    	positions.push({
    		title : '<%=bldhidon.get(i).getBld_name() %>',
    		latlng: new kakao.maps.LatLng(<%=bldhidon.get(i).getBld_lati() %>, <%=bldhidon.get(i).getBld_longi() %>),
        	content:content
    	});
    <%}%>
    
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // ��Ŀ���� Ŭ�����ͷ� �����ϰ� ǥ���� ���� ��ü 
        averageCenter: true, // Ŭ�����Ϳ� ���Ե� ��Ŀ���� ��� ��ġ�� Ŭ������ ��Ŀ ��ġ�� ���� 
        minLevel: 10 // Ŭ������ �� �ּ� ���� ���� 
    }); 
    
    for (let i = 0; i < positions.length; i ++) {
        
        // ��Ŀ�� �����մϴ�
            marker[i] = new kakao.maps.Marker({
            map: map, // ��Ŀ�� ǥ���� ����
            position: positions[i].latlng, // ��Ŀ�� ǥ���� ��ġ
            title : positions[i].title, // ��Ŀ�� Ÿ��Ʋ, ��Ŀ�� ���콺�� �ø��� Ÿ��Ʋ�� ǥ�õ˴ϴ�
            // image : markerImage // ��Ŀ �̹��� 
        });
        overlay[i] = new kakao.maps.CustomOverlay({
            content: positions[i].content,
            map: map,
            position:positions[i].latlng,
            xAnchor: 0.3,
            yAnchor: 0.99         
        });
        
            kakao.maps.event.addListener(marker[i], 'click', function() {
            return function() {
             overlay[i].setMap(map);
             
            
         };
        }(overlay));
                
        overlay[i].setMap(null);
        
    };
    
    
    // Ŭ�����ͷ��� ��Ŀ���� �߰��մϴ�
    clusterer.addMarkers(marker);
    
        function openOverlay(overlay) {
        overlay.setMap(map);     
    }
    
    function closeOverlay(k) {

            overlay[k].setMap(null);     
        
        
    }
    function selectRes(i){
    	bldhidon[i]
    }
    
    // ��� �˻� ��ü�� �����մϴ�
    var ps = new kakao.maps.services.Places();  
    
    
    // �˻� ��� ����̳� ��Ŀ�� Ŭ������ �� ��Ҹ��� ǥ���� ���������츦 �����մϴ�
    var infowindow = new kakao.maps.InfoWindow({zIndex:1});
    
    // Ű����� ��Ҹ� �˻��մϴ�
    searchPlaces();
    
    // Ű���� �˻��� ��û�ϴ� �Լ��Դϴ�
    function searchPlaces() {
    
        var keyword = document.getElementById('keyword').value;
    
        if (!keyword.replace(/^\s+|\s+$/g, '')) {
            alert('Ű���带 �Է����ּ���!');
            return false;
        }
    
        // ��Ұ˻� ��ü�� ���� Ű����� ��Ұ˻��� ��û�մϴ�
        ps.keywordSearch( keyword, placesSearchCB); 
    }
    
    // ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
    function placesSearchCB(data, status, pagination) {
        if (status === kakao.maps.services.Status.OK) {
    
            // ���������� �˻��� �Ϸ������
            // �˻� ��ϰ� ��Ŀ�� ǥ���մϴ�
            displayPlaces(data);
    
            // ������ ��ȣ�� ǥ���մϴ�
            displayPagination(pagination);
    
        } else if (status === kakao.maps.services.Status.ZERO_RESULT) {
    
            alert('�˻� ����� �������� �ʽ��ϴ�.');
            return;
    
        } else if (status === kakao.maps.services.Status.ERROR) {
    
            alert('�˻� ��� �� ������ �߻��߽��ϴ�.');
            return;
    
        }
    }
    
    // �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
    function displayPlaces(places) {
    
        var listEl = document.getElementById('placesList'), 
        menuEl = document.getElementById('menu_wrap'),
        fragment = document.createDocumentFragment(), 
        bounds = new kakao.maps.LatLngBounds(), 
        listStr = '';
        
        // �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
        removeAllChildNods(listEl);
    
        // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
        removeMarker();
        
        for ( var i=0; i<places.length; i++ ) {
    
            // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
            var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
                marker = addMarker(placePosition, i), 
                itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ�
    
            // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
            // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
            bounds.extend(placePosition);
    
            // ��Ŀ�� �˻���� �׸� mouseover ������
            // �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
            // mouseout ���� ���� ���������츦 �ݽ��ϴ�
            (function(marker, title) {
                kakao.maps.event.addListener(marker, 'mouseover', function() {
                    displayInfowindow(marker, title);
                });
    
                kakao.maps.event.addListener(marker, 'mouseout', function() {
                    infowindow.close();
                });
    
                itemEl.onmouseover =  function () {
                    displayInfowindow(marker, title);
                };
    
                itemEl.onmouseout =  function () {
                    infowindow.close();
                };
            })(marker, places[i].place_name);
    
            fragment.appendChild(itemEl);
        }
    
        // �˻���� �׸���� �˻���� ��� Elemnet�� �߰��մϴ�
        listEl.appendChild(fragment);
        menuEl.scrollTop = 0;
    
        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
        map.setBounds(bounds);
    }
    
    // �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
    function getListItem(index, places) {
    
        var el = document.createElement('li'),
        itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                    '<div class="info">' +
                    '   <h5>' + places.place_name + '</h5>';
    
        if (places.road_address_name) {
            itemStr += '    <span>' + places.road_address_name + '</span>' +
                        '   <span class="jibun gray">' +  places.address_name  + '</span>';
        } else {
            itemStr += '    <span>' +  places.address_name  + '</span>'; 
        }
                     
          itemStr += '  <span class="tel">' + places.phone  + '</span>' +
                    '</div>';           
    
        el.innerHTML = itemStr;
        el.className = 'item';
    
        return el;
    }
    
    // ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
    function addMarker(position, idx, title) {
        var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
            imageSize = new kakao.maps.Size(36, 37),  // ��Ŀ �̹����� ũ��
            imgOptions =  {
                spriteSize : new kakao.maps.Size(36, 691), // ��������Ʈ �̹����� ũ��
                spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
                offset: new kakao.maps.Point(13, 37) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
            },
            markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
                marker = new kakao.maps.Marker({
                position: position, // ��Ŀ�� ��ġ
                image: markerImage 
            });
    	
        marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
        markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�
    	
        return marker;
    }
    
    // ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
    function removeMarker() {
        for ( var i = 0; i < markers.length; i++ ) {
            markers[i].setMap(null);
        }   
        markers = [];
    }
    
    // �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
    function displayPagination(pagination) {
        var paginationEl = document.getElementById('pagination'),
            fragment = document.createDocumentFragment(),
            i; 
    
        // ������ �߰��� ��������ȣ�� �����մϴ�
        while (paginationEl.hasChildNodes()) {
            paginationEl.removeChild (paginationEl.lastChild);
        }
    
        for (i=1; i<=pagination.last; i++) {
            var el = document.createElement('a');
            el.href = "#";
            el.innerHTML = i;
    
            if (i===pagination.current) {
                el.className = 'on';
            } else {
                el.onclick = (function(i) {
                    return function() {
                        pagination.gotoPage(i);
                    }
                })(i);
            }
    
            fragment.appendChild(el);
        }
        paginationEl.appendChild(fragment);
    }
    
    // �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
    // ���������쿡 ��Ҹ��� ǥ���մϴ�
    function displayInfowindow(marker, title) {
        var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';
    
        infowindow.setContent(content);
        infowindow.open(map, marker);
    }
    
     // �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
    function removeAllChildNods(el) {   
        while (el.hasChildNodes()) {
            el.removeChild (el.lastChild);
        }
    }
    //Kakao.init('6f10bde5d4f1ce8537df658a268a51e2');
    function myKakaoNavi1() {
        Kakao.Navi.start({
            name:"��������",
            x:127.026581,
            y:37.49887,
            coordType:'wgs84'
        })
    }
    // ������ �߰��� ����Ÿ�������� ������ ���� �����Դϴ�
var currentTypeId;

    // �����ư �������� ���� ����
	
var test=0;
	function clickFunction(data){
    		
    	
			//1. ������ ������ �����ϱ�
			<%-- <% 
			System.out.print("������");

			HttpSession session2 = request.getSession();
			session2.setAttribute("bldhidon", bldhidon.get(data));
			%> --%>
			
			console.log("test"+data);
			test=data;
			

			//2. �̵�
			location.href = "booking.jsp?data="+data;
			sessionStorage.setItem("bldhidon", test);
		
	}
    

// ��ư�� Ŭ���Ǹ� ȣ��Ǵ� �Լ��Դϴ�
function setOverlayMapTypeId(maptype) {
    var changeMaptype;
    
    // maptype�� ���� ������ �߰��� ����Ÿ���� �����մϴ�
    if (maptype === 'traffic') {            
        
        // �������� ����Ÿ��
        changeMaptype = kakao.maps.MapTypeId.TRAFFIC;     
        
    } 
    
    // �̹� ��ϵ� ���� Ÿ���� ������ �����մϴ�
    if (currentTypeId) {
        map.removeOverlayMapTypeId(currentTypeId);    
    }
    
    // maptype�� �ش��ϴ� ����Ÿ���� ������ �߰��մϴ�
    map.addOverlayMapTypeId(changeMaptype);
    
    // ������ �߰��� Ÿ�������� �����մϴ�
    currentTypeId = changeMaptype;        
}
	function onDisplay() {
		$('.bg_white').show();
	}
	function offDisplay() {
		$('.bg_white').hide();
		removeMarker();
	}
    </script>
    <!-- Footer section -->
    <p>&nbsp;</p><p>&nbsp;</p>
	<footer class="footer-section">
		<div class="container">
			<div class="row spad">


				<div class="footer-bottom">
					<div class="row">

						<div class="col-lg-8 text-center text-lg-right">
							<ul class="footer-nav">
								<li><a href=""></a></li>
								<li><a href="">King Jo</a></li>
								<li><a href="">60, Songam-ro, Nam-gu, Gwangju, Republic
										of Korea</a></li>
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
	
	<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet"> 
	<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script> 
	<script src="https://code.jquery.com/jquery-1.11.3.min.js"></script> 
    </body>    
</html>