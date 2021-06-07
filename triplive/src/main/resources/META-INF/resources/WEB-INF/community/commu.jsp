<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%
	String pageNum = request.getParameter("page");
	String isoNum = request.getParameter("isoNum");
	String keyword = request.getParameter("keyword");
%>	

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

	<!-- offer -->
	<%@include file ="offer.jsp" %>
	<!-- offer 종료 -->

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
								<span class="button btn-success"><a href="write.do">글남기기</a></span>
								<!-- <span class="button sorting_text"><a href="#">글 남기기</a></span> -->
							</li>
						</ul>
					</div>
				</div>
				
				<c:forEach var="community" items="${communities}" varStatus="status">
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
										<div class="offers_content" >
											<div class="offers_price" style="width: 80%; text-overflow: ellipsis;  white-space: nowrap; overflow: hidden; display: block; padding-top:4px;">${community.bdTitle}<span>${community.date}</span></div>
											<!-- <div class="rating_r rating_r_4 offers_rating" data-rating="4">
												<i></i>
												<i></i>
												<i></i>
												<i></i>
												<i></i>
											</div> -->
											<p class="offers_text" style="width: 80%; text-overflow: ellipsis;  white-space: nowrap; overflow: hidden; display: block;">${community.bdContent}</p>
											<div class="button book_button float-right" ><a href="board_detail.do?detail=${community.bdNo}">글 보기</a></div>
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
													<div class="offer_reviews_title">${community.user.id}</div>
													<div class="offer_reviews_subtitle float-right">${community.count}</div>
												</div>
												<img src="../img/countryflag/${community.country.isoAlp2}.gif" alt="" class="offer_reviews_rating text-center" >
											</div>
											<hr>
										</div>
									</div>
									
								</div>
							</div>
						</div>
					</div>
				</c:forEach>

				<!-- 페이징 -->	
				<div class="container">
					
					<div class="row">
						<div class="col-lg-5 temp_col"></div>
						<nav aria-label="Page navigation example" class="col-lg-3">
							<ul class="pagination pagination-sm">
							<li class="page-item">
								<a class="page-link" href="?page=1&isoNum=${param.isoNum}&keyword=${param.keyword}" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">이전</span>
								</a>
							</li>

							<c:forEach var="page" items="${pageList}">
								<c:if test="${page ne null}">
									<li class="page-item"><a class="page-link" href="?page=${page}&isoNum=${param.isoNum}&keyword=${param.keyword}">${page}</a></li>
								</c:if>
							</c:forEach>
								<a class="page-link" href="#" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
								<span class="sr-only">다음</span>
								</a>
								
							</li>
							</ul>
						</nav>
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