<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 코로나 뉴스</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../../styles/bootstrap4/bootstrap.min.css">
<link href="../../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../../styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/offers_responsive.css">
<link rel="stylesheet" type="text/css" href="../../styles/elements_styles.css">
<link rel="stylesheet" type="text/css" href="../../styles/elements_responsive.css">

</head>
<body>

<div class="super_container">

<!-- 헤더 -->
<%@include file ="../header.jsp" %>
<!-- 헤더 종료 -->

<!-- Home -->

<div class="home">
	<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../../images/calamityimage.jpg"></div>
	<div class="home_content">
		<div class="home_title">COVID-19 news</div>
	</div>
</div>

<!-- offer -->
<%@include file ="calaoffer.jsp" %>
<!-- offer 종료 -->

	<div class="container">
		<div class="row">
			<div class="col-lg-1 temp_col"></div>
			<div class="col-lg-11">
				
				<!-- Offers Sorting -->
				<div class="offers_sorting_container">
					<h1>코로나 관련 해외 소식입니다. </h1>
				</div>
			</div>
			

			<c:forEach items="${list}" var="l">
				<div class="col-lg-12">
					<!-- Offers Grid -->
					<div class="">
						<!-- Offers Item -->
						<div class="offers_item rating_4">
							<div class="row">
								<div class="col-lg-1 temp_col"></div>
								<div class="col-lg-11">
									<div class="offers_text" id='content' style="width: 80%; text-overflow: ellipsis;  white-space: nowrap; overflow: hidden;"></div>
									<div class="offer_reviews">
										<div class="offer_reviews_content">
											<div class="offer_reviews_title">${l.countryNm}</div>
											<div class="offer_reviews_subtitle float-right">작성일: ${l.wrtDt}</div>
										</div>
										<div class="offer_reviews_content">
										</div>
										<img src="../../img/countryflag/${l.countryIsoAlp2}.gif" alt="" class="offer_reviews_rating text-center" >
									</div>
									<div class="elements_accordions">
										<div class="accordion_container">
											<div class="accordion d-flex flex-row align-items-center" style="width: 80%; text-overflow: ellipsis;  white-space: nowrap; overflow: hidden; display: block; padding:6px;"><div>${l.title}</div></div>
											<div class="accordion_panel">
												${l.htmlOriginCn}
											</div>
											<hr>
										</div>
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
							<a class="page-link" href="?page=1&isoAlp2=${param.isoAlp2}&keyword=${param.keyword}" aria-label="Previous">
							<span aria-hidden="true">&laquo;</span>
							<span class="sr-only">이전</span>
							</a>
						</li>

						<c:forEach var="page" items="${pageList}" begin="0" end="10" step="1">
							<c:if test="${page ne null}">
								<li class="page-item"><a class="page-link" href="?page=${page}&isoAlp2=${param.isoNum}&keyword=${param.keyword}">${page}</a></li>
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

<script src="../../js/jquery-3.2.1.min.js"></script>
<script src="../../styles/bootstrap4/popper.js"></script>
<script src="../../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="../../plugins/easing/easing.js"></script>
<script src="../../plugins/parallax-js-master/parallax.min.js"></script>
<script src="../../js/offers_custom.js"></script>
<script src="../../js/elements_custom.js"></script>
<script src="../../styles/bootstrap4/popper.js"></script>
<script src="../../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../../plugins/greensock/TweenMax.min.js"></script>
<script src="../../plugins/greensock/TimelineMax.min.js"></script>
<script src="../../plugins/scrollmagic/ScrollMagic.min.js"></script>
<script src="../../plugins/greensock/animation.gsap.min.js"></script>
<script src="../../plugins/greensock/ScrollToPlugin.min.js"></script>
<script src="../../plugins/progressbar/progressbar.min.js"></script>
<script src="../../plugins/jquery-circle-progress-1.2.2/circle-progress.js"></script>
<script src="../../plugins/parallax-js-master/parallax.min.js"></script>

</body>

</html>