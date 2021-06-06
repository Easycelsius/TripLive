<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<%
	String detail = request.getParameter("detail");
%>	

<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 글보기</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
<link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="../plugins/colorbox/colorbox.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="../plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="../styles/single_listing_styles.css">
<link rel="stylesheet" type="text/css" href="../styles/single_listing_responsive.css">
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
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../images/single_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">Community</div>
		</div>
	</div>

	<!-- offer -->
	<%@include file ="offer.jsp" %>
	<!-- offer 종료 -->

		<!-- Single Listing -->

		
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="single_listing">
						
						<!-- Hotel Info -->

						<div class="hotel_info">

							<!-- Title -->
							<div class="hotel_title_container d-flex flex-lg-row flex-column">
								<div class="hotel_title_content align-self-center">
									<h1 class="hotel_title">${community.get().bdTitle}</h1>
									<div class="hotel_location">${community.get().country.countryNm} / ${community.get().date} </div>
								</div>
								<div class="hotel_title_button ml-lg-auto text-lg-right">
									<div id="back_btn" class="button book_button trans_200"><a>뒤로가기<span></span><span></span><span></span></a></div>
									<div class="hotel_map_link_container">
										<div class="hotel_map_link">${community.get().user.id}</div>
									</div>
								</div>
							</div>

							<!-- Listing Image -->

							<div class="hotel_image">
								<img src="../images/listing_hotel.jpg" alt="첨부이미지" onerror="this.style.display='none'">
								<!-- <div class="hotel_review_container d-flex flex-column align-items-center justify-content-center">
									<div class="hotel_review">
										<div class="hotel_review_content">
											<div class="hotel_review_title">very good</div>
											<div class="hotel_review_subtitle">100 reviews</div>
										</div>
										<div class="hotel_review_rating text-center">8.1</div>
									</div>
								</div> -->
							</div>

							<!-- Hotel Gallery -->
							<%-- 추후 사진 여러개 첨부하면 슬라이드로 넘겨주는 방식을 고려해볼 것
							<div class="hotel_gallery">
								<div class="hotel_slider_container">
									<div class="owl-carousel owl-theme hotel_slider">

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_1.jpg">
												<img src="../images/listing_thumb_1.jpg" alt="https://unsplash.com/@jbriscoe">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_2.jpg">
												<img src="../images/listing_thumb_2.jpg" alt="https://unsplash.com/@grovemade">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_3.jpg">
												<img src="../images/listing_thumb_3.jpg" alt="https://unsplash.com/@fransaraco">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_4.jpg">
												<img src="../images/listing_thumb_4.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_5.jpg">
												<img src="../images/listing_thumb_5.jpg" alt="https://unsplash.com/@workweek">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_6.jpg">
												<img src="../images/listing_thumb_6.jpg" alt="https://unsplash.com/@avidenov">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_7.jpg">
												<img src="../images/listing_thumb_7.jpg" alt="https://unsplash.com/@pietruszka">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_8.jpg">
												<img src="../images/listing_thumb_8.jpg" alt="https://unsplash.com/@rktkn">
											</a>
										</div>

										<!-- Hotel Gallery Slider Item -->
										<div class="owl-item">
											<a class="colorbox cboxElement" href="../images/listing_9.jpg">
												<img src="../images/listing_thumb_9.jpg" alt="https://unsplash.com/@mindaugas">
											</a>
										</div>
									</div>

									<!-- Hotel Slider Nav - Prev -->
									<div class="hotel_slider_nav hotel_slider_prev">
										<svg version="1.1" id="Layer_6" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
											width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
											<defs>
												<linearGradient id='hotel_grad_prev'>
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
									
									<!-- Hotel Slider Nav - Next -->
									<div class="hotel_slider_nav hotel_slider_next">
										<svg version="1.1" id="Layer_7" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px"
										width="28px" height="33px" viewBox="0 0 28 33" enable-background="new 0 0 28 33" xml:space="preserve">
											<defs>
												<linearGradient id='hotel_grad_next'>
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

								</div>
							</div>
							--%>
							<!-- Hotel Info Text -->

							<div class="hotel_info_text">
								<p>${community.get().bdContent}</p>
							</div>

							<!-- Hotel Info Tags -->

							<div class="hotel_info_tags">
								<ul class="hotel_icons_list">
									<li class="hotel_icons_item"><img src="../images/post.png" alt=""></li>
									<li class="hotel_icons_item"><img src="../images/compass.png" alt=""></li>
									<li class="hotel_icons_item"><img src="../images/bicycle.png" alt=""></li>
									<li class="hotel_icons_item"><img src="../images/sailboat.png" alt=""></li>
								</ul>
							</div>

						</div>
						
						<%--
						<!-- Rooms -->

						<div class="rooms">

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="../images/room_1.jpg" alt="https://unsplash.com/@grovemade"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">Double or Twin Room</div>
											<div class="room_price">$99/night</div>
											<div class="room_text">FREE cancellation before 23:59 on 20 December 2017</div>
											<div class="room_extra">Breakfast $7.50</div>
										</div>
									</div>
									<div class="col-lg-3 text-lg-right">
										<div class="room_button">
											<div class="button book_button trans_200"><a href="#">book<span></span><span></span><span></span></a></div>
										</div>
									</div>
								</div>	
							</div>

							<!-- Room -->
							<div class="room">

								<!-- Room -->
								<div class="row">
									<div class="col-lg-2">
										<div class="room_image"><img src="../images/room_2.jpg" alt="https://unsplash.com/@oowgnuj"></div>
									</div>
									<div class="col-lg-7">
										<div class="room_content">
											<div class="room_title">Double or Twin Room</div>
											<div class="room_price">$99/night</div>
											<div class="room_text">FREE cancellation before 23:59 on 20 December 2017</div>
											<div class="room_extra">Breakfast $7.50</div>
										</div>
									</div>
									<div class="col-lg-3 text-lg-right">
										<div class="room_button">
											<div class="button book_button trans_200"><a href="#">book<span></span><span></span><span></span></a></div>
										</div>
									</div>
								</div>	
							</div>

						</div>
						--%>

						<!-- 댓글목록 -->
						<div class="reviews">
							<div class="reviews_title">댓글</div>
							<div class="reviews_container">

								<!-- Review -->
								<div class="review">
									<div class="row" id="comment_list">
										
										
									</div>
								</div>

								<!-- 댓글쓰기 -->

								<sec:authorize access="isAuthenticated()">
									<form>
										<input id="cmt" name="cmContent" type="text" placeholder="댓글을 남겨주세요" class="search_input btn border col-lg-12" required>
										<button type="button" id="cm_btn" class="button search_button col-lg-3">댓글</button>
									</form>
									
								</sec:authorize>

							</div>
						</div>

						<!-- Location on Map -->

						
					</div>
				</div>
			</div>
		</div>		
	</div>

	<!-- 헤더 -->
	<%@include file ="../footer.jsp" %>
	<!-- 헤더 종료 -->

</div>

<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../styles/bootstrap4/popper.js"></script>
<script src="../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../plugins/easing/easing.js"></script>
<script src="../plugins/parallax-js-master/parallax.min.js"></script>
<script src="../plugins/colorbox/jquery.colorbox-min.js"></script>
<script src="../plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="../js/single_listing_custom.js"></script>
<script type="text/javascript">

	$(document).ready(function(){
	
		// 뒤로가기
		$("#back_btn").click(function(){	
			window.history.back()
		})

		// 댓글 삭제 버튼
		$(".deleteCmt").click(function(){
			alert("test_delete");
		})

		// 댓글 남기기
		$("#cm_btn").click(function(){

			if($("#cmt").val().trim() != ""){ // 공백이 아니라면 진행
				console.log("클릭 및 내용 있음을 확인")

				$.ajax({
					type :'post',
					data : { "cmContent" : $("#cmt").val(), "detail" : ${param.detail} },
					url : 'cmSave.do',
					success : function(){

						console.log("댓글 남기기 에이젝스 발동 성공")

						// 정상적으로 등록시 댓글 갈기
						commentClear();
						commentStart();
						
					}
				})
			}

			// 댓글 창 초기화
			$("#cmt").val("");

		})

		// 댓글 가져와서 내용을 추가하는 함수
		function commentStart(){
			$.ajax({
				type :'post',
				data : {"detail" : ${param.detail}},
				url : 'getCommentList.do',
				success : function(data){

					console.log(data)

					// $("#cmt_length").text(data.length);
					
					if(data.length != 0){
						// 기존 댓글 없애고 다시 시작
						commentClear();
						// 정상적으로 등록시

						let list = $("#comment_list");
						let tag = "";

						for(var i=0; i<data.length; i++) {
							tag += '<div class="col-lg-12 mt-5">'
							tag += '<div class="review_content">'
							tag += '<div class="review_title_container">'
							tag += '<div class="review_title"><h3>'+data[i].user.id+'</h3></div>'
							tag += '</div>'
							tag += '<div class="review_text">'
							tag += '<sec:authorize access="hasRole(\'ROLE_ADMIN\')">'
							tag += '<button class="review_rating btn align-self-center deleteCmt" value="'+data[i].cmNo+'">삭제</button>' 
							tag += '</sec:authorize>'
							tag += '<p>'+data[i].cmContent+'</p>'
							tag += '</div>'
							tag += '<div class="review_date">'+data[i].cmDate+'</div>'
							tag += '</div>'+'</div>'
						}

						list.append(tag);
						
						// 위의 리스트 생성 후 삭제 버튼 클릭시 발동
						$(".deleteCmt").click(function(){
							let btn = $(this);	
							
							$.ajax({
								type :'post',
								data : ({"cmNo" : btn.val(), "detail" : ${param.detail}}),
								url : 'deleteCm.do',
								success : function(){
									btn.parent().parent().remove();
								}   	
							})
						})
					}
				}
			})
		}
		
		//댓글 리스트 삭제 함수
		function commentClear(){
			list = $("#comment_list");
			list.empty();
		}
		
		commentStart();



	
	}); // 실행 종료
</script>

</body>

</html>