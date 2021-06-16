<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 글 남기기</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Travelix Project">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
<link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="../styles/contact_styles.css">
<link rel="stylesheet" type="text/css" href="../styles/contact_responsive.css">
<link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
<link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">
<style type="text/css">
	.img_wrap {
		width: 100%;
		margin-top: 50px;
	}
	.img_wrap img {
		max-width: 100%;
	}

	/* 로딩 관련 css */
	#link {color: #E45635;display:block;font: 12px "Helvetica Neue", Helvetica, Arial, sans-serif;text-align:center; text-decoration: none;}
	#link:hover {color: #CCCCCC}

	#link, #link:hover {-webkit-transition: color 0.5s ease-out;-moz-transition: color 0.5s ease-out;-ms-transition: color 0.5s ease-out;-o-transition: color 0.5s ease-out;transition: color 0.5s ease-out;}

	/** BEGIN CSS **/
		/* body {background: #333333;} */
		@keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@-moz-keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@-webkit-keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@-o-keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@-moz-keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@-webkit-keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@-o-keyframes rotate-loading {
			0%  {transform: rotate(0deg);-ms-transform: rotate(0deg); -webkit-transform: rotate(0deg); -o-transform: rotate(0deg); -moz-transform: rotate(0deg);}
			100% {transform: rotate(360deg);-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); -o-transform: rotate(360deg); -moz-transform: rotate(360deg);}
		}

		@keyframes loading-text-opacity {
			0%  {opacity: 0}
			20% {opacity: 0}
			50% {opacity: 1}
			100%{opacity: 0}
		}

		@-moz-keyframes loading-text-opacity {
			0%  {opacity: 0}
			20% {opacity: 0}
			50% {opacity: 1}
			100%{opacity: 0}
		}

		@-webkit-keyframes loading-text-opacity {
			0%  {opacity: 0}
			20% {opacity: 0}
			50% {opacity: 1}
			100%{opacity: 0}
		}

		@-o-keyframes loading-text-opacity {
			0%  {opacity: 0}
			20% {opacity: 0}
			50% {opacity: 1}
			100%{opacity: 0}
		}
		.loading-container,
		.loading {
			height: 100px;
			position: relative;
			width: 100px;
			border-radius: 100%;
		}

		.loading-container { margin: 40px auto }

		.loading {
			border: 2px solid transparent;
			border-color: transparent #fff transparent #FFF;
			-moz-animation: rotate-loading 1.5s linear 0s infinite normal;
			-moz-transform-origin: 50% 50%;
			-o-animation: rotate-loading 1.5s linear 0s infinite normal;
			-o-transform-origin: 50% 50%;
			-webkit-animation: rotate-loading 1.5s linear 0s infinite normal;
			-webkit-transform-origin: 50% 50%;
			animation: rotate-loading 1.5s linear 0s infinite normal;
			transform-origin: 50% 50%;
		}

		.loading-container:hover .loading {
			border-color: transparent #E45635 transparent #E45635;
		}
		.loading-container:hover .loading,
		.loading-container .loading {
			-webkit-transition: all 0.5s ease-in-out;
			-moz-transition: all 0.5s ease-in-out;
			-ms-transition: all 0.5s ease-in-out;
			-o-transition: all 0.5s ease-in-out;
			transition: all 0.5s ease-in-out;
		}

		#loading-text {
			-moz-animation: loading-text-opacity 2s linear 0s infinite normal;
			-o-animation: loading-text-opacity 2s linear 0s infinite normal;
			-webkit-animation: loading-text-opacity 2s linear 0s infinite normal;
			animation: loading-text-opacity 2s linear 0s infinite normal;
			color: #ffffff;
			font-family: "Helvetica Neue, "Helvetica", ""arial";
			font-size: 10px;
			font-weight: bold;
			margin-top: 45px;
			opacity: 0;
			position: absolute;
			text-align: center;
			text-transform: uppercase;
			top: 0;
			width: 100px;
		}

		#loadbox{
			position: fixed; right: 50%; top: 40%; margin-right: -50%; text-align:center; width: 100%;
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
		<div class="home_background parallax-window" data-parallax="scroll" data-image-src="../images/contact_background.jpg"></div>
		<div class="home_content">
			<div class="home_title">Community</div>
		</div>
	</div>

	<!-- Contact -->

	<div class="contact_form_section">
		<div class="container">
			<div class="row">
				<div class="col">

					<!-- Contact Form -->
					<div class="contact_form_container">
						<div class="contact_title text-center">글 남기기</div>
						<form action="posting.do" id="contact_form" class="contact_form text-center" method="POST" enctype="multipart/form-data">
								<select name="isoNum" id="country" class="dropdown_item_select search_input" required="required">
								<option value="410">한국</option>
								<option value="392">일본</option>
								<option value="156">중국</option>
								<option value="704">베트남</option>
								<option value="840">미국</option>
								<option value="764">태국</option>
								<option value="608">필리핀</option>
								<option value="702">싱가포르</option>
								<option value="250">프랑스</option>
								<option value="826">영국</option>
								<option value="36">호주</option>
								<option value="372">아일랜드</option>
							</select>
							<input name="bdTitle" type="text" id="contact_form_subject" class="contact_form_subject input_field" maxlength="25" placeholder="제목" required="required" data-error="제목을 적어주세요">
							<textarea name="bdContent" id="contact_form_message" class="text_field contact_form_message" rows="4" placeholder="내용" required="required" data-error="내용을 적어주세요"></textarea>
							<div class="contact_form_subject"></div>
							<input name='bdImage' type='file' class="search_input" id="input_img">
							<div>
								<div class="img_wrap">
									<img id="img" />
								</div>
							</div>
							
							<button type="submit" id="form_submit_button" class="form_submit_button button trans_200">작성 완료</button>
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>

	<!-- About -->
	<div class="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-5">
					
					<!-- About - Image -->

					<!-- <div class="about_image">
						<img src="../images/man.png" alt="">
					</div> -->

				</div>

				<div class="col-lg-4">
					
					<!-- About - Content -->

					<!-- <div class="about_content">
						<div class="logo_container about_logo">
							<div class="logo"><a href="#"><img src="../images/logo.png" alt="">travelix</a></div>
						</div>
						<p class="about_text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis vu lputate eros, iaculis consequat nisl. Nunc et suscipit urna. Integer eleme ntum orci eu vehicula iaculis consequat nisl. Nunc et suscipit urna pretium.</p>
						<ul class="about_social_list">
							<li class="about_social_item"><a href="#"><i class="fa fa-pinterest"></i></a></li>
							<li class="about_social_item"><a href="#"><i class="fa fa-facebook-f"></i></a></li>
							<li class="about_social_item"><a href="#"><i class="fa fa-twitter"></i></a></li>
							<li class="about_social_item"><a href="#"><i class="fa fa-dribbble"></i></a></li>
							<li class="about_social_item"><a href="#"><i class="fa fa-behance"></i></a></li>
						</ul>
					</div> -->

				</div>

				<div class="col-lg-3">
					
					<!-- About Info -->

					<!-- <div class="about_info">
						<ul class="contact_info_list">
							<li class="contact_info_item d-flex flex-row">
								<div><div class="contact_info_icon"><img src="../images/placeholder.svg" alt=""></div></div>
								<div class="contact_info_text">4127 Raoul Wallenber 45b-c Gibraltar</div>
							</li>
							<li class="contact_info_item d-flex flex-row">
								<div><div class="contact_info_icon"><img src="../images/phone-call.svg" alt=""></div></div>
								<div class="contact_info_text">2556-808-8613</div>
							</li>
							<li class="contact_info_item d-flex flex-row">
								<div><div class="contact_info_icon"><img src="../images/message.svg" alt=""></div></div>
								<div class="contact_info_text"><a href="mailto:contactme@gmail.com?Subject=Hello" target="_top">contactme@gmail.com</a></div>
							</li>
							<li class="contact_info_item d-flex flex-row">
								<div><div class="contact_info_icon"><img src="../images/planet-earth.svg" alt=""></div></div>
								<div class="contact_info_text"><a href="https://colorlib.com">www.colorlib.com</a></div>
							</li>
						</ul>
					</div> -->

				</div>

			</div>
		</div>
	</div>

	<!-- Google Map -->
		
	<!-- <div class="travelix_map">
		<div id="google_map" class="google_map">
			<div class="map_container">
				<div id="map"></div>
			</div>
		</div>
	</div> -->

	<!-- 헤더 -->
	<%@include file ="../footer.jsp" %>
	<!-- 헤더 종료 -->

</div>

<script src="../js/jquery-3.2.1.min.js"></script>
<script src="../styles/bootstrap4/popper.js"></script>
<script src="../styles/bootstrap4/bootstrap.min.js"></script>
<script src="../plugins/parallax-js-master/parallax.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyCIwF204lFZg1y4kPSIhKaHEXMLYxxuMhA"></script>
<script src="../js/contact_custom.js"></script>
<script type="text/javascript">
        
	// 제출 버튼 클릭시
	$("#form_submit_button").click(()=>{
		if($("#contact_form_message").val() != "" && $("#contact_form_subject").val() != ""){
			LoadingWithMask();
		} 
		
	})

	// 로딩 화면
	function LoadingWithMask() {
		//화면의 높이와 너비를 구합니다.
		var maskHeight = $(document).height();
		var maskWidth  = window.document.body.clientWidth;
		
		//화면에 출력할 마스크를 설정해줍니다.
		var mask       ="<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
		var loadingImg ='';
		
		// loadingImg +="<div id='loadingImg'>";
		// loadingImg +=" <img src='LoadingImg.gif' style='position: relative; display: block; margin: 0px auto;'/>";
		// loadingImg +="</div>"; 
		loadingImg += "<div id='loadbox'>"
		loadingImg += 	"<div id='loadingImg' class='loading-container'>"
		loadingImg += 		"<div class='loading'></div>"
    	loadingImg += 		"<div id='loading-text'>loading</div>"
		loadingImg += 	"</div>"
		loadingImg += 	"<div id='link' style='color:white'>사진 첨부시 AI가 분류를 진행하오니, 잠시만 기다려주세요</div>"
		loadingImg += "</div>"

		//화면에 레이어 추가
		$('body')
			.append(mask)

		$('#mask')
			.append(loadingImg)
			
		//마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채웁니다.
		$('#mask').css({
				'width' : maskWidth
				,'height': maskHeight
				,'opacity' :'0.4'
		});
	
		//마스크 표시
		$('#mask').show();  
	
		//로딩중 이미지 표시
		$('#loadbox').show();

		// $('div#loadbox').css({ 
		// 	"top":(($(window).height()-$('div#loadbox').outerHeight())/2+$(window).scrollTop())+"px", 
		// 	"left":(($( window ).width()-$('div#loadbox').outerWidth())/2+$(window).scrollLeft())+"px" 
		// });

	}


	// 이미지 파일 보기
	var sel_file;

	$(document).ready(function() {
		$("#input_img").on("change", handleImgFileSelect);
	}); 

	function handleImgFileSelect(e) {
		var files = e.target.files;
		var filesArr = Array.prototype.slice.call(files);

		filesArr.forEach(function(f) {
			if(!f.type.match("image.*")) {
				alert("확장자는 이미지 확장자만 가능합니다.");
				return;
			}

			sel_file = f;

			var reader = new FileReader();
			reader.onload = function(e) {
				$("#img").attr("src", e.target.result);
			}
			reader.readAsDataURL(f);
		});
	}

</script>
</body>

</html>