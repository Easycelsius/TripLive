<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 안전공지</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
<link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">
<script type="text/javascript">
	$(document).ready(function() {
		$.ajax({url: "boardList", success: function(result){             
			var html = "";
			result.forEach(function(item){
				html+= "<tr> <td><a href = 'view?idx=" + item.idx + "'>" + item.title + "</a>"
			})
		   $("#listArea").append(html)
		   $('#example').DataTable();
		 }});
	} );	
</script>
</head>

<body>

<div class="super_container">
	
	<!-- 헤더 -->
	<%@include file ="../header.jsp" %>
	<!-- 헤더 종료 -->

	<!-- Home -->

	<div class="home">
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../../images/about_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">안전공지</div>
		</div>
	</div>

	<!-- side 메뉴 -->
	<%@include file ="side.jsp" %>
	<!-- side 종료 -->

		<div class="container">
			<div class="row">
				<div class="col-lg-1 temp_col"></div>
				<div class="col-lg-11">
					<!-- Offers Sorting -->
					<div class="offers_sorting_container">
						<ul class="offers_sorting float-right">
								<span class="button btn-success"><a href="write.do">글남기기</a></span>
						</ul>
					</div>
						<!-- Offers Grid -->
						<div class="offers_grid">
							<!-- Offers Item -->
							<div class="offers_item rating_4">
								<div class="row">
									<div class="col-lg-1 temp_col"></div>
									<div class="col-lg-11">
										<div class="offers_content">
											<div class="offers_price">bd_title<span>bd_date</span></div>
											<p class="offers_text">bd_content</p>
											<div class="button book_button float-right"><a href="board_detail.do">글 보기</a></div>
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


				<!-- 페이징 -->	
				<div class="container">
					<div class="row">
						<div class="col-lg-5 temp_col"></div>
						<nav aria-label="Page navigation example" class="col-lg-3">
							<ul class="pagination pagination-sm">
							<li class="page-item">
								<a class="page-link" href="#" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
								<span class="sr-only">이전</span>
								</a>
							</li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item">
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