<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <title>WorldWeather</title>
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
    <link rel="stylesheet" type="text/css" href="../styles/offers_styles.css" />
    <link
      rel="stylesheet"
      type="text/css"
      href="../styles/offers_responsive.css"
    />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script
      src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"
      type="text/javascript"
    ></script>
    <script src="https://polyfill.io/v3/polyfill.min.js?features=default"></script>

    <script>
      // URL 정보를 가져와 파라미터를 파싱하는 함수 (정규표현식 이용)
      function getParameter(name) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
          results = regex.exec(location.search);
        return results === null
          ? ""
          : decodeURIComponent(results[1].replace(/\+/g, " "));
      }

      var map; // 구글 지도
      var lat; // 위도
      var lng; // 경도

      var country = ""; // 국가
      var city = "Seoul"; // 도시

      // url 파라미터에 city 키가 있으면 국가, 도시 정보 저장
      if ("" != getParameter("city")) {
        city = getParameter("city");
        country = getParameter("country");
      }

      // 현재 날씨를 불러오기 위한 api
      var CurrentApiURI =
        "http://api.openweathermap.org/data/2.5/weather?q=" +
        city +
        "&appid=1db47184ebbc18af53fd996be840d270";

      // 일일 날씨를 불러오기 위한 api
      var DayApiURI =
        "http://api.openweathermap.org/data/2.5/forecast?q=" +
        city +
        "&appid=1db47184ebbc18af53fd996be840d270";

      // 검색한 도시의 위도, 경도 데이터를 가져오는 ajax
      $.ajax({
        url: CurrentApiURI,
        dataType: "json",
        type: "GET",
        async: false,
        success: function (resp) {
          lat = resp.coord.lat;
          lng = resp.coord.lon;
        },
      });

      // 구글 지도 생성
      function initMap() {
        map = new google.maps.Map(document.getElementById("map"), {
          center: { lat: lat, lng: lng },
          zoom: 13,
        });
      }

      // 각 도시의 timezone을 계산하여 현지 시각을 가져오는 함수 (일, 시)
      function timeConverterDay(UNIX_timestamp) {
        var a = new Date(UNIX_timestamp * 1000);
        var b = new Date(a.getTime() + a.getTimezoneOffset() * 60000);

        return b.getDate() + "일 " + b.getHours() + "시";
      }

      // 각 도시의 timezone을 계산하여 현지 시각을 가져오는 함수 (월, 일, 시, 분)
      function timeConverterCurrent(UNIX_timestamp) {
        var a = new Date(UNIX_timestamp * 1000);
        var b = new Date(a.getTime() + a.getTimezoneOffset() * 60000);
        return (
          b.getMonth() +
          1 +
          "월 " +
          +b.getDate() +
          "일 " +
          b.getHours() +
          ":" +
          b.getMinutes()
        );
      }

      $(function () {
        // url 파라미터에 국가 정보가 있으면 해당 국가로 selectbox 선택
        if ("" != country) {
          $("#" + country).attr("selected", "selected");
        }

        // url 파라미터에 도시 정보가 있으면 input에 해당 도시 이름 입력
        if ("" != $("#country option:selected").val()) {
          $("#city").val(city);
        }
        // 없으면 국가를 먼저 선택하도록 설정
        else {
          $("#city").attr("placeholder", "국가를 선택하세요.");
          $("#city").attr("disabled", "disabled");
        }

        // 차트 라벨
        const labels = [];

        // 차트 데이터
        const data = {
          labels: [],
          datasets: [
            {
              label: "비 올 확률(%)",
              data: [],
              backgroundColor: ["rgba(54, 162, 235, 0.2)"],
              borderColor: ["rgba(54, 162, 235, 0.2)"],
              order: 1,
            },
            {
              label: "기온(℃)",
              data: [],
              backgroundColor: ["rgba(255, 99, 132, 1)"],
              borderColor: ["rgba(255, 99, 132, 1)"],
              type: "line",
              order: 0,
            },
          ],
        };

        // 차트 설정
        const config = {
          type: "bar",
          data: data,
          options: {
            responsive: true,
            plugins: {
              legend: {
                position: "top",
              },
              title: {
                display: true,
              },
            },
          },
        };

        // 현재 날씨를 불러오는 ajax
        $.ajax({
          url: CurrentApiURI,
          dataType: "json",
          type: "GET",
          async: "false",
          success: function (resp) {
            var city = resp.name + ", " + resp.sys.country;
            var update =
              timeConverterCurrent(resp.dt + resp.timezone) + " 갱신";
            var temp = parseFloat((resp.main.temp - 273.15).toFixed(1)) + "℃ ";
            var feelTemp =
              "(" +
              parseFloat((resp.main.feels_like - 273.15).toFixed(1)) +
              "℃)";
            var humidity = resp.main.humidity + "%";
            var windSpeed = resp.wind.speed + "m/s";
            var rain = "-";

            // 강수량 정보가 있으면 저장
            if (resp.rain) {
              var rain = resp.rain["1h"] + "㎜";
            }

            // 날씨 이미지 저장
            var imgURL =
              "http://openweathermap.org/img/w/" +
              resp.weather[0].icon +
              ".png";

            $("#currentUpdate").text(update);
            $("#currentCity").text(city);
            $("#currentTemp").text(temp);
            $("#currentFeelTemp").text(feelTemp);
            $("#currentHumidity").text(humidity);
            $("#currentWindSpeed").text(windSpeed);
            $("#currentRain").text(비);
            $("#currentIcon").attr("src", imgURL);
          },
        });

        // 일일 날씨를 불러오는 ajax
        $.ajax({
          url: DayApiURI,
          dataType: "json",
          type: "GET",
          async: "false",
          success: function (resp) {
            // 차트 데이터에 날씨 정보 저장
            for (var i = 0; i < 8; i++) {
              config.data.datasets[1].data.push(
                parseFloat((resp.list[i].main.temp - 273.15).toFixed(1))
              );
              config.data.datasets[0].data.push(resp.list[i].pop * 100);
              config.data.labels.push(
                timeConverterDay(resp.list[i].dt + resp.city.timezone)
              );

              var icon = "#icon" + i;
              var imgURL =
                "http://openweathermap.org/img/w/" +
                resp.list[i].weather[0].icon +
                ".png";
              $(icon).attr("src", imgURL);
            }

            // 차트 생성
            var myChart = new Chart(document.getElementById("myChart"), config);
          },
        });

        // 국가를 선택했을 때 도시 input 설정
        $("#country").change(function () {
          $("#city").val("");

          if ($(this).val() == "") {
            $("#city").attr("placeholder", "국가를 선택하세요.");
            $("#city").attr("disabled", "disabled");
          } else {
            $("#city").attr("placeholder", "도시를 입력하세요.");
            $("#city").removeAttr("disabled");
          }
        });

        // 도시 이름 리스트
        var cityNameList = $(".cityNameList");

        // 도시 이름을 입력하면 동시에 도시 목록 불러오기
        $("#city").on("propertychange change keyup paste", function () {
          if ($(this).val() != "") {
            var param = $("#search").serialize();

            $.ajax({
              url: "getCityNameList.do",
              data: param,
              type: "POST",
              success: function (resp) {
                cityNameList.empty();
                cityNameList.css("border", "2px solid #dadada");

                if (resp.length) {
                  for (var i in resp) {
                    var li = $('<li class="cityName"/>');
                    var a = $(
                      '<a class="Cname" href="weather.do?country=' +
                        $("#country").val() +
                        "&city=" +
                        resp[i].cityName +
                        '">' +
                        resp[i].cityName +
                        "</a>"
                    );
                    li.append(a);
                    cityNameList.append(li);
                  }
                } else {
                  var li = $('<li class="cityName"/>');
                  var span = $("<span>검색 결과 없음</span>");
                  li.append(span);
                  cityNameList.append(li);
                }
              },
            });
          } else {
            cityNameList.empty();
            cityNameList.css("border", "none");
          }
        });
      });
    </script>

    <style>
      .currentWeather {
        color: black;
      }

      #currentIcon {
        width: 10em;
        height: 10em;
      }

      #map {
        height: 100%;
      }

      .search_input {
        border: 2px solid #dadada;
        width: 47%;
      }

      .cityNameList {
        width: 47%;
        position: absolute;
        left: 48%;
        background-color: white;
        z-index: 1;
      }

      .cityName {
        padding: 0 15px;
        cursor: pointer;
        color: #929191;
        font-size: 13px;
        font-weight: 600;
        height: 23px;
        line-height: 23px;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
      }

      .Cname {
        color: #929191;
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
        <div
          class="home_background parallax-window"
          data-parallax="scroll"
          data-image-src="../images/about_background.jpg"
        ></div>
        <div class="home_content">
          <div class="home_title">World Weather</div>
        </div>
      </div>

      <div class="offers">
        <div class="container">
          <div class="row">
            <div class="col-lg-12">
              <!-- Offers Sorting -->
              <div class="offers_sorting_container">
                <div style="width: 47%; margin: 0px auto" class="float-right">
                  <form id="search">
                    <select
                      name="country"
                      id="country"
                      class="dropdown_item_select search_input"
                    >
                      <option value="">전체</option>
                      <option value="TW" id="TW">대만</option>
                      <option value="MO" id="MO">마카오</option>
                      <option value="US" id="US">미국</option>
                      <option value="VN" id="VN">베트남</option>
                      <option value="SG" id="SG">싱가포르</option>
                      <option value="JP" id="JP">일본</option>
                      <option value="CN" id="CN">중국</option>
                      <option value="TH" id="TH">태국</option>
                      <option value="PH" id="PH">필리핀</option>
                      <option value="HK" id="HK">홍콩</option>
                    </select>
                    <input
                      id="city"
                      name="input"
                      type="text"
                      class="destination search_input"
                      required="required"
                    />
                  </form>
                  <ul class="cityNameList"></ul>
                </div>
              </div>
            </div>
          </div>

          <%-- 본문 --%>

          <div class="row" style="margin-top: 50px">
            ${cityList} <%-- 지도 --%>
            <div class="col-lg-6">
              <div id="map"></div>
            </div>

            <%-- 날씨 --%>
            <div class="col-lg-6">
              <div class="row">
                <div class="col-lg-8"></div>
                <h5 class="col-lg-4 currentWeather" id="currentUpdate"></h5>
                <div class="col-12">
                  <div class="row mx-auto justify-content-center">
                    <h1 class="currentWeather" id="currentCity"></h1>
                  </div>
                </div>
                <div class="col-12">
                  <div class="row mx-auto justify-content-center">
                    <h4 class="currentWeather" id="currentTemp"></h4>
                    <h4 class="currentWeather" style="color: black">
                      &nbsp체감
                    </h4>
                    <h4 class="currentWeather" id="currentFeelTemp"></h4>
                  </div>
                </div>
                <div class="row mx-auto">
                  <img id="currentIcon" src="" />
                </div>
              </div>

              <div class="row col-md-1Div d-flex justify-content-center">
                <div class="mx-auto" style="text-align: center">
                  <h4 class="currentWeather">습도</h4>
                  <h4 class="currentWeather" id="currentHumidity"></h4>
                </div>
                <div class="mx-auto" style="text-align: center">
                  <h4 class="currentWeather">바람</h4>
                  <h4 class="currentWeather" id="currentWindSpeed"></h4>
                </div>
                <div class="mx-auto" style="text-align: center">
                  <h4 class="currentWeather">강수량</h4>
                  <h4 class="currentWeather" id="currentRain"></h4>
                </div>
              </div>
            </div>
          </div>

          <%-- 그래프 --%>
          <div>
            <canvas id="myChart"></canvas>
          </div>

          <div
            class="icon col-md-1Div d-flex justify-content-center float-right"
            style="width: 98%"
          >
            <div class="icon mx-auto"><img id="icon0" src="" /></div>
            <div class="icon mx-auto"><img id="icon1" src="" /></div>
            <div class="icon mx-auto"><img id="icon2" src="" /></div>
            <div class="icon mx-auto"><img id="icon3" src="" /></div>
            <div class="icon mx-auto"><img id="icon4" src="" /></div>
            <div class="icon mx-auto"><img id="icon5" src="" /></div>
            <div class="icon mx-auto"><img id="icon6" src="" /></div>
            <div class="icon mx-auto"><img id="icon7" src="" /></div>
          </div>
        </div>
      </div>

      <!-- Footer -->
      <%@include file ="../footer.jsp" %>
    </div>

    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../styles/bootstrap4/popper.js"></script>
    <script src="../styles/bootstrap4/bootstrap.min.js"></script>
    <script src="../plugins/Isotope/isotope.pkgd.min.js"></script>
    <script src="../plugins/easing/easing.js"></script>
    <script src="../plugins/parallax-js-master/parallax.min.js"></script>
    <script src="../js/offers_custom.js"></script>

    <!-- Async script executes immediately and must be after any DOM elements used in callback. -->
    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCbF_v_BwkfrA_VOdxySPYycBwMd2WkVag&callback=initMap&libraries=&v=weekly"
      async
    ></script>
  </body>
</html>
