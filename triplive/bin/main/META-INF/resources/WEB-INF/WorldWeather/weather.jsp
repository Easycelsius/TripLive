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
			var b = new Date(a.getTime() + (a.getTimezoneOffset() * 60000));
			console.log(b.getDate())
			

			// var months = ['Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'];
			// var year = b.getFullYear();
			// var month = months[b.getMonth()];
			// var date = b.getDate();
			// var hour = b.getHours();
			// var min = b.getMinutes();
			// var sec = b.getSeconds();
			// var time = date + ' ' + month + ' ' + year + ' ' + hour + ':' + min + ':' + sec ;
			// console.log(date)

			return b.getDate() + '일 ' + b.getHours() + '시';
		}		

		const labels = [
		];

		const data = {
			labels: [],
			datasets: [
				{
					label: '비 올 확률',
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
					label: '기온',
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

		// var CurrentApiURI = 'http://api.openweathermap.org/data/2.5/forecast?q=Seoul&appid=1db47184ebbc18af53fd996be840d270'

		// // 현재 날씨
		// $.ajax({
        //     url: CurrentApiURI,
        //     dataType: "json",
        //     type: "GET",
        //     async: "false",
        //     success: function(resp) {
        //         console.log(resp);

		// 		for (var i = 0; i < 8; i++) {
		// 			config.data.datasets[1].data.push(parseFloat((resp.list[i].main.temp - 273.15).toFixed(1)))
		// 			config.data.datasets[0].data.push(resp.list[i].pop * 100)
		// 		}

		// 		var myChart = new Chart(
		// 			document.getElementById('myChart'),
		// 			config
		// 		);
        //     }
        // })

		

		var DayApiURI = 'http://api.openweathermap.org/data/2.5/forecast?q=Seoul&appid=1db47184ebbc18af53fd996be840d270'

		// 일일 날씨
		$.ajax({
            url: DayApiURI,
            dataType: "json",
            type: "GET",
            async: "false",
            success: function(resp) {
                console.log(resp);

				for (var i = 0; i < 8; i++) {
					config.data.datasets[1].data.push(parseFloat((resp.list[i].main.temp - 273.15).toFixed(1)))
					config.data.datasets[0].data.push(resp.list[i].pop * 100)

					console.log(resp.list[i].dt)
					console.log(resp.city.timezone)
					console.log(resp.list[i].dt + resp.city.timezone)
					console.log(timeConverter(resp.list[i].dt + resp.city.timezone))
					

					config.data.labels.push(timeConverter(resp.list[i].dt + resp.city.timezone))

					var icon = '#icon' + i
					var imgURL = "http://openweathermap.org/img/w/" + resp.list[i].weather[0].icon + ".png"
					$(icon).attr('src', imgURL)
				}

				// var imgURL = "http://openweathermap.org/img/w/" + resp.weather[0].icon + ".png";
 				// $("html컴포넌트").attr("src", imgURL);

				var myChart = new Chart(
					document.getElementById('myChart'),
					config
				);
            }
        })
	})
</script>

<style>
	#iconUl {
		margin-left: 20px;
	}

	.icon {
		margin: 0 43px;
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
					<div style="border: 1px solid black; height: 500px"></div>
				</div>

				<%-- 날씨 --%>
				<div class="col-lg-6">
					<div>06.04(금) 10:30 갱신</div>
					<div class="row">
						<div>20.7℃</div>
						<div>체감</div>
						<div>(21.8℃)</div>
					</div>
					<ul>
						<li>
							<span>습도</span>
							<span>62%</span>
						</li>
						<li>
							<span>바람</span>
							<span>2.3m/s</span>
						</li>
						<li>
							<span>비 올 확률</span>
							<span>10%</span>
						</li>
					</ul>
				</div>
			</div>

			<%-- 그래프 --%>	
			<div>
				<canvas id="myChart"></canvas>
			</div>

			<%-- 아이콘 --%>
			<div class="iconDiv">
				<ul class='row' id="iconUl">
					<li class="icon"><img id="icon0" src=""/></li>
					<li class="icon"><img id="icon1" src=""/></li>
					<li class="icon"><img id="icon2" src=""/></li>
					<li class="icon"><img id="icon3" src=""/></li>
					<li class="icon"><img id="icon4" src=""/></li>
					<li class="icon"><img id="icon5" src=""/></li>
					<li class="icon"><img id="icon6" src=""/></li>
					<li class="icon"><img id="icon7" src=""/></li>
				</ul>
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