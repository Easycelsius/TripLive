<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>WorldWeather</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
<link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">

<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js" type="text/javascript"></script>

<script>
	$(function() {

		function timeConverter(UNIX_timestamp){
			var a = new Date(UNIX_timestamp * 1000);
			var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
			var year = a.getFullYear();
			var month = months[a.getMonth()];
			var date = a.getDate();
			var hour = a.getHours();
			var min = a.getMinutes();
			var sec = a.getSeconds();
			var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec ;
			return time;
		}

		var apiURI = 'http://api.openweathermap.org/data/2.5/forecast?id=1835848&appid=1db47184ebbc18af53fd996be840d270'

		$.ajax({
            url: apiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
                console.log(resp);
                // console.log("현재온도 : "+ (resp.main.temp- 273.15) );
                // console.log("현재습도 : "+ resp.main.humidity);
                // console.log("날씨 : "+ resp.weather[0].main );
                // console.log("상세날씨설명 : "+ resp.weather[0].description );
                // console.log("날씨 이미지 : "+ resp.weather[0].icon );
                // console.log("바람   : "+ resp.wind.speed );
                // console.log("나라   : "+ resp.sys.country );
                // console.log("도시이름  : "+ resp.name );
                // console.log("구름  : "+ (resp.clouds.all) +"%" );
				// var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
				// console.log(resp.dt)
				console.log(timeConverter(1622775600 - 32400))
            }
        })

		// const NUMBER_CFG = {count: DATA_COUNT, min: -100, max: 100};

		const labels = [
			'00시',
			'03시',
			'06시',
			'09시',
			'12시',
			'15시',
			'18시',
			'21시'
		];

		const data = {
			labels: labels,
			datasets: [
				{
					label: '강수량',
					data: [-12, 19, 3, 5, 2, 3, 14, 6],
					backgroundColor: [
						'rgba(54, 162, 235, 0.2)'
					],
					borderColor: [
						'rgba(54, 162, 235, 0.2)'
					],
					order: 1
				},
				{
					label: '기온',
					data: [0, 1, 7, 1, 12, 5, 9, 13],
					backgroundColor: [
						'rgba(255, 99, 132, 1)'
					],
					borderColor: [
						'rgba(255, 99, 132, 1)'
					],
					type: 'line',
					order: 0
				}
			]
		};

		const config = {
			type: 'bar',
			data: data,
			options: {
				responsive: true,
				plugins: {
					legend: {
						position: 'top',
					},
					title: {
						display: true,
					}
				}
			},
		};

		var myChart = new Chart(
			document.getElementById('myChart'),
			config
		);
	})

</script>

</head>

<body>

<div class="super_container">
	
	<!-- 헤더 -->
	<%@include file ="../header.jsp" %>
	<!-- 헤더 종료 -->

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../images/about_background.jpg">
		</div>
		<div class="home_content">
			<div class="home_title">World Weather</div>
		</div>
	</div>

	<div class="offers">
		<div class="container">
			<div class="row">
				<div class="col-lg-1 temp_col"></div>
				<div class="col-lg-11">
					<!-- Offers Sorting -->
					<div class="offers_sorting_container">
						<ul class="offers_sorting">
							<li>
								<span class="sorting_text">price</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".price_sorting"><span>show all</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>ascending</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">location</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>default</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>alphabetical</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">stars</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="filter_btn" data-filter="*"><span>show all</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "stars" }'><span>ascending</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>3</span></li>
									<li class="filter_btn" data-filter=".rating_4"><span>4</span></li>
									<li class="filter_btn" data-filter=".rating_5"><span>5</span></li>
								</ul>
							</li>
							<li class="distance_item">
								<span class="sorting_text">distance from center</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="num_sorting_btn"><span>distance</span></li>
									<li class="num_sorting_btn"><span>distance</span></li>
									<li class="num_sorting_btn"><span>distance</span></li>
								</ul>
							</li>
							<li>
								<span class="sorting_text">reviews</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="num_sorting_btn"><span>review</span></li>
									<li class="num_sorting_btn"><span>review</span></li>
									<li class="num_sorting_btn"><span>review</span></li>
								</ul>
							</li>
						</ul>
					</div>
				</div>
			</div>

			<%-- 본문 --%>

			<div class="row">
			<%-- 지도 --%>
				<div class="col-lg-6">
					<img src='../img/CN.png'/>
				</div>

				<%-- 날씨 --%>
				<div class="col-lg-6">
					<p>날씨</p>
				</div>
			</div>

			<%-- 그래프 --%>	
			<div>
				<canvas id="myChart"></canvas>
			</div>
			
		</div>		
	</div>

	<!-- Footer -->
	<%@include file ="../footer.jsp" %>

</div>

<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../styles/bootstrap4/popper.js"></script>
<script src="../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../plugins/easing/easing.js"></script>
<script src="../plugins/parallax-js-master/parallax.min.js"></script>
<script src="../js/offers_custom.js"></script>

</body>

</html>