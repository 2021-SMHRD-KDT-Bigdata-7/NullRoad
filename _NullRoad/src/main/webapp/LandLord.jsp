<%@page import="java.util.ArrayList"%>
<%@page import="Model.ChartFeeVO"%>
<%@page import="Model.DAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>�ٰ����� �̺�Ʈ ����ϱ�2</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
    integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
    
    <!-- ��Ʈ ��ũ -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@3.6.2"></script>
    <script src="jquery-3.6.0.min.js"></script>
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

.area {
    position: absolute;
    background: #fff;
    border: 1px solid #888;
    border-radius: 3px;
    font-size: 15px;
    top: -5px;
    left: 15px;
    padding:2px;
}

.info {
    font-size: 12px;
    padding: 5px;
}
.info .title {
    font-weight: bold;
}
.map_wrap {width:100%;height:800px; display: inline-block;}
.title {font-weight:bold;display:block;}
#centerAddr {display:block;margin-top:2px;font-weight: normal;}
.bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}

.mychart{display:none}
.mychart.on{display:block;}

.login100-form-btn {
  font-size: 15px;
  line-height: 1.5;
  color: #fff;
  text-transform: uppercase;
  height: 35px;
  border-radius: 5px;
  background: #7e3bc3;
  display: inline;
  justify-content: center;
  align-items: center;
  padding: 0 15px;
  float:right;
  margin-right:10px;
 

  -webkit-transition: all 0.4s;
  -o-transition: all 0.4s;
  -moz-transition: all 0.4s;
  transition: all 0.4s;
}

.login100-form-btn:hover {
  background: #484748;
}
.content-table{
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    min-width: 400px;
    border-radius: 5px 5px 0 0;
    overflow: hidden;
    box-shadow : 0 0 20px rgba(0,0,0,0.15);
    text-align:center;
    margin:auto;
}
.content-table thead tr{
    background-color: #7e3bc3;
    color: #fff;
    text-align: left;
    font-weight: bold;
    text-align:center;
}
.content-table th,
.content-table td {
    padding:12px 15px;
    border-right: 1px solid #dddddd;
}
.content-table tbody tr{
    border-bottom: 1px solid #dddddd;
}
.content-table tbody tr:nth-of-type(even){
    background-color: #f3f3f3;
}
.content-table tbody tr:last-of-type{
    border-bottom: 2px solid #7e3bc3;
}

</style>
</head>
<body>


    <!-- Page Preloder -->
<div id="preloder">
	<div class="loader"></div>
</div>

	<!-- Header section -->
	<header class="header-section clearfix">
		<div class="container-fluid">
			<a href="main.html" class="site-logo" style="font-family: ImcreSoojin; font-size:40px;">
				nroad
			</a>
			<div class="responsive-bar" style="margin-top: 10px;"><i class="fa fa-bars" ></i></div>
			<a href="login.html" class="user" style="margin-top: 10px;"><i class="fa fa-user"></i></a>
			<a href="login.html" class="site-btn">�α���</a>
			<nav class="main-menu">
				
				<ul class="menu-list">
					<div class="dropdown">
						<button class="dropbtn"><b>About us&nbsp;</b></button>
						<div class="dropdown-content">
						  <a href="about.html">�����ǵ�</a>
						  <a href="gide.html">�����</a>

						</div>
					  </div>
					<div class="dropdown">
						<button class="dropbtn"><b>Community&nbsp;</b></button>
						<div class="dropdown-content">
						  <a href="#">����Խ���</a>
						  <a href="board.html">�����Խ���</a>

						</div>
					  </div>
					<div class="dropdown">
						<button class="dropbtn"><b>Service</b></button>
						<div class="dropdown-content">
						  <a href="contact.html">�����ϱ�</a>
						  <a href="one.html">1:1����</a>
						  <a href="#">Q&A</a>
						  <a href="mypage.html">����������</a>
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
    <div style="width:100%;height:100px;">

    </div>
<div class="map_wrap">
   <div id="map" style="width:100%;height:800px;"></div>
</div>

    
<div style="width:100% ;">
    
    <div id="chartBody" style="width:100% ;height:45%">
        
        <div class="mychart mychartsection2"> 
            <div class="col-md-12">
                <canvas id="myChartone" style="width:100vw ; height:30vh"></canvas>
            </div>
        </div>
        
        <div class="mychart on mychartsection1">
            <div class="col-md-12">
                <canvas id="myChartone1" style="width:100vw ; height:30vh"></canvas>
            </div>
        </div>

        <div class="chartTab">
                           
            <div>    
                <a href="#none"><button class="login100-form-btn" style="margin-right:40px">chart2</button></a>
                <a href="#none"><button class="login100-form-btn">chart1</button></a>
                <select name="1" id="1" style="float:right;">
                    <option selected>�� ����</option>
                    <option>����</option>
                    <option>�縲��</option>
                    <option>���ϵ�</option>
                </select>
            </div>
          
        </div>
        
        
    </div>
</div>
<br><br>   
    <div style="margin:10px"; id = "table";>
        <table class="content-table" id="data_table">
            <thead>
                <tr>
                    <th>�� ����</th>
                    <th>��ռ���</th>
                    <th>�̿� ��</th>
                    <th>���� ��</th>
                    <th>��� ����</th>
                    <th>��¥</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
               <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
                <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
              <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
             <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
          <tr>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>
    </div>

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


<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=8445119eec91da7b79b3d483e7f2d21a"></script>
<script>
      var polygons=[];
   $(document).ready(function () {
       $.getJSON('GJ.json', function(geojson){
            
          var data = geojson.features;
          var coordinates = [];
          var type = '';
          var name = '';
          
          $.each(data, function(index, val){
             //if(val.properties.SIG_CD.substring(0,2) == '45') {
                type = val.geometry.type;
                coordinates = val.geometry.coordinates;
                name = val.properties.EMD_NM;

                if(type == "MultiPolygon"){
                    console.log(coordinates);
                    //��Ƽ������ ���
                    displayArea(coordinates[0], name);                
                    displayArea(coordinates[1], name); 
                }else{
                    displayArea(coordinates, name);   
                }
            
             
          })
       });
   });  
   
       
       var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
      mapOption = { 
          center: new kakao.maps.LatLng(35.1595454, 126.8526012), // ������ �߽���ǥ
          level: 8 // ������ Ȯ�� ����
       };
       
       var map = new kakao.maps.Map(mapContainer, mapOption),
            customOverlay = new kakao.maps.CustomOverlay({}),
            infowindow = new kakao.maps.InfoWindow({removable: false});
       
       // �Ϲ� ������ ��ī�̺�� ���� Ÿ���� ��ȯ�� �� �ִ� ����Ÿ�� ��Ʈ���� �����մϴ�
       var mapTypeControl = new kakao.maps.MapTypeControl();

       // ������ ��Ʈ���� �߰��ؾ� �������� ǥ�õ˴ϴ�
       // kakao.maps.ControlPosition�� ��Ʈ���� ǥ�õ� ��ġ�� �����ϴµ� TOPRIGHT�� ������ ���� �ǹ��մϴ�
       map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

       // ���� Ȯ�� ��Ҹ� ������ �� �ִ�  �� ��Ʈ���� �����մϴ�
       var zoomControl = new kakao.maps.ZoomControl();
       map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);
    // �ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
       var geocoder = new kakao.maps.services.Geocoder();

       var marker = new kakao.maps.Marker(), // Ŭ���� ��ġ�� ǥ���� ��Ŀ�Դϴ�
           infowindow = new kakao.maps.InfoWindow({zindex:1}); // Ŭ���� ��ġ�� ���� �ּҸ� ǥ���� �����������Դϴ�

       function centroid(points){
         var i,j, len, p1, p2, f, area, x, y;
         
         area = x = y = 0;
         
         for(i=0, len = points.length, j = len - 1; i < len; j = i++){
            p1 = points[i];
            p2 = points[j];
            
            f = p1.y * p2.x - p2.y * p1.x;
            x += (p1.x + p2.x) * f;
            y += (p1.y + p2.y) * f;
            area += f * 3;
         }
         return new kakao.maps.LatLng(x/area, y/area);
      }
     
      
      function deletePolygon(polygons){
         for(var i=0; i<polygons.length; i++){
            polygons[i].setMap(null);
         }
         polygons = [];
      }
       
       function displayArea(coordinates, name){
          var path = [];
          var points = [];
          //console.log(coordinates[0]);
          $.each(coordinates[0], function(index, coordinate){     
             var point = new Object();
             point.x = coordinate[1];
             point.y = coordinate[0];
             points.push(point);
             path.push(new kakao.maps.LatLng(point.x,point.y));
          })

         
          var polygon = new kakao.maps.Polygon({
                map : map, // �׷��� �ٰ����� ��ǥ �迭�Դϴ�
                path : path,
                strokeWeight: 1,
                strokeColor: '#004c80',
                strokeOpacity: 1,
                fillColor: '#fff',
                fillOpacity: 0.5
            });
       
           
        polygons.push(polygon);
        

        
        
        
        
    // �ٰ����� mouseover �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� �������� ä����� �����մϴ� 
        // �������� ǥ���ϴ� Ŀ���ҿ������̸� �������� ǥ���մϴ�
        kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
            polygon.setOptions({fillColor: '#50bcdf'});
         
            customOverlay.setContent('<div class="area">' + name + '</div>');
            
            customOverlay.setPosition(mouseEvent.latLng); 
            customOverlay.setMap(map);
        });

     // �ٰ����� mousemove �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� Ŀ���� ���������� ��ġ�� �����մϴ� 
        kakao.maps.event.addListener(polygon, 'mousemove', function(mouseEvent) {
            
            customOverlay.setPosition(mouseEvent.latLng); 
        });
     
     // �ٰ����� mouseout �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� �������� ä����� ���������� �����մϴ�
        // Ŀ���� �������̸� �������� �����մϴ� 
        kakao.maps.event.addListener(polygon, 'mouseout', function() {
            polygon.setOptions({fillColor: '#fff'});
            customOverlay.setMap(null);
        }); 
     
     // �ٰ����� click �̺�Ʈ�� ����ϰ� �̺�Ʈ�� �߻��ϸ� �ٰ����� �̸��� ��躸�� ���������쿡 ǥ���մϴ� 
        kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
         var content = '<div class="info">' + 
            '<div class="title">' + name +'<br>'+ 
            '<a href="#fuck" onclick="callFunction()">��� ��������</a>'   +
            '</div>'
            ;
               
         
               infowindow.setContent(content); 
               infowindow.setPosition(mouseEvent.latLng); 
               infowindow.setMap(map, marker);
                    
        }); 
    }
                  
        function searchAddrFromCoords(coords, callback) {
            // ��ǥ�� ������ �ּ� ������ ��û�մϴ�
            geocoder.coord2RegionCode(coords.getLng(), coords.getLat(), callback);         
        }
               
        function searchDetailAddrFromCoords(coords, callback) {
            // ��ǥ�� ������ �� �ּ� ������ ��û�մϴ�
            geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
        }
      

               

</script>

<script>

    // ��Ʈ ��
    $(".chartTab a:nth-child(1)").click(
        function(){
            $(".mychartsection1").removeClass("on");
            $(".mychartsection2").removeClass("on");
            $(".mychartsection1").addClass("on");
        }
    );
    $(".chartTab a:nth-child(2)").click(
        function(){
            $(".mychartsection1").removeClass("on");
            $(".mychartsection2").removeClass("on");
            $(".mychartsection2").addClass("on");
        }
    );
    
        // ��Ʈ ����
    var myChartone = document.getElementById('myChartone').getContext('2d');
    var myChartone1 = document.getElementById('myChartone1').getContext('2d');

    
    //�̿��ڼ�, ���ͱ���
    var myChart = new Chart(myChartone, {
        type: 'line',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [122153, 192323, 32323, 52233, 22323, 232323],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
            
            
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
    var myChart = new Chart(myChartone1, {
        type: 'line',
        data: {
            labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
            datasets: [{
                label: '# of Votes',
                data: [1200, 1900, 300, 500, 200, 300],
                backgroundColor: [
                    'rgba(255, 99, 132, 0.2)',
                    'rgba(54, 162, 235, 0.2)',
                    'rgba(255, 206, 86, 0.2)',
                    'rgba(75, 192, 192, 0.2)',
                    'rgba(153, 102, 255, 0.2)',
                    'rgba(255, 159, 64, 0.2)'
                ],
                borderColor: [
                    'rgba(255, 99, 132, 1)',
                    'rgba(54, 162, 235, 1)',
                    'rgba(255, 206, 86, 1)',
                    'rgba(75, 192, 192, 1)',
                    'rgba(153, 102, 255, 1)',
                    'rgba(255, 159, 64, 1)'
                ],
                borderWidth: 1
            }]
        },
        options: {
    
            
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }]
            }
        }
    });
    </script>
    <script type="text/javascript">
    <%
	DAO dao = new DAO();
	ArrayList<ChartFeeVO> cfvo = dao.chartData();
	%>
	let emdong = "���ϵ�";
	let static_data = <%=cfvo%>
	callFunction(emdong);
	
    $(function callFunction(let emdong) {
    let SQL = ["�Ѽ���","��ռ���","�̿� ��","���� ��","��� ����","��¥"];
    
    for (let statics : static_data){
    	console.log(statics[0]);
    	console.log(statics[1]);
    	console.log(statics[2]);
    	console.log(statics[3]);
    	console.log(statics[4]);
    	}
		var tr_length = $('#data_table tr').length;
		var td_length = $('#data_table td').length;
		var tab_td = $('#data_table td');//tb ���̺��� td�� �ҷ�����
			for (var i = 0; i < tr_length; i++) {
    			for (var j = 0; j < td_length; j++) {
        			$("#data_table tr:eq("+i+") td:eq("+j+")").html(SQL[j]);
	    		}
			}
		});
    </script>

</body>
</html>