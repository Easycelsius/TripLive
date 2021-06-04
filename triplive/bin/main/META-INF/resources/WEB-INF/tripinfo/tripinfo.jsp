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
<link rel="stylesheet" type="text/css" href="styles/bootstrap4/bootstrap.min.css">
<link href="plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="styles/responsive.css">
<script>
	$(document).ready(function() {
	  $(".tabs2 li").click(function() {
		var idx = $(this).index();
		$(".tabs2 li").removeClass("on");
		$(".tabs2 li").eq(idx).addClass("on");
		$(".tab_cont > div").hide();
		$(".tab_cont > div").eq(idx).show();
	  })
	});
</script>
<style>
	.container2{
		width: 1600px;
		margin: 20px;
	}
	
	.tabs2 li {
	  list-style: none;
	  float: left;
	  width: 200px;
	  padding: 10px 10px;
	  cursor: pointer;
	  text-align: center;
	  border: 1px solid #bebebe;
	}
	
	.tabs2 li.on {
	  background-color: #ffb715;
	  font-weight: bold;
	}
	
	.tab_cont {
	  clear: both;
	  border: 1px solid #dedede;
	  height: 130px;
	  background-color: #cecece;
	}
	
	.tab_cont div {
	  display: none;
	  text-align: center;
	}
	
	.tab_cont div.on {
	  display: block;
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
		
		<!-- Home Slider -->

		<div class="home_slider_container">
			
			<div class="owl-carousel owl-theme home_slider">

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<!-- Image by https://unsplash.com/@anikindimitry -->
					<div class="home_slider_background" style="background-image:url(images/home_slider.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>Yours</h1>
							<h1>TripLive</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="#">explore now<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(images/lilac.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>discover</h1>
							<h1>the world</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="#">explore now<span></span><span></span><span></span></a></div>
						</div>
					</div>
				</div>

				<!-- Slider Item -->
				<div class="owl-item home_slider_item">
					<div class="home_slider_background" style="background-image:url(images/home_slider.jpg)"></div>

					<div class="home_slider_content text-center">
						<div class="home_slider_content_inner" data-animation-in="flipInX" data-animation-out="animate-out fadeOut">
							<h1>discover</h1>
							<h1>the world</h1>
							<div class="button home_slider_button"><div class="button_bcg"></div><a href="#">explore now<span></span><span></span><span></span></a></div>
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

	<!-- Search -->

	<div class="search">
		

		<!-- Search Contents -->
		
		<div class="container fill_height">
			<div class="row fill_height">
				<div class="col fill_height">

					<!-- Search Tabs -->

					<div class="search_tabs_container">
						<div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_tab active d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="images/suitcase.png" alt=""><span>환율</span></div>
							<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="images/bus.png" alt="">해외 날씨</div>
							<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="images/departure.png" alt="">해당나라 정보</div>
							<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="images/island.png" alt="">외교부</div>
							<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="images/cruise.png" alt="">재난및긴급</div>
							<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="images/diving.png" alt="">여행지 정보</div>
						</div>		
					</div>

					<!-- Search Panel -->

					<div class="search_panel active">
						<form action="#" id="search_form_1" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>destination</div>
								<input type="text" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>check in</div>
								<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>check out</div>
								<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
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
							</div>
							<button class="button search_button">search<span></span><span></span><span></span></button>
						</form>
					</div>

					<!-- Search Panel -->

					<div class="search_panel">
						<form action="#" id="search_form_2" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>destination</div>
								<input type="text" class="destination search_input" required="required">
							</div>
							<div class="search_item">
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
							</div>
							<button class="button search_button">search<span></span><span></span><span></span></button>
						</form>
					</div>

					<!-- Search Panel -->

					<div class="search_panel">
						<form action="#" id="search_form_3" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>destination</div>
								<input type="text" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>check in</div>
								<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>check out</div>
								<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>adults</div>
								<select name="adults" id="adults_3" class="dropdown_item_select search_input">
									<option>01</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<div class="search_item">
								<div>children</div>
								<select name="children" id="children_3" class="dropdown_item_select search_input">
									<option>0</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<button class="button search_button">search<span></span><span></span><span></span></button>
						</form>
					</div>

					<!-- Search Panel -->

					<div class="search_panel">
						<form action="#" id="search_form_4" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>destination</div>
								<input type="text" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>check in</div>
								<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>check out</div>
								<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>adults</div>
								<select name="adults" id="adults_4" class="dropdown_item_select search_input">
									<option>01</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<div class="search_item">
								<div>children</div>
								<select name="children" id="children_4" class="dropdown_item_select search_input">
									<option>0</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<button class="button search_button">search<span></span><span></span><span></span></button>
						</form>
					</div>

					<!-- Search Panel -->

					<div class="search_panel">
						<form action="#" id="search_form_5" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>destination</div>
								<input type="text" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>check in</div>
								<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>check out</div>
								<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>adults</div>
								<select name="adults" id="adults_5" class="dropdown_item_select search_input">
									<option>01</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<div class="search_item">
								<div>children</div>
								<select name="children" id="children_5" class="dropdown_item_select search_input">
									<option>0</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<button class="button search_button">search<span></span><span></span><span></span></button>
						</form>
					</div>

					<!-- Search Panel -->

					<div class="search_panel">
						<form action="#" id="search_form_6" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
							<div class="search_item">
								<div>destination</div>
								<input type="text" class="destination search_input" required="required">
							</div>
							<div class="search_item">
								<div>check in</div>
								<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>check out</div>
								<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
							</div>
							<div class="search_item">
								<div>adults</div>
								<select name="adults" id="adults_6" class="dropdown_item_select search_input">
									<option>01</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<div class="search_item">
								<div>children</div>
								<select name="children" id="children_6" class="dropdown_item_select search_input">
									<option>0</option>
									<option>02</option>
									<option>03</option>
								</select>
							</div>
							<button class="button search_button">search<span></span><span></span><span></span></button>
						</form>
					</div>
				</div>
			</div>
		</div>		
	</div>

	<!-- Intro -->
	
	<div class="country_view_wrap" style="padding: 50px 200px;">
		<form name="frm" method="get">
		<fieldset class="serach" >
			<legend>국가 선택</legend>
			<div class="continent" >
				<select style="width:166px;" name="group_idx" title="국가 선택" onchange="javascript:changethis();">
					<option value="">전체</option>
					
						<option value="1" >동북아시아</option>
					
						<option value="2" >북미</option>
					
						<option value="3" >중남미</option>
					
						<option value="4" >서남아시아</option>
					
						<option value="5" >동남아시아</option>
					
						<option value="6" >중동</option>
					
						<option value="7" >아프리카</option>
					
						<option value="8" >러시아·중앙아시아</option>
					
						<option value="9" >유럽</option>
					
						<option value="10" >오세아니아</option>
					
				</select>
				<select style="width:166px;" name="alert_level" title="경보단계 선택" onchange="javascript:changethis();">
					<option value="0">경보단계</option>
					<option value="1" >여행유의</option>
					<option value="2" >여행자제</option>
					<option value="3" >철수권고</option>
					<option value="4" >여행금지</option>
					<option value="5" >특별여행주의보</option>
					</select>
			</div>					
		</fieldset>
		</form>
			<div class="country_view_box" style="float: left; width: 50%;">
				<div>안전공지</div>
				<ul class="notice_list">
					
							<li>
								<a href="/dev/newest_view.mofa?id=ATC0000000008566&pagenum=1&mst_id=MST0000000000041&ctnm=&div_cd=20&st=title&stext=">
									코로나19 관련 각국의 해외입국자에 대한 입국제한 조치 실시 국가(지역) (5.31. 17:00)
								</a>
								2021-05-03
							</li>
						
							<li>
								<a href="/dev/newest_view.mofa?id=ATC0000000008579&pagenum=1&mst_id=MST0000000000041&ctnm=&div_cd=20&st=title&stext=">
									해외 증오범죄 피해 예방 요령 안내서
								</a>
								2021-05-26
							</li>
						
							<li>
								<a href="/dev/newest_view.mofa?id=ATC0000000008552&pagenum=1&mst_id=MST0000000000041&ctnm=&div_cd=20&st=title&stext=">
									남아공‧탄자니아 發 공항 입국자 방역절차 변경
								</a>
								2021-04-15
							</li>
						
							<li>
								<a href="/dev/newest_view.mofa?id=ATC0000000008490&pagenum=1&mst_id=MST0000000000041&ctnm=&div_cd=20&st=title&stext=">
									남아프리카공화국, 공항 입출국 및 환승 시 유의사항 안내
								</a>
								2021-02-08
							</li>
						
							<li>
								<a href="/dev/newest_view.mofa?id=ATC0000000007426&pagenum=1&mst_id=MST0000000000041&ctnm=&div_cd=20&st=title&stext=">
									남아프리카공화국 미성년자 출입국 관련 소지서류 요건 변경 공지
								</a>
								2019-11-21
							</li>
						
				</ul>
				<a href="/dev/newest_list.mofa?div_cd=20" class="more"><img src="/images/common/btn/btn_more.gif" alt="더보기" /></a>
			</div>
			
			<div class="country_view_box" >
				<div>여행경보 조정</div>
				<a href="/dev/newest_list.mofa?mst_id=MST0000000000040&div_cd=20" class="more"><img src="/images/common/btn/btn_more.gif" alt="더보기" /></a>
				<ul class="notice_list">
				
					
						<li>
							<a href="/dev/newest_view.mofa?id=ATC0000000008571&pagenum=1&mst_id=MST0000000000040&ctnm=&div_cd=20&st=title&stext=">
								전 국가·지역 해외여행에 대한 특별여행주의보 연장
							</a>
							2021-05-14
						</li>
					
						<li>
							<a href="/dev/newest_view.mofa?id=ATC0000000008553&pagenum=1&mst_id=MST0000000000040&ctnm=&div_cd=20&st=title&stext=">
								전 국가·지역 해외여행에 대한 특별여행주의보 연장
							</a>
							2021-04-16
						</li>
					
						<li>
							<a href="/dev/newest_view.mofa?id=ATC0000000008529&pagenum=1&mst_id=MST0000000000040&ctnm=&div_cd=20&st=title&stext=">
								전 국가·지역 해외여행에 대한 특별여행주의보 연장
							</a>
							2021-03-17
						</li>
					
						<li>
							<a href="/dev/newest_view.mofa?id=ATC0000000008500&pagenum=1&mst_id=MST0000000000040&ctnm=&div_cd=20&st=title&stext=">
								전 국가·지역 해외여행에 대한 특별여행주의보 연장
							</a>
							2021-02-15
						</li>
					
						<li>
							<a href="/dev/newest_view.mofa?id=ATC0000000008442&pagenum=1&mst_id=MST0000000000040&ctnm=&div_cd=20&st=title&stext=">
								전 국가·지역 해외여행에 대한 특별여행주의보 연장
							</a>
							2021-01-15
						</li>
				</ul>
	</div>
	<div class="container" style="padding: 0px; margin : 0px;">
		<div class="container2">
			<ul class="tabs2">
				<li><a href="#tel_number"><span>현지연락처</span></a></li>
				<li><a href="#basic_info"><span>기본정보</span></a></li>
				<li><a href="#incident"><span>사건·사고</span></a></li>
				<li><a href="#culture"><span>현지문화</span></a></li>
				<li><a href="#online_info"><span>교통 정보</span></a></li>
				<li><a href="#etc"><span>기타</span></a></li>
			</ul>
		</div>
		<div class="tab_cont">
			<div>
			tab1_content
			</div>
			<div>
			tab2_content
			</div>
			<div>
			tab3_content
			</div>
		</div>
	</div>

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
								<li class="footer_nav_item"><a href="#">home</a></li>
								<li class="footer_nav_item"><a href="about.html">about us</a></li>
								<li class="footer_nav_item"><a href="offers.html">offers</a></li>
								<li class="footer_nav_item"><a href="blog.html">news</a></li>
								<li class="footer_nav_item"><a href="contact.html">contact</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</div>


<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles/bootstrap4/popper.js"></script>
<script src="styles/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="js/custom.js"></script

</body>

</html>