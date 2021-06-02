<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 커뮤니티</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
<link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">
</head>

<body>

<div class="super_container">
	
	<!-- 헤더 -->
	<%@include file ="../header.jsp" %>
	<!-- 헤더 종료 -->

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../../images/comm_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">Community</div>
		</div>
	</div>

	<!-- Offers -->

	<div class="offers">

		<!-- Search -->

		<div class="search">
			<div class="search_inner">

				<!-- Search Contents -->
				
				<div class="container fill_height no-padding">
					<div class="row fill_height no-margin">
						<div class="col fill_height no-padding">

							<!-- Search Tabs -->

							<div class="search_tabs_container">
								<div class="search_tabs d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
									<div class="search_tab active d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../../images/departure.png" alt=""><span>지역으로 검색</span></div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../../images/milestone_1.png" alt="">단어로 검색</div>
									<!-- <div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/departure.png" alt="">flights</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/island.png" alt="">trips</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/cruise.png" alt="">cruises</div>
									<div class="search_tab d-flex flex-row align-items-center justify-content-lg-center justify-content-start"><img src="../images/diving.png" alt="">activities</div> -->
								</div>		
							</div>

							<!-- Search Panel -->
							<!-- 지역 검색 -->

							<div class="search_panel active">
								<form action="#" id="search_form_1" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
									<div class="search_item">
										<div>국가</div>
										<select name="country" id="country" class="dropdown_item_select search_input" required="required">
											<option>전체</option>
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
										<!-- <input type="text" class="destination search_input" required="required"> -->
									</div>
									<div class="search_item">
										<div>작성일 이전</div>
										<input type="text" class="check_in search_input" placeholder="YYYY-MM-DD">
									</div>
									<div class="search_item">
										<div>작성일 이후</div>
										<input type="text" class="check_out search_input" placeholder="YYYY-MM-DD">
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
									<button class="button search_button">이동<span></span><span></span><span></span></button>
								</form>
							</div>

							<!-- Search Panel -->
							<!-- 단어 검색 -->

							<div class="search_panel">
								<form action="#" id="search_form_2" class="search_panel_content d-flex flex-lg-row flex-column align-items-lg-center align-items-start justify-content-lg-between justify-content-start">
									<div class="search_item">
										<div>검색어 입력</div>
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

		<!-- Offers -->

		<div class="container">
			<div class="row">
				<div class="col-lg-1 temp_col"></div>
				<div class="col-lg-11">
					
					<!-- Offers Sorting -->
					<div class="offers_sorting_container">
						<ul class="offers_sorting float-right">
							<!-- <li>
								<span class="sorting_text">price</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".price_sorting"><span>show all</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "price" }' data-parent=".price_sorting"><span>ascending</span></li>
								</ul>
							</li> -->
							<!-- <li>
								<span class="sorting_text">지역</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }'><span>전체</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "name" }'><span>alphabetical</span></li>
								</ul>
							</li> -->
							
							<!-- <li>
								<span class="sorting_text">stars</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="filter_btn" data-filter="*"><span>show all</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "stars" }'><span>ascending</span></li>
									<li class="filter_btn" data-filter=".rating_3"><span>3</span></li>
									<li class="filter_btn" data-filter=".rating_4"><span>4</span></li>
									<li class="filter_btn" data-filter=".rating_5"><span>5</span></li>
								</ul>
							</li> -->
							<!-- <li class="distance_item">
								<span class="sorting_text">distance from center</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="num_sorting_btn"><span>distance</span></li>
									<li class="num_sorting_btn"><span>distance</span></li>
									<li class="num_sorting_btn"><span>distance</span></li>
								</ul>
							</li> -->
							<!-- <li>
								<span class="sorting_text">조회수</span>
								<i class="fa fa-chevron-down"></i>
								<ul>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "original-order" }' data-parent=".reviews_sorting"><span>기본</span></li>
									<li class="sort_btn" data-isotope-option='{ "sortBy": "reviews" }' data-parent=".reviews_sorting"><span>오름차순</span></li>
									<li class="num_sorting_btn"><span>내림차순</span></li>
								</ul>
							</li>
							<li> -->
								<span class="button btn-success"><a href="#">글남기기</a></span>
								<!-- <span class="button sorting_text"><a href="#">글 남기기</a></span> -->
							</li>
						</ul>
					</div>
				</div>

				<div class="col-lg-12">
					<!-- Offers Grid -->
					<div class="offers_grid">
						<!-- Offers Item -->
						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<!-- <div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										Image by https://unsplash.com/@kensuarez
										<div class="offers_image_background" style="background-image:url(../images/offer_1.jpg)"></div>
										<div class="offer_name"><a href="single_listing.html">grand castle</a></div>
									</div>
								</div> -->
								<div class="col-lg-11">
									<div class="offers_content">
										<div class="offers_price">bd_title<span>bd_date</span></div>
										<!-- <div class="rating_r rating_r_4 offers_rating" data-rating="4">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div> -->
										<p class="offers_text">bd_content</p>
										<div class="button book_button float-right"><a href="#">글 보기<span></span><span></span><span></span></a></div>
										<div class="offers_icons">
											<ul class="offers_icons_list">
												<li class="offers_icons_item"><img src="../images/post.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/compass.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/bicycle.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/sailboat.png" alt=""></li>
											</ul>
										</div>
										<div class="offer_reviews">
											<div class="offer_reviews_content">
												<div class="offer_reviews_title">국가명 iso_num</div>
												<div class="offer_reviews_subtitle float-right">2</div>
											</div>
											<img src="../img/countryflag/ZA.gif" alt="" class="offer_reviews_rating text-center" >
										</div>
										<hr>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<!-- Offers Grid -->
					<div class="offers_grid">
						<!-- Offers Item -->
						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<!-- <div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										Image by https://unsplash.com/@kensuarez
										<div class="offers_image_background" style="background-image:url(../images/offer_1.jpg)"></div>
										<div class="offer_name"><a href="single_listing.html">grand castle</a></div>
									</div>
								</div> -->
								<div class="col-lg-11">
									<div class="offers_content">
										<div class="offers_price">bd_title<span>bd_date</span></div>
										<!-- <div class="rating_r rating_r_4 offers_rating" data-rating="4">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											<i></i>
										</div> -->
										<p class="offers_text">bd_content</p>
										<div class="button book_button float-right"><a href="#">글 보기<span></span><span></span><span></span></a></div>
										<div class="offers_icons">
											<ul class="offers_icons_list">
												<li class="offers_icons_item"><img src="../images/post.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/compass.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/bicycle.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/sailboat.png" alt=""></li>
											</ul>
										</div>
										<div class="offer_reviews">
											<div class="offer_reviews_content">
												<div class="offer_reviews_title">국가명 iso_num</div>
												<div class="offer_reviews_subtitle float-right">1</div>
											</div>
											<img src="../img/countryflag/JP.gif" alt="" class="offer_reviews_rating text-center" >
										</div>
										<hr>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-12">
					<!-- Offers Grid -->
					<div class="offers_grid">
						<!-- Offers Item -->
						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<!-- <div class="col-lg-3 col-1680-4">
									<div class="offers_image_container">
										Image by https://unsplash.com/@kensuarez
										<div class="offers_image_background" style="background-image:url(../images/offer_1.jpg)"></div>
										<div class="offer_name"><a href="single_listing.html">grand castle</a></div>
									</div>
								</div> -->
								<div class="col-lg-11">
									<div class="offers_content">
										<div class="offers_price">bd_title<span>bd_date</span></div>
										<!-- <div class="rating_r rating_r_4 offers_rating" data-rating="4">
											<i></i>
											<i></i>
											<i></i>
											<i></i>
											
										</div> -->
										<p class="offers_text">bd_content</p>
										<div class="button book_button float-right"><a href="#">글 보기<span></span><span></span><span></span></a></div>
										<div class="offers_icons">
											<ul class="offers_icons_list">
												<li class="offers_icons_item"><img src="../images/post.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/compass.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/bicycle.png" alt=""></li>
												<li class="offers_icons_item"><img src="../images/sailboat.png" alt=""></li>
											</ul>
										</div>
										<div class="offer_reviews">
											<div class="offer_reviews_content">
												<div class="offer_reviews_title">국가명 iso_num</div>
												<div class="offer_reviews_subtitle float-right">3</div>
											</div>
											<img src="../img/countryflag/JP.gif" alt="" class="offer_reviews_rating text-center" >
										</div>
										<hr>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>		
	</div>

	<!-- Footer -->

	<!-- 헤더 -->
	<%@include file ="../footer.jsp" %>
	<!-- 헤더 종료 -->

	

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