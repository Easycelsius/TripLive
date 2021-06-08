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

<script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

<script>
	let map;
	let lat;
	let lng;

	// 현재 날씨
	var CurrentApiURI = 'http://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=1db47184ebbc18af53fd996be840d270'
	
	$.ajax({
		url: CurrentApiURI,
		dataType: "json",
		type: "GET",
		async:false,
		success: function(resp) {
			lat = resp.coord.lat
			lng = resp.coord.lon
			// console.log("ajax", lat)
			// console.log("ajax", lat)
		}
	})

	// console.log("normal", lat)
	// console.log("normal", lat)

	function initMap() {

		// console.log("initMap", lat)
		// console.log("initMap", lat)

		map = new google.maps.Map(document.getElementById("map"), {
			center: { lat: lat, lng: lng },
			zoom: 13,
		});
	}

	$(function() {
		function timeConverterDay(UNIX_timestamp){
			var a = new Date(UNIX_timestamp * 1000);
			var b = new Date(a.getTime() + (a.getTimezoneOffset() * 60000));

			return b.getDate() + '일 ' + b.getHours() + '시';
		}	

		function timeConverterCurrent(UNIX_timestamp){
			var a = new Date(UNIX_timestamp * 1000);
			var b = new Date(a.getTime() + (a.getTimezoneOffset() * 60000));
			return  (b.getMonth() + 1) + '월 ' + + b.getDate() + '일 ' + b.getHours() + ':' + b.getMinutes();
		}		

		const labels = [
		];

		const data = {
			labels: [],
			datasets: [
				{
					label: '비 올 확률(%)',
					data: [],
					backgroundColor: [
						'rgba(54, 162, 235, 0.2)'
					],
					borderColor: [
						'rgba(54, 162, 235, 0.2)'
					],
					order: 1
				},
				{
					label: '기온(℃)',
					data: [],
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

		// 현재 날씨
		var CurrentApiURI = 'http://api.openweathermap.org/data/2.5/weather?q=Singapore&appid=1db47184ebbc18af53fd996be840d270'
		
		$.ajax({
            url: CurrentApiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
                console.log(resp);
				var city = resp.name + ', ' + resp.sys.country
				var update = timeConverterCurrent(resp.dt + resp.timezone) + ' 갱신'
				var temp = parseFloat((resp.main.temp - 273.15).toFixed(1)) + '℃ '
				var feelTemp = '(' + parseFloat((resp.main.feels_like - 273.15).toFixed(1)) + '℃)'
				var humidity = resp.main.humidity + '%'
				var windSpeed = resp.wind.speed + 'm/s'
				var rain = '-'

				// lat = resp.coord.lat
				// lng = resp.coord.lon

				console.log(lat)
				console.log(lat)

				if (resp.rain) {
					var rain = resp.rain['1h'] + '㎜'
				}
				console.log(rain)
				var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png"

				$('#currentUpdate').text(update)
				$('#currentCity').text(city)
				$('#currentTemp').text(temp)
				$('#currentFeelTemp').text(feelTemp)
				$('#currentHumidity').text(humidity)
				$('#currentWindSpeed').text(windSpeed)
				$('#currentRain').text(rain)
				$('#currentIcon').attr('src', imgURL)
            }
        })
		
		// 일일 날씨
		var DayApiURI = 'http://api.openweathermap.org/data/2.5/forecast?q=Singapore&appid=1db47184ebbc18af53fd996be840d270'

		$.ajax({
            url: DayApiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
				for (var i = 0; i < 8; i++) {
					config.data.datasets[1].data.push(parseFloat((resp.list[i].main.temp - 273.15).toFixed(1)))
					config.data.datasets[0].data.push(resp.list[i].pop * 100)	
					config.data.labels.push(timeConverterDay(resp.list[i].dt + resp.city.timezone))

					var icon = '#icon' + i
					var imgURL = "http://openweathermap.org/img/w/" + resp.list[i].weather[0].icon + ".png"
					$(icon).attr('src', imgURL)
				}

				var myChart = new Chart(
					document.getElementById('myChart'),
					config
				);
            }
        })
	})
</script>

<style>
	.currentWeather {
		color: black;
	}

	#currentIcon {
		width: 10em;
		height: 10em;
	}

	#map {
		height: 100%;
	}
</style>

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

			<div class="row" style="margin-top: 50px">
			<%-- 지도 --%>
				<div class="col-lg-6">
					<div id="map"></div>
				</div>

				<%-- 날씨 --%>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-8"></div>
						<h5 class="col-lg-4 currentWeather" id="currentUpdate"></h5>
						<div class="col-12">
							<div class="row mx-auto justify-content-center">
								<h1 class="currentWeather" id="currentCity"></h1>
							</div>
						</div>
						<div class="col-12">
							<div class="row mx-auto justify-content-center">
								<h4 class="currentWeather" id="currentTemp"></h4>
								<h4 class="currentWeather" style="color:black">&nbsp체감</h4>
								<h4 class="currentWeather" id="currentFeelTemp"></h4>
							</div>
						</div>
						<div class="row mx-auto">
							<img id="currentIcon" src=""/>				
						</div>
					</div>
					
					<div class="row col-md-1Div d-flex justify-content-center">
						<div class="mx-auto" style="text-align:center">
							<h4 class="currentWeather">습도</h4>
							<h4 class="currentWeather" id="currentHumidity"></h4>
						</div>
						<div class="mx-auto" style="text-align:center">
							<h4 class="currentWeather">바람</h4>
							<h4 class="currentWeather" id="currentWindSpeed"></h4>
						</div>
						<div class="mx-auto" style="text-align:center">
							<h4 class="currentWeather">강수량</h4>
							<h4 class="currentWeather" id="currentRain"></h4>
						</div>
					</div>
				</div>
			</div>

			<%-- 그래프 --%>	
			<div>
				<canvas id="myChart"></canvas>
			</div>

			<div class="icon col-md-1Div d-flex justify-content-center float-right" style="width:98%">
				<div class="icon mx-auto"><img id="icon0" src=""/></div>
				<div class="icon mx-auto"><img id="icon1" src=""/></div>
				<div class="icon mx-auto"><img id="icon2" src=""/></div>
				<div class="icon mx-auto"><img id="icon3" src=""/></div>
				<div class="icon mx-auto"><img id="icon4" src=""/></div>
				<div class="icon mx-auto"><img id="icon5" src=""/></div>
				<div class="icon mx-auto"><img id="icon6" src=""/></div>
				<div class="icon mx-auto"><img id="icon7" src=""/></div>
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

<!-- Async script executes immediately and must be after any DOM elements used in callback. -->
<script 
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbF_v_BwkfrA_VOdxySPYycBwMd2WkVag&callback=initMap&libraries=&v=weekly"
	async
></script>
</body>

</html>