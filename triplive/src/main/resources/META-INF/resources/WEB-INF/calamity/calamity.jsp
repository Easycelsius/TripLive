<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>TripLive</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="../../stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../../plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../../plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="../../styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/responsive.css">
</head>

<body>

<div class="super_container">

	<!-- 헤더 -->
	<%@include file ="../header.jsp" %>
	<!-- 헤더 종료 -->

	<!-- Home -->

	<div class="home">
		
		<!-- Home Slider -->

		<div class="home_slider_container">
			
			<div class="owl-carousel owl-theme home_slider">

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/@anikindimitry -->
					<div class="home_slider_background" style="background-image:url(../../images/calamityimage.jpg)"></div>


				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/photos/Gg93cEspT_8 -->
					<div class="home_slider_background" style="background-image:url(i../../mages/stefano.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>COUNTRY</h1>
							<h1>historyas</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="#">바로가기<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(../../images/alice-davies.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>TRIPLIVE</h1>
							<h1>the world</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="#">바로가기<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

			</div>
			
			<!-- Home Slider Nav - Prev -->
			<div class="home_slider_nav home_slider_prev">
				<svg version="1.1" id="Layer_2" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
					width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
					<defs>
						<linearGradient id='home_grad_prev'>
							<stop offset='0%' stop-color='#fa9e1b'/>
							<stop offset='100%' stop-color='#8d4fff'/>
						</linearGradient>
					</defs>
					<path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
					M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
					C22.545,2,26,5.541,26,9.909V23.091z"/>
					<polygon class="nav_arrow" fill="#F3F6F9" points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
					11.042,18.219 "/>
				</svg>
			</div>
			
			<!-- Home Slider Nav - Next -->
			<div class="home_slider_nav home_slider_next">
				<svg version="1.1" id="Layer_3" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
				width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
					<defs>
						<linearGradient id='home_grad_next'>
							<stop offset='0%' stop-color='#fa9e1b'/>
							<stop offset='100%' stop-color='#8d4fff'/>
						</linearGradient>
					</defs>
				<path class="nav_path" fill="#F3F6F9" d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
				M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
				C22.545,2,26,5.541,26,9.909V23.091z"/>
				<polygon class="nav_arrow" fill="#F3F6F9" points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
				17.046,15.554 "/>
				</svg>
			</div>

			<!-- Home Slider Dots -->

			<div class="home_slider_dots">
				<ul id="home_slider_custom_dots" class="home_slider_custom_dots">
					<li class="home_slider_custom_dot active"><div></div>01.</li>
					<li class="home_slider_custom_dot"><div></div>02.</li>
					<li class="home_slider_custom_dot"><div></div>03.</li>
				</ul>
			</div>
			
		</div>

	</div>

	<!-- Intro -->
	












	<div class="search">
		<div class="search_inner">

			<!-- Search Contents -->
			
			<div class="container fill_height no-padding">
				<div class="row fill_height no-margin">
					<div class="col fill_height no-padding">

						<!-- Search Tabs -->

						<div class="search_tabs_container">
							<div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
								<div class="search_tab active d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../../images/logo.png" alt=""><span>대륙 / 국가 검색</span></div>
								<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../../images/milestone_3.png" alt="">직접 검색</div>
								<!-- <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/departure.png" alt="">flights</div>
								<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/island.png" alt="">trips</div>
								<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/cruise.png" alt="">cruises</div>
								<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/diving.png" alt="">activities</div> -->
							</div>		
						</div>

						<!-- Search Panel -->
						<!-- 국가 검색 -->

						<div class="search_panel active">
							<form action="#" id="calsearch_form_1" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
								<div class="search_item">
									<div></div>
									<select name="country" id="calcontinent" class="dropdown_item_select search_input" required="required">
										<option>대륙 Continent</option>
										<option>동북아시아</option>
										<option>북미</option>
										<option>중남미</option>
										<option>서남아시아</option>
										<option>동남아시아</option>
										<option>중동</option>
										<option>아프리카</option>
										<option>러시아-중앙아시아</option>
										<option>유럽</option>
										<option>오세아니아</option>
									</select>
									<!-- <input type="text" class="destination search_input" required="required"> -->
								</div>
								<div class="search_item">
									<div></div>
									<select name="country" id="calcountry" class="dropdown_item_select search_input" required="required">
										<option>국가 Country</option>
										<option>일본</option>
										<option>중국</option>
										<option>베트남</option>
										<option>미국</option>
										<option>태국</option>
										<option>필리핀</option>
										<option>싱가포르</option>
										<option>프랑스</option>
										<option>영국</option>
										<option>호주</option>
										<option>아일랜드</option>
									</select>

									<!-- <input type="text" class="check_in search_input" placeholder="YYYY-MM-DD"> -->
								</div>
								
								<!-- <div class="search_item">
									<div>adults</div>
									<select name="adults" id="adults_1" class="dropdown_item_select search_input">
										<option>01</option>
										<option>02</option>
										<option>03</option>
									</select>
								</div>
								<div class="search_item">
									<div>children</div>
									<select name="children" id="children_1" class="dropdown_item_select search_input">
										<option>0</option>
										<option>02</option>
										<option>03</option>
									</select>
								</div> -->
								<!-- <div class="extras">
									<ul class="search_extras clearfix">
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_1" class="search_extras_cb">
												<label for="search_extras_1">Pet Friendly</label>
											</div>	
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_2" class="search_extras_cb">
												<label for="search_extras_2">Car Parking</label>
											</div>
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_3" class="search_extras_cb">
												<label for="search_extras_3">Wireless Internet</label>
											</div>
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_4" class="search_extras_cb">
												<label for="search_extras_4">Reservations</label>
											</div>
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_5" class="search_extras_cb">
												<label for="search_extras_5">Private Parking</label>
											</div>
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_6" class="search_extras_cb">
												<label for="search_extras_6">Smoking Area</label>
											</div>
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_7" class="search_extras_cb">
												<label for="search_extras_7">Wheelchair Accessible</label>
											</div>
										</li>
										<li class="search_extras_item">
											<div class="clearfix">
												<input type="checkbox" id="search_extras_8" class="search_extras_cb">
												<label for="search_extras_8">Pool</label>
											</div>
										</li>
									</ul>
								</div>
								<div class="more_options">
									<div class="more_options_trigger">
										<a href="#">load more options</a>
									</div>
									<ul class="more_options_list clearfix">
										<li class="more_options_item">
											<div class="clearfix">
												<input type="checkbox" id="more_options_1" class="search_extras_cb">
												<label for="more_options_1">Pet Friendly</label>
											</div>	
										</li>
										<li class="more_options_item">
											<div class="clearfix">
												<input type="checkbox" id="more_options_2" class="search_extras_cb">
												<label for="more_options_2">Car Parking</label>
											</div>
										</li>
									</ul>
								</div> -->
								<button class="button search_button">SEARCH<span></span><span></span><span></span></button>
							</form>
						</div>

						<!-- Search Panel -->
						<!-- 단어 검색 -->

						<div class="search_panel">
							<form action="#" id="calsearch_form_2" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
								<div class="search_item">
									<div></div>
									<input type="text" class="destination search_input" required="required">
								</div>
								<!-- <div class="search_item">
									<div>check in</div>
									<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
								</div>
								<div class="search_item">
									<div>check out</div>
									<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
								</div>
								<div class="search_item">
									<div>adults</div>
									<select name="adults" id="adults_2" class="dropdown_item_select search_input">
										<option>01</option>
										<option>02</option>
										<option>03</option>
									</select>
								</div>
								<div class="search_item">
									<div>children</div>
									<select name="children" id="children_2" class="dropdown_item_select search_input">
										<option>0</option>
										<option>02</option>
										<option>03</option>
									</select>
								</div> -->
								<button class="button search_button">검색<span></span><span></span><span></span></button>
							</form>
						</div>

						
					</div>
				</div>
			</div>	
		</div>	
	</div>
<div><div><div><div><div><div><div><datagrid></datagrid></div></div></div></div></div></div></div>





































	<!-- Footer -->
	<%@include file ="../footer.jsp" %>

	<!-- Copyright -->
	<div class="copyright">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 order-lg-1 order-2  ">
					<div class="copyright_content d-flex flex-row align-items-center">
						<div><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></div>
					</div>
				</div>
				<div class="col-lg-9 order-lg-2 order-1">
					<div class="footer_nav_container d-flex flex-row align-items-center justify-content-lg-end">
						<div class="footer_nav">
							<ul class="footer_nav_list">
								<li class="main_nav_item"><a href="../index.do">홈</a></li>
								<li class="main_nav_item"><a href="">커뮤니티</a></li>
								<li class="main_nav_item"><a href="">여행지정보</a></li>
								<li class="main_nav_item"><a href="../calamity/calamity.do">긴급속보</a></li>
								<li class="main_nav_item"><a href="../WorldWeather/weather.do">세계날씨</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>

<script src="../../js/jquery-3.2.1.min.js"></script>
<script src="../../styles/bootstrap4/popper.js"></script>
<script src="../../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="../../plugins/easing/easing.js"></script>
<script src="../../js/custom.js"></script
</body>

</html>