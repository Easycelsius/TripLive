<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
  <link rel="stylesheet" type="text/css" href="../styles/korean.css" />
  <!-- <script src="http://maps.googleapis.com/maps/api/js?v=3.3&sensor=false"></script> -->
  <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbF_v_BwkfrA_VOdxySPYycBwMd2WkVag&v=3.3&sensor=false"></script>
  <script type="text/javascript">
    var map, watchId;
    function startWatchPosition() {
      watchId = navigator.geolocation.watchPosition(
        function (position) {
          //일정한 시간단위로 함수를 주기적으로 부름
          var coords = position.coords;
          var mapCenter = new google.maps.LatLng(
            coords.latitude,
            coords.longitude
          );
          if (!map) {
            map = new google.maps.Map(document.getElementById("map"), {
              center: mapCenter,
              mapTypeId: google.maps.MapTypeId.ROADMAP,
              zoom: 15,
            });
          }
          var time = new Date();
          time.setTime(position.timestamp);
          var title =
            time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds(); //이름

          var marker = new google.maps.Marker({
            //찍히는 좌표
            position: mapCenter,
            title: title,
            map: map,
          });
          map.setCenter(mapCenter);
        },
        onPositionError,
        {
          enableHighAccuracy: true,
        }
      );
      var buttons = document.getElementsByTagName("button");
      // buttons[0].disabled = false;
      // buttons[1].disabled = false;
    }

    function stopWatchPosition() {
      navigator.geolocation.clearWatch(watchId);
      var buttons = document.getElementsByTagName("button");
      (buttons[0].disabled = false), (buttons[1].disabled = true);
      alert("위치 정보 수집 종료");
    }

    function onPositionError(error) {
      alert("위치정보수집에러:" + error.message);
    }

    navigator.geolocation.getCurrentPosition(onSuccess, onError, {
      maximumAge: 30000,
      timeout: 0,
    });
    function onError(error) {
      if (error === error.TIMEOUT) {
        alert("시간이 초과되었습니다..");
      } else {
        alert("기타 에러 발생");
      }
    }
    $(document).ready(function () {
      $(".dismissButton").click();
    });
  </script>

  <!-- <body onload="startWatchPosition()"> -->
  <body>
    <footer class="footer">
      <div class="container">
        <div class="row">
          <!-- Footer Column -->
          <div class="col-lg-3 footer_column">
            <div class="footer_col">
              <div class="footer_content footer_about">
                <div class="logo_container footer_logo">
                  <div class="logo">
                    <a href="index.do"
                      ><img
                        src="../logo/triplive_logo_white_r.png"
                        width="200px"
                        alt=""
                    /></a>
                  </div>
                </div>
                <p class="footer_about_text korean_BarunGothic_light">
                  현지에 대한 실시간 정보, 출국 전 꼭 참고해야 할, 안전공지사항
                  및 사건∙사고 유형 등을 제공하는 데이터 서비스를 제공합니다.<br />triplive는
                  통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서
                  상품·거래정보 및 거래에 대하여 책임을 지지 않습니다.
                </p>
                <!--<ul class="footer_social_list">
                  <li class="footer_social_item">
                    <a href="#"><i class="fa fa-pinterest"></i></a>
                  </li>
                  <li class="footer_social_item">
                    <a href="#"><i class="fa fa-facebook-f"></i></a>
                  </li>
                  <li class="footer_social_item">
                    <a href="#"><i class="fa fa-twitter"></i></a>
                  </li>
                  <li class="footer_social_item">
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                  </li>
                  <li class="footer_social_item">
                    <a href="#"><i class="fa fa-behance"></i></a>
                  </li>
                </ul> -->
              </div>
            </div>
          </div>

          <!-- Footer Column -->
          <div class="col-lg-3 footer_column">
            <div class="footer_col">
              <div class="footer_title">여행 금지</div>
              <div class="footer_content footer_blog">
                <!-- Footer blog item -->
                <div class="footer_blog_item clearfix">
                  <div class="footer_blog_image">
                    <img
                      src="../img/countryflag/LY.gif"
                      alt="https://unsplash.com/@avidenov"
                    />
                  </div>
                  <div class="footer_blog_content">
                    <div class="footer_blog_title">
                      Libya/리비아
                    </div>
                    <div class="footer_blog_date">2014.8.4 ~ 2021.7.31</div>
                  </div>
                </div>

                <!-- Footer blog item -->
                <div class="footer_blog_item clearfix">
                  <div class="footer_blog_image">
                    <img
                      src="../img/countryflag/SO.gif"
                      alt="https://unsplash.com/@deannaritchie"
                    />
                  </div>
                  <div class="footer_blog_content">
                    <div class="footer_blog_title">
                      Somalia/소말리아
                    </div>
                    <div class="footer_blog_date">2007.8.7 ~ 2021.7.31</div>
                  </div>
                </div>

                <!-- Footer blog item -->
                <div class="footer_blog_item clearfix">
                  <div class="footer_blog_image">
                    <img
                      src="../img/countryflag/AF.gif"
                      alt="https://unsplash.com/@bergeryap87"
                    />
                  </div>
                  <div class="footer_blog_content">
                    <div class="footer_blog_title">
                      Afghanistan/아프가니스탄
                    </div>
                    <div class="footer_blog_date">2007.8.7 ~ 2021.7.31</div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Footer Column -->
          <!-- <div class="col-lg-3 footer_column">
            <div class="footer_col">
              <div class="footer_title"></div>
              <div class="footer_content footer_tags">
                <ul class="tags_list clearfix">
                  <li class="">이 용 약 관</li>
                  <li class="">
                    개 인 정 보 처 리 방 침
                  </li>
                  <li class="">취 소 환 불 규 정</li>
                  <li class="">고 객 센 터</li>
                </ul>
              </div>
            </div>
          </div> -->
          <div class="col-lg-3 footer_column">
            <div id="map" style="width: 200px; height: 200px">현위치</div>
          </div>

          <!-- Footer Column -->
          <div class="col-lg-3 footer_column">
            <div class="footer_col">
              <div class="footer_title">고객센터</div>
              <div class="footer_content footer_contact">
                <ul class="contact_info_list">
                  <li class="contact_info_item d-flex flex-row">
                    <div>
                      <div class="contact_info_icon">
                        <img src="images/placeholder.svg" alt="" />
                      </div>
                    </div>
                    <div class="contact_info_text">
                      경기 성남시 수정구 창업로 54 가동
                    </div>
                  </li>
                  <li class="contact_info_item d-flex flex-row">
                    <div>
                      <div class="contact_info_icon">
                        <img src="images/phone-call.svg" alt="" />
                      </div>
                    </div>
                    <div class="contact_info_text">031-290-3800</div>
                  </li>
                  <li class="contact_info_item d-flex flex-row">
                    <div>
                      <div class="contact_info_icon">
                        <img src="images/message.svg" alt="" />
                      </div>
                    </div>
                    <div class="contact_info_text">
                      <a
                        href="mailto:contactme@gmail.com?Subject=Hello"
                        target="_top"
                        >triplive@gmail.com</a
                      >
                      <div></div>
                    </div>
                  </li>
                  <li class="contact_info_item d-flex flex-row">
                    <div>
                      <div class="contact_info_icon">
                        <img src="images/planet-earth.svg" alt="" />
                      </div>
                    </div>
                    <div class="contact_info_text">
                      <a href="www.triplive189.com">www.triplive189.com</a>
                    </div>
                  </li>

                  
                </ul>
                
              </div>
            </div>
          </div>
        </div>
      </div>
    </footer>
    <!-- Copyright -->

    <div class="copyright">
      <div class="container">
        <div class="row">
          <div class="col-lg-3 order-lg-1 order-2">
            <div class="copyright_content d-flex flex-row align-items-center">
              <div>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                <script>
                  document.write(new Date().getFullYear());
                </script>
                All rights reserved | This triplive is made with
                <i class="fa fa-heart-o" aria-hidden="true"></i> by
                <a href="../index.do" target="_blank">home</a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              </div>
            </div>
          </div>
          <div class="col-lg-9 order-lg-2 order-1">
            <div
              class="
                footer_nav_container
                d-flex
                flex-row
                align-items-center
                justify-content-lg-end
              "
            >
              <div class="footer_nav">
                <ul class="footer_nav_list">
                  <li class="main_nav_item"><a href="../index.do">홈</a></li>
                  <li class="main_nav_item">
                    <a href="../community/commu.do">커뮤니티</a>
                  </li>
                  <li class="main_nav_item">
                    <a href="../safetylist/safetylist.do">안전정보</a>
                  </li>
                  <li class="main_nav_item">
                    <a href="../calamity/calamity.do">해외 코로나 소식</a>
                  </li>
                  <li class="main_nav_item">
                    <a href="../worldweather/weather.do">세계날씨</a>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../styles/bootstrap4/popper.js"></script>
    <script src="../styles/bootstrap4/bootstrap.min.js"></script>
    <script src="../plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
    <script src="../plugins/easing/easing.js"></script>
    <script src="../js/custom.js"></script>
  </body>
</html>
