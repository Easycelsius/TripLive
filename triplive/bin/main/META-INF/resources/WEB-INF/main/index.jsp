<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>TripLive</title>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="Travelix Project" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../styles/bootstrap4/bootstrap.min.css"
    />
    <link
      href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
      type="text/css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../plugins/OwlCarousel2-2.2.1/owl.carousel.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../plugins/OwlCarousel2-2.2.1/owl.theme.default.css"
    />
    <link
      rel="stylesheet"
      type="text/css"
      href="../plugins/OwlCarousel2-2.2.1/animate.css"
    />
    <link rel="stylesheet" type="text/css" href="../styles/main_styles.css" />
    <link rel="stylesheet" type="text/css" href="../styles/responsive.css" />
    <link rel="stylesheet" type="text/css" href="../styles/about_styles.css" />
    <link rel="stylesheet" type="text/css" href="../styles/about_responsive.css" />

    <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      type="text/javascript"
    ></script>

    <script>
      $(function () {
        var apiURI =
          "https://earthquake.kr:23490/query/AUDKRW,BRLKRW,CADKRW,CHFKRW,CNYKRW,EURKRW,GBPKRW,HKDKRW,INRKRW,JPYKRW,MXNKRW,RUBKRW,THBKRW,TWDKRW,USDKRW,VNDKRW";

        $.ajax({
          url: apiURI,
          dataType: "json",
          type: "GET",
          async: "false",
          success: function (resp) {
            $("#US").attr("data-end-value", resp.USDKRW[0].toFixed(4)*10000);
            $("#JP").attr("data-end-value", (resp.JPYKRW[0]*100).toFixed(4)*10000);
            $("#CN").attr("data-end-value", resp.CNYKRW[0].toFixed(4)*10000);
            $("#VN").attr("data-end-value", (resp.VNDKRW[0]*100).toFixed(4)*10000);
          },
        });
      });

    </script>

    <script>
          // $(function () {
          //   abc2 = $(".ct_text p").text()+"</br>"
          //   abc3 = abc2.substring(1, 100)
          //   abc4 = abc3 + "..." 
          //   $(".ct_text").remove()
          //   abc6 = $(".cta_title").append('<p>'+abc4+'</p>')
          // });   
    </script>
    
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
              <div
                class="home_slider_background"
                style="background-image: url(../images/main3.jpg)"
              ></div>

              <div class="home_slider_content text-center">
                <div
                  class="home_slider_content_inner"
                  data-animation-in="flipInX"
                  data-animation-out="animate-out fadeOut"
                >
                  <h1>안전걱정없이</h1>
                  <h1>여행을 떠나요</h1>
                  <div class="button home_slider_button">
                    <div class="button_bcg"></div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Slider Item -->
            <div class="owl-item home_slider_item">
              <!-- Image by https://unsplash.com/photos/Gg93cEspT_8 -->
              <div
                class="home_slider_background"
                style="background-image: url(../images/main2.png)"
              ></div>

              <div class="home_slider_content text-center">
                <div
                  class="home_slider_content_inner"
                  data-animation-in="flipInX"
                  data-animation-out="animate-out fadeOut"
                >
                  <h1>여행은</h1>
                  <h1>Triplive처럼</h1>
                  <div class="button home_slider_button">
                    <div class="button_bcg"></div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Slider Item -->
            <div class="owl-item home_slider_item">
              <div
                class="home_slider_background"
                style="background-image: url(../images/main1.jpg)"
              ></div>

              <div class="home_slider_content text-center">
                <div
                  class="home_slider_content_inner"
                  data-animation-in="flipInX"
                  data-animation-out="animate-out fadeOut"
                >
                  <h1>내일의 여행을</h1>
                  <h1>준비하는 우리에게</h1>
                  <div class="button home_slider_button">
                    <div class="button_bcg"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Home Slider Nav - Prev -->
          <div class="home_slider_nav home_slider_prev">
            <svg
              version="1.1"
              id="Layer_2"
              xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              x="0px"
              y="0px"
              width="28px"
              height="33px"
              viewBox="0 0 28 33"
              enable-background="new 0 0 28 33"
              xml:space="preserve"
            >
              <defs>
                <linearGradient id="home_grad_prev">
                  <stop offset="0%" stop-color="#fa9e1b" />
                  <stop offset="100%" stop-color="#8d4fff" />
                </linearGradient>
              </defs>
              <path
                class="nav_path"
                fill="#F3F6F9"
                d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
					M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
					C22.545,2,26,5.541,26,9.909V23.091z"
              />
              <polygon
                class="nav_arrow"
                fill="#F3F6F9"
                points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
					11.042,18.219 "
              />
            </svg>
          </div>

          <!-- Home Slider Nav - Next -->
          <div class="home_slider_nav home_slider_next">
            <svg
              version="1.1"
              id="Layer_3"
              xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              x="0px"
              y="0px"
              width="28px"
              height="33px"
              viewBox="0 0 28 33"
              enable-background="new 0 0 28 33"
              xml:space="preserve"
            >
              <defs>
                <linearGradient id="home_grad_next">
                  <stop offset="0%" stop-color="#fa9e1b" />
                  <stop offset="100%" stop-color="#8d4fff" />
                </linearGradient>
              </defs>
              <path
                class="nav_path"
                fill="#F3F6F9"
                d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
				M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
				C22.545,2,26,5.541,26,9.909V23.091z"
              />
              <polygon
                class="nav_arrow"
                fill="#F3F6F9"
                points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
				17.046,15.554 "
              />
            </svg>
          </div>

          <!-- Home Slider Dots -->

          <div class="home_slider_dots">
            <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
              <li class="home_slider_custom_dot active">
                <div></div>
                01.
              </li>
              <li class="home_slider_custom_dot">
                <div></div>
                02.
              </li>
              <li class="home_slider_custom_dot">
                <div></div>
                03.
              </li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Search -->

  <!--  <div class="search">
        <! Search Contents >

        <div class="container fill_height">
          <div class="row fill_height">
            <div class="col fill_height">
              <! Search Tabs >

              <div class="search_tabs_container">
                <div
                  class="
                    search_tabs
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-between justify-content-start
                  "
                >
                  <div
                    class="
                      search_tab
                      active
                      d-flex
                      flex-row
                      align-items-center
                      justify-content-lg-center justify-content-start
                    "
                  >
                  <img src="../images/suitcase.png" alt="" /><span>
                    <a href="#section_title1"> 안전공지</a></span>
                  </div>
                  <div
                    class="
                      search_tab
                      d-flex
                      flex-row
                      align-items-center
                      justify-content-lg-center justify-content-start
                    "
                  >
                    <img src="../images/cruise.png" alt="" />사건사고 유형
                  </div>
                  <div
                    class="
                      search_tab
                      d-flex
                      flex-row
                      align-items-center
                      justify-content-lg-center justify-content-start
                    "
                  >
                    <img src="../images/bus.png" alt="" />재외공관 정보
                  </div>
                  <div
                    class="
                      search_tab
                      d-flex
                      flex-row
                      align-items-center
                      justify-content-lg-center justify-content-start
                    "
                  >
                    <img src="../images/departure.png" alt="" />최신 코로나19 소식
                  </div>
                  <div
                    class="
                      search_tab
                      d-flex
                      flex-row
                      align-items-center
                      justify-content-lg-center justify-content-start
                    "
                  >
                    <img src="../images/island.png" alt="" />입국허가요건
                  </div>
                  <div
                    class="
                      search_tab
                      d-flex
                      flex-row
                      align-items-center
                      justify-content-lg-center justify-content-start
                    "
                  >
                    <img src="../images/diving.png" alt="" />환율
                  </div>
                </div>
              </div>

              <! Search Panel -->

            <!--     <div class="search_panel active">
                <form
                  action="#"
                  id="search_form_1"
                  class="
                    search_panel_content
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-center justify-content-start
                  "
                >
                  <div class="search_item">
                    <div>찾으시는 환율 국가를 검색하세요</div>
                    <input
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
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
                  <button class="button search_button">
                    검색<span></span><span></span><span></span>
                  </button>
                </form>
              </div> -->

              <!-- Search Panel -->

        <!--      <div class="search_panel">
                <form
                  action="#"
                  id="search_form_2"
                  class="
                    search_panel_content
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-center justify-content-start
                  "
                >
                  <div class="search_item">
                    <div>찾으시는 외교부를 검색하세요</div>
                    <input
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
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
                  <button class="button search_button">
                    검색<span></span><span></span><span></span>
                  </button>
                </form>
              </div>-->

              <!-- Search Panel -->

    <!--      <div class="search_panel">
                <form
                  action="#"
                  id="search_form_3"
                  class="
                    search_panel_content
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-center justify-content-start
                  "
                >
                  <div class="search_item">
                    <div>찾으시는 국가 정보를 검색하세요</div>
                    <input
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
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
                  <button class="button search_button">
                    검색<span></span><span></span><span></span>
                  </button>
                </form>
              </div> -->

              <!-- Search Panel -->

      <!--        <div class="search_panel">
                <form
                  action="#"
                  id="search_form_4"
                  class="
                    search_panel_content
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-center justify-content-start
                  "
                >
                  <div class="search_item">
                    <div>찾으시는 날씨 국가를 검색하세요</div>
                    <input
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
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
                  <button class="button search_button">
                    검색<span></span><span></span><span></span>
                  </button>
                </form>
              </div> -->

              <!-- Search Panel -->

            <!--    <div class="search_panel">
                <form
                  action="#"
                  id="search_form_5"
                  class="
                    search_panel_content
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-center justify-content-start
                  "
                >
                  <div class="search_item">
                    <div>찾으시는 재난 및 긴급 국가를 검색하세요</div>
                    <input
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
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
                  <button class="button search_button">
                    검색<span></span><span></span><span></span>
                  </button>
                </form>
              </div> -->

              <!-- Search Panel -->

      <!--      <div class="search_panel">
                <form
                  action="#"
                  id="search_form_6"
                  class="
                    search_panel_content
                    d-flex
                    flex-lg-row flex-column
                    align-items-lg-center align-items-start
                    justify-content-lg-center justify-content-start
                  "
                >
                  <div class="search_item">
                    <div>찾으시는 여행지 정보를 검색하세요</div>
                    <input
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
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
                  <button class="button search_button">
                    검색<span></span><span></span><span></span>
                  </button>
                </form>
              </div> 
            </div>
          </div>
        </div>
      </div> -->

      <!-- Intro -->

      <div class="intro">
        <div class="container">
          <div class="row">
            <div class="col">
              <h2 class="intro_title text-center">국가∙지역별 안전공지</h2>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-10 offset-lg-1">
              <div class="intro_text text-center">
                <p>
                  각 공관에서 실시간 업데이트 되는 국가별 최신 안전공지를 제공
                </p>
              </div>
            </div>
          </div>
          <div class="row intro_items">
              <!-- Intro Item -->
                <c:forEach items="${safetylist}" var="l" varStatus="status">
                <c:if test="${ status.index le 2 }">            
                  <div class="col-lg-4 intro_col">
                    <div class="intro_item">
                      <div class="intro_item_overlay"></div>
                      <!-- Image by https://unsplash.com/@dnevozhai -->
                      <div
                        class="intro_item_background"
                        style="
                          background-image: url(../img/background/destinations-18.jpg);
                        "
                      ></div>
                      <div
                        class="
                          intro_item_content
                          d-flex
                          flex-column
                          align-items-center
                          justify-content-center
                        "
                      >
                        <div class="intro_date">${l.wrtDt}</div>
                        <div class="button intro_button">
                          <div class="button_bcg"></div>
                          <a href="safetylist/safetylist.do"
                            >자세히 보기<span></span><span></span><span></span
                          ></a>
                        </div>
                        <div class="intro_center text-center">
                          <h1>${l.countryNm}</h1>
                          <div class="intro_price">
                              ${l.title}
                          </div>
                          <div class="rating rating_4">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </c:if>
                </c:forEach>
          </div>
        </div>
      </div>

      <!-- CTA -->

      <div class="cta">
        <!-- Image by https://unsplash.com/@thanni -->
        <div
          class="cta_background"
          style="background-image: url(../images/cta.jpg)"
        ></div>

        <div class="container">
          <div class="row">
            <div class="col">
              <!-- CTA Slider -->
              <div class="cta_slider_container">
                <div class="owl-carousel owl-theme cta_slider">                  
                  <c:forEach items="${safetylist}" var="l" begin="0" end="2">

                  <div class="owl-item cta_item text-center">
                    <div class="cta_title">국가∙지역별 사건사고 유형</div>
                    <div class="rating_r rating_r_4 ct_text" id="ct_text">
                      <p class="cta_text" style="overflow: hidden;
                      text-overflow: ellipsis;
                      white-space: nowrap;">
                        <div>${l.txtOriginCn}</div>
                      </p>
                      <div class="button cta_button">
                        <div class="button_bcg"></div>
                        <a href="#">바로가기<span></span>
                        </a>
                      </div>
                    </div>
                  </div>
                  </c:forEach>                              
                </div>
              </div>
            </div>

                <!-- CTA Slider Nav - Prev -->
                <div class="cta_slider_nav cta_slider_prev">
                  <svg
                    version="1.1"
                    id="Layer_4"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px"
                    y="0px"
                    width="28px"
                    height="33px"
                    viewBox="0 0 28 33"
                    enable-background="new 0 0 28 33"
                    xml:space="preserve"
                  >
                    <defs>
                      <linearGradient id="cta_grad_prev">
                        <stop offset="0%" stop-color="#fa9e1b" />
                        <stop offset="100%" stop-color="#8d4fff" />
                      </linearGradient>
                    </defs>
                    <path
                      class="nav_path"
                      fill="#F3F6F9"
                      d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
								M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
								C22.545,2,26,5.541,26,9.909V23.091z"
                    />
                    <polygon
                      class="nav_arrow"
                      fill="#F3F6F9"
                      points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
								11.042,18.219 "
                    />
                  </svg>
                </div>

                <!-- CTA Slider Nav - Next -->
                <div class="cta_slider_nav cta_slider_next">
                  <svg
                    version="1.1"
                    id="Layer_5"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px"
                    y="0px"
                    width="28px"
                    height="33px"
                    viewBox="0 0 28 33"
                    enable-background="new 0 0 28 33"
                    xml:space="preserve"
                  >
                    <defs>
                      <linearGradient id="cta_grad_next">
                        <stop offset="0%" stop-color="#fa9e1b" />
                        <stop offset="100%" stop-color="#8d4fff" />
                      </linearGradient>
                    </defs>
                    <path
                      class="nav_path"
                      fill="#F3F6F9"
                      d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
							M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
							C22.545,2,26,5.541,26,9.909V23.091z"
                    />
                    <polygon
                      class="nav_arrow"
                      fill="#F3F6F9"
                      points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
							17.046,15.554 "
                    />
                  </svg>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Offers -->
      <div class="offers">
        <div class="container">
          <div class="row">
            <div class="col text-center">
              <h2 class="section_title" id="section_title1">국가별 재외공관 정보</h2>
            </div>
          </div>
          <div class="row offers_items">
            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
              <div class="offers_item">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="offers_image_container">
                      <!-- Image by https://unsplash.com/@kensuarez -->
                      <div
                        class="offers_image_background"
                        style="background-image: url(../img/background/JP.jpg)"
                      ></div>
                      <!-- <div class="offer_name"><a href="#">grand castle</a></div> -->
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="offers_content">
                      <div class="offers_price">
                        일본<br /><span>주 일본 대한민국 대사관</span>
                      </div>
                      <div class="rating_r rating_r_4 offers_rating">
                        <i></i>
                        <i></i>
                      </div>
                      <p class="offers_text">
                        ㅇ 전화번호 : (81) 3-3455-2601<br />ㅇ 재외공관 주소 :
                        1-7-32 <br />Minamiazabu Minato-ku, Tokyo, Japan,
                      </p>
                      <div class="offers_icons">
                      </div>
                      <div class="offers_link">
                        <img src="img/QRimage/QRCodeImgjp.jpg" width="150px" height="100px">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
              <div class="offers_item">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="offers_image_container">
                      <!-- Image by Egzon Bytyqi -->
                      <div
                        class="offers_image_background"
                        style="background-image: url(../img/background/CN.png)"
                      ></div>
                      <!-- <div class="offer_name"><a href="#">turkey hills</a></div> -->
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="offers_content">
                      <div class="offers_price">
                        중국<br /><span>주 중국 대한민국 대사관</span>
                      </div>
                      <div class="rating_r rating_r_4 offers_rating">
                        <i></i>
                        <i></i>
                      </div>
                      <p class="offers_text">
                        ㅇ 전화번호 : (86) 10-8531-0700<br />ㅇ 재외공관 주소 :
                        DongfangdongLu Chaoyang District, Beijing, China 100600
                      </p>
                      <div class="offers_icons">
                      </div>
                      <div class="offers_link">
                        <img src="img/QRimage/QRCodeImgcn.gif" width="150px" height="100px">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
              <div class="offers_item">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="offers_image_container">
                      <!-- Image by https://unsplash.com/@nevenkrcmarek -->
                      <div
                        class="offers_image_background"
                        style="
                          background-image: url(../img/background/Mount_Rushmore.jpg);
                        "
                      ></div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="offers_content">
                      <div class="offers_price">
                        미국<br /><span>주 미국 대한민국 대사관</span>
                      </div>
                      <div class="rating_r rating_r_4 offers_rating">
                        <i></i>
                        <i></i>
                      </div>
                      <p class="offers_text">
                        ㅇ 전화번호 : (1) 202-939-5600<br />ㅇ 재외공관 주소 :
                        2320 Massachusetts Avenue, N.W., Washington, D.C. 20008,
                        U.S.A.,
                      </p>
                      <div class="offers_icons">
                      </div>
                      <div class="offers_link">
                        <img src="img/QRimage/QRCodeImgus.gif" width="150px" height="100px">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <!-- Offers Item -->
            <div class="col-lg-6 offers_col">
              <div class="offers_item">
                <div class="row">
                  <div class="col-lg-6">
                    <div class="offers_image_container">
                      <!-- Image by https://unsplash.com/@mantashesthaven -->
                      <div
                        class="offers_image_background"
                        style="
                          background-image: url(../img/background/destinations-19.jpg);
                        "
                      ></div>
                    </div>
                  </div>
                  <div class="col-lg-6">
                    <div class="offers_content">
                      <div class="offers_price">
                        태국<br /><span>주 태국 대한민국 대사관</span>
                      </div>
                      <div class="rating_r rating_r_4 offers_rating">
                        <i></i>
                        <i></i>
                      </div>
                      <p class="offers_text">
                        ㅇ 전화번호 : (66) 2-247-7537<br />ㅇ 재외공관 주소 : 23
                        Thiam-Ruammit Road, Ratchadapisek, Huay-Kwang, Bangkok
                        10310, Thailand,
                      </p>
                      <div class="offers_icons">
                      </div>
                      <div class="offers_link">
                        <img src="img/QRimage/QRCodeImgth.gif" width="150px" height="100px">
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Testimonials -->

      <div class="testimonials">
        <div class="test_border"></div>
        <div class="container">
          <div class="row">
            <div class="col text-center">
              <h2 class="section_title">국가·지역별 최신 코로나19 소식</h2>
            </div>
          </div>
          <div class="row">
            <div class="col">
              <!-- Testimonials Slider -->

              <div class="test_slider_container">
                <div class="owl-carousel owl-theme test_slider">
                  <!-- Testimonial Item -->
                  <div class="owl-item">
                    <div class="test_item">
                      <div class="test_image">
                        <img
                          src="../img/background/destinations-141.jpg"
                          alt="https://unsplash.com/@anniegray"
                        />
                      </div>
                      <div class="test_icon">
                        <img src="../img/countryflag/JP1.gif" alt="" />
                      </div>
                      <div class="test_content_container">
                        <div class="test_content">
                          <div class="test_item_info">
                            <div class="test_name">일본</div>
                            <div class="test_date">2020년 12월 27일</div>
                          </div>
                          <div class="test_quote_title">
                            일본 정부의 모든 국가의 신규 입국 일시정지 발표 관련
                            안내
                          </div>
                          <p class="test_quote_text">
                            ○ 일본 정부는 모든 국가 및 지역으로부터 외국인의
                            신규 입국을 오는 12.28.(월) 0시부터 내년 1월 말까지
                            일시 정지한다는 조치를 발표하였습니다.○ 다만, 이번
                            조치는 한일 양자 간 합의한 비즈니스 및 레지던트
                            트랙에 대해서는 적용이 제외되며, 이미 발급된 사증을
                            소지한 경우 원칙적으로 입국이 인정되는바, 우리
                            국민의 경우 아래 사항에 해당하지 않을 시 기존과
                            동일하게 일본 입국이 가능합니다.※ 일본 입국 신청일
                            전 14일 이내 영국 또는 남아프리카공화국 체제 이력이
                            있는 경우 및 2021년 1.4.(월) 이후의 입국자로서 일본
                            입국 신청일 전 14일 이내에 감염증 위험
                            정보레벨3(도항중지 권고) 대상국과 지역에 체제 이력이
                            있는 경우는 일본 입국 불가○ 상기 관련, 일본에
                            입국하는 우리 국민들께서는 착오 없으시길 바라며 기타
                            도움이 필요하시거나 긴급상황 발생 시 아래 연락처로
                            연락해 주시기 바랍니다.☞ 주일본대한민국대사관&nbsp;
                            &nbsp;- 대표번호(근무시간 중) : +81 3 3452
                            7611/9&nbsp; &nbsp;- 긴급연락처(사건사고 등 긴급상황
                            발생 시, 24시간) : +81 70 2153 5454☞
                            영사콜센터(서울, 24시간) : +82-2-3210-0404
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Testimonial Item -->
                  <div class="owl-item">
                    <div class="test_item">
                      <div class="test_image">
                        <img
                          src="../img/background/The_Statue_of_Liberty1.jpg"
                          alt="https://unsplash.com/@tschax"
                        />
                      </div>
                      <div class="test_icon">
                        <img src="../img/countryflag/US1.gif" alt="" />
                      </div>
                      <div class="test_content_container">
                        <div class="test_content">
                          <div class="test_item_info">
                            <div class="test_name">미국</div>
                            <div class="test_date">2020년 06월 09일</div>
                          </div>
                          <div class="test_quote_title">
                            미국 하와이주 14일 의무격리 규정 위반 주의
                          </div>
                          <p class="test_quote_text">
                            미국 하와이주 14일 의무격리 규정 위반 주의&nbsp;○
                            최근 하와이주를 방문한 우리국민이 하와이주의 14일
                            의무격리 규정을 위반하여 체포되는 사건이
                            발생하였습니다.○ 하와이주는 14일 의무격리 규정
                            위반하는 방문객에 대해 상당히 엄격히 법을 집행하고
                            있습니다.- 하와이에 도착하는 모든 승객(내/외국인 및
                            하와이 거주자 불문)은 자택 혹은 호텔에서 14일간
                            자비로 의무격리 실시- 의무격리 위반시 체포되며, 이후
                            최대 5천불 벌금 또는 1년 이하의 징역 부과, 또는 해당
                            벌금과 징역이 함께 부과 되는 등 비교적 무거운 형사벌
                            부과○ 하와이 방문 예정 우리국민께서는 14일 의무격리
                            관련 규정을 숙지하시고,&nbsp; 방문시 동 규정을
                            철저히 준수하여 주시기 바랍니다.○ 이와 관련,
                            긴급상황 발생시 아래 연락처로 연락해 주시기
                            바랍니다.☞ 호놀룰루긴급(경찰서, 소방서) 신고 : 국번
                            없이 911☞ 주호놀룰루총영사관&nbsp; &nbsp;-
                            대표번호(근무시간 중) : +1-808-595-6109&nbsp;
                            &nbsp;- 긴급연락처(사건사고 등 긴급상황 발생 시,
                            24시간) : +1-808-265-3949☞ 영사콜센터(서울, 24시간)
                            : +82-2-3210-0404
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Testimonial Item -->
                  <div class="owl-item">
                    <div class="test_item">
                      <div class="test_image">
                        <img
                          src="../img/background/destinations-131.jpg"
                          alt="https://unsplash.com/@seefromthesky"
                        />
                      </div>
                      <div class="test_icon">
                        <img src="../img/countryflag/PH1.gif" alt="" />
                      </div>
                      <div class="test_content_container">
                        <div class="test_content">
                          <div class="test_item_info">
                            <div class="test_name">필리핀</div>
                            <div class="test_date">2020년 03월 20일</div>
                          </div>
                          <div class="test_quote_title">
                            필리핀 비자 면제 및 무비자 입국 혜택 중단 발표
                          </div>
                          <p class="test_quote_text">
                            필리핀 비자 면제 및 무비자 입국 혜택 중단
                            발표&nbsp;○ 필리핀 정부는 3.22.(일) 0시부터 외국인에
                            대한 비자 면제 및 무비자 입국 혜택을 중단하며, 이미
                            발급된 비자도 취소된 것으로 간주한다고
                            발표하였습니다. 단, 다음 대상자는 예외가
                            적용됩니다.- 필리핀 국민의 배우자 및 자녀(한국인의
                            경우, 필리핀 국민과 동반 여부 불필요)- 외국 정부와
                            국제기구 직원에게 발급된 비자 소지자○ 비자 취소와
                            관련된 내용은 현재 외국에 있는 비자 소지자에게
                            한정되는 것으로 판단되나, 사실 관계 확인 후에 필리핀
                            내 비자 소지자에게도 영향을 미치는 경우 추가
                            공지하도록 하겠습니다.○ 필리핀 정부의 출입국 정책이
                            수시로 변하고 긴급하게 시행되고 있습니다. 자세한
                            내용은 주필리핀대사관 홈페이지 및 SNS(카카오톡,
                            페이스북)을 확인해 주시기 바랍니다.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Testimonial Item -->
                  <div class="owl-item">
                    <div class="test_item">
                      <div class="test_image">
                        <img src="../img/background/au.jpg" alt="" />
                      </div>
                      <div class="test_icon">
                        <img src="../img/countryflag/SG1.gif" alt="" />
                      </div>
                      <div class="test_content_container">
                        <div class="test_content">
                          <div class="test_item_info">
                            <div class="test_name">싱가포르</div>
                            <div class="test_date">2020년 3월 4일</div>
                          </div>
                          <div class="test_quote_title">
                            싱가포르 정부, 14일 이내 한국 등 방문이력 방문객 입국 및 경유 불허
                          </div>
                          <p class="test_quote_text">
                            싱가포르 정부, 14일 이내 한국 등 방문이력 방문객 입국 및 경유 불허&nbsp;○ 2020.03.04.(수) 23:59부터 최근 14일 이내 우리나라, 이탈리아(북부), 이란을 방문한 모든 여행객들은 싱가포르에 입국 및 경유가 불허됩니다.○ 부가적인 사항은 차후 대사관 안전여행공지 게시판에 공지할 예정이니 참고하시기 바랍니다.※ 싱가포르 시민·영주권자, 장기 체류 비자 소지자의 경우 14일 자가 격리 명령(Stay-Home Notice, SHN) 조치※ 취업 비자(work pass) 및 동반 비자(Dependant`s Pass, DP), 장기체류 비자(Long-Term Visit Pass, LTVP) 등 소지자는 고용주를 통해 싱가포르행 항공기 탑승 전 사전 입국 승인
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Testimonial Item -->
                  <div class="owl-item">
                    <div class="test_item">
                      <div class="test_image">
                        <img src="../img/background/th1.jpg" alt="" />
                      </div>
                      <div class="test_icon">
                        <img src="../img/countryflag/CN1.gif" alt="" />
                      </div>
                      <div class="test_content_container">
                        <div class="test_content">
                          <div class="test_item_info">
                            <div class="test_name">중국</div>
                            <div class="test_date">2020년 2월 27일</div>
                          </div>
                          <div class="test_quote_title">
                            중국 내 코로나-19 관련 안전유의
                          </div>
                          <p class="test_quote_text">
                            중국 내 코로나-19 관련 안전유의&nbsp;○ 현재 중국에서는 코로나19 확산을 방지하기 위해 각 성ㆍ시별로 공항 등에서 방역 통제 조치가 시행되고 있으며, 이에 따라 자가격리ㆍ관찰 등 입국 절차도 강화되고 있습니다.○ 이러한 조치들이 충분한 사전공지 없이 시행되는 경우도 있는 만큼, 중국 방문을 계획하고 계신 우리 국민들께서는 특별히 유의하여 주시기 바랍니다.○ 중국 내 체류ㆍ방문하는 우리 국민들께서는 개인위생수칙을 준수하고 공공장소 방문을 자제하시되, 부득이 공공장소 방문 및 대중교통 등 이용시에는 반드시 마스크를 착용하시기 바라며, 가금류나 야생동물, 호흡기 유증상자와의 접촉을 삼가주시기 바랍니다.○ 아울러, 중국 내 우리 국민 감염ㆍ격리 사례 발생시 적절한 의료서비스를 제공 받을 수 있도록 필요한 영사조력을 제공하고 있으므로 관련 사례 발생 시 관할 재외공관 또는 영사콜센터(+82-2-3210-0404)로 연락주시기 바랍니다.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>

                  <!-- Testimonial Item -->
                  <div class="owl-item">
                    <div class="test_item">
                      <div class="test_image">
                        <img src="../img/background/VN1.jpg" alt="" />
                      </div>
                      <div class="test_icon">
                        <img src="../img/countryflag/VN1.gif" alt="" />
                      </div>
                      <div class="test_content_container">
                        <div class="test_content">
                          <div class="test_item_info">
                            <div class="test_name">베트남</div>
                            <div class="test_date">2020년 2월 28일</div>
                          </div>
                          <div class="test_quote_title">
                            베트남 15일 무사증 입국 임시중단
                          </div>
                          <p class="test_quote_text">
                            베트남 15일 무사증 입국 임시중단&nbsp;○ 베트남은 한국을 포함한 코로나19 확산국가에 대해 15일간 체류 무사증제도를 2.29(토)부터 임시 중단키로 결정하였습니다.○ 베트남 방문을 희망하는 우리 국민께서는 주한 베트남 대사관에서 비자를 미리 발급 받으시기 바랍니다.○ 베트남 입국과 관련된 보다 자세한 사항은 주베트남대한민국대사관 홈페이지(링크)를 확인하여 주시기 바랍니다.
                          </p>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                </div>
                <!-- Testimonials Slider Nav - Prev -->
                <div class="test_slider_nav test_slider_prev">
                  <svg
                    version="1.1"
                    id="Layer_6"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px"
                    y="0px"
                    width="28px"
                    height="33px"
                    viewBox="0 0 28 33"
                    enable-background="new 0 0 28 33"
                    xml:space="preserve"
                  >
                    <defs>
                      <linearGradient id="test_grad_prev">
                        <stop offset="0%" stop-color="#fa9e1b" />
                        <stop offset="100%" stop-color="#8d4fff" />
                      </linearGradient>
                    </defs>
                    <path
                      class="nav_path"
                      fill="#F3F6F9"
                      d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
								M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
								C22.545,2,26,5.541,26,9.909V23.091z"
                    />
                    <polygon
                      class="nav_arrow"
                      fill="#F3F6F9"
                      points="15.044,22.222 16.377,20.888 12.374,16.885 16.377,12.882 15.044,11.55 9.708,16.885 11.04,18.219 
								11.042,18.219 "
                    />
                  </svg>
                </div>

                <!-- Testimonials Slider Nav - Next -->
                <div class="test_slider_nav test_slider_next">
                  <svg
                    version="1.1"
                    id="Layer_7"
                    xmlns="http://www.w3.org/2000/svg"
                    xmlns:xlink="http://www.w3.org/1999/xlink"
                    x="0px"
                    y="0px"
                    width="28px"
                    height="33px"
                    viewBox="0 0 28 33"
                    enable-background="new 0 0 28 33"
                    xml:space="preserve"
                  >
                    <defs>
                      <linearGradient id="test_grad_next">
                        <stop offset="0%" stop-color="#fa9e1b" />
                        <stop offset="100%" stop-color="#8d4fff" />
                      </linearGradient>
                    </defs>
                    <path
                      class="nav_path"
                      fill="#F3F6F9"
                      d="M19,0H9C4.029,0,0,4.029,0,9v15c0,4.971,4.029,9,9,9h10c4.97,0,9-4.029,9-9V9C28,4.029,23.97,0,19,0z
							M26,23.091C26,27.459,22.545,31,18.285,31H9.714C5.454,31,2,27.459,2,23.091V9.909C2,5.541,5.454,2,9.714,2h8.571
							C22.545,2,26,5.541,26,9.909V23.091z"
                    />
                    <polygon
                      class="nav_arrow"
                      fill="#F3F6F9"
                      points="13.044,11.551 11.71,12.885 15.714,16.888 11.71,20.891 13.044,22.224 18.379,16.888 17.048,15.554 
							17.046,15.554 "
                    />
                  </svg>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="trending">
        <div class="container">
          <div class="row">
            <div class="col text-center">
              <h2 class="section_title">국가·지역별 입국허가요건</h2>
            </div>
          </div>
          <div class="row trending_container">
            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img src="../img/countryflag/IE.gif" />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">아일랜드</a></div>
                  <div class="trending_price">체류기간 : 90일</div>
                  <div class="trending_location">Ireland</div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/US.gif"
                    alt="https://unsplash.com/@grovemade"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">미국</a></div>
                  <div class="trending_price">체류기간 : 90일</div>
                  <div class="trending_location">
                    전자여행허가(ESTA) 사전 신청 필요
                  </div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/RU.gif"
                    alt="https://unsplash.com/@jbriscoe"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">러시아</a></div>
                  <div class="trending_price">
                    1회 최대 연속 체류 60일, 180일 중 누적 90일
                  </div>
                  <div class="trending_location">Russia</div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/TW.gif"
                    alt="https://unsplash.com/@oowgnuj"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">타이완</a></div>
                  <div class="trending_price">체류기간 : 90일</div>
                  <div class="trending_location">
                    여권 유효기간 6개월 이상 필수
                  </div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/VN.gif"
                    alt="https://unsplash.com/@mindaugas"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">베트남</a></div>
                  <div class="trending_price">
                    체류기간 : 15일 (2020.2.29.0시 부터 잠정중단)
                  </div>
                  <div class="trending_location">Vietnam</div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/JP.gif"
                    alt="https://unsplash.com/@itsnwa"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">일본</a></div>
                  <div class="trending_price">체류기간 : 90일</div>
                  <div class="trending_location">Japan</div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/HK.gif"
                    alt="https://unsplash.com/@rktkn"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">홍콩</a></div>
                  <div class="trending_price">체류기간 : 90일</div>
                  <div class="trending_location">Hongkong</div>
                </div>
              </div>
            </div>

            <!-- Trending Item -->
            <div class="col-lg-3 col-sm-6">
              <div class="trending_item clearfix">
                <div class="trending_image">
                  <img
                    src="../img/countryflag/PH.gif"
                    alt="https://unsplash.com/@thoughtcatalog"
                  />
                </div>
                <div class="trending_content">
                  <div class="trending_title"><a href="#">필리핀</a></div>
                  <div class="trending_price">체류기간 : 30일</div>
                  <div class="trending_location">Philippines</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Milestones -->

      <div class="milestones">
        <div class="container">
          <div class="row">
            <!-- Milestone -->
            <div class="col-lg-3 milestone_col">
              <div class="milestone text-center">
                <div class="milestone_icon">
                  <img src="../img/countryflag/US_1.jpg" alt="" />
                </div>
                <div class="milestone_counter" id="US" data-end-value="1000">
                  0
                </div>
                <div class="milestone_text">미국 USD</div>
              </div>
            </div>

            <!-- Milestone -->
            <div class="col-lg-3 milestone_col">
              <div class="milestone text-center">
                <div class="milestone_icon">
                  <img src="../img/countryflag/JP_1.gif" alt="" />
                </div>
                <div class="milestone_counter" id="JP" data-end-value="">0</div>
                <div class="milestone_text">일본 JPY (100엔)</div>
              </div>
            </div>

            <!-- Milestone -->
            <div class="col-lg-3 milestone_col">
              <div class="milestone text-center">
                <div class="milestone_icon">
                  <img src="../img/countryflag/CN_1.gif" alt="" />
                </div>
                <div class="milestone_counter" id="CN" data-end-value="">0</div>
                <div class="milestone_text">중국 CNY</div>
              </div>
            </div>

            <!-- Milestone -->
            <div class="col-lg-3 milestone_col">
              <div class="milestone text-center">
                <div class="milestone_icon">
                  <img src="../img/countryflag/VN_1.gif" alt="" />
                </div>
                <div class="milestone_counter" id="VN" data-end-value="">0</div>
                <div class="milestone_text">베트남 VND (100동)</div>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Footer -->
      <%@include file ="../footer.jsp" %>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../styles/bootstrap4/popper.js"></script>
    <script src="../styles/bootstrap4/bootstrap.min.js"></script>
    <script src="../plugins/greensock/TweenMax.min.js"></script>
    <script src="../plugins/greensock/TimelineMax.min.js"></script>
    <script src="../plugins/scrollmagic/ScrollMagic.min.js"></script>
    <script src="../plugins/greensock/animation.gsap.min.js"></script>
    <script src="../plugins/greensock/ScrollToPlugin.min.js"></script>
    <script src="../plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="../plugins/easing/easing.js"></script>
    <script src="../plugins/parallax-js-master/parallax.min.js"></script>
    <script src="../js/custom.js"></script>
    <script src="../js/about_custom.js"></script>
  </body>
</html>
