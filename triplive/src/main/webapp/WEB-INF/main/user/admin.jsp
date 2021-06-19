<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
    
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>트립라이브 관리자페이지</title>
    <!-- HTML5 Shim and Respond.js IE10 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 10]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->

      
    <!-- Meta -->
 <!-- 한글 관련 css 적용 -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="../assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="../assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap/css/bootstrap.min.css">
    <!-- waves.css -->
    <link rel="stylesheet" href="../assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- themify icon -->
    <link rel="stylesheet" type="text/css" href="../assets/icon/themify-icons/themify-icons.css">
    <!-- font-awesome-n -->
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome-n.min.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.min.css">
    <!-- scrollbar.css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/jquery.mCustomScrollbar.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
    


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

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />

    <meta name="keywords" content="bootstrap, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
    <meta name="author" content="Codedthemes" />
    <!-- Favicon icon -->
    <link rel="icon" href="./../resources/assets/images/favicon.ico" type="image/x-icon">
    <!-- Google font-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600,700" rel="stylesheet">
    <!-- waves.css -->
    <link rel="stylesheet" href="./../resources/assets/pages/waves/css/waves.min.css" type="text/css" media="all">
    <!-- Required Fremwork -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/bootstrap/css/bootstrap.min.css">
    <!-- themify-icons line icon -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/themify-icons/themify-icons.css">
    <!-- Font Awesome -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/font-awesome/css/font-awesome.min.css">
    <!-- ico font -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/icon/icofont/css/icofont.css">
    <!-- morris chart -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/morris.js/css/morris.css">
    <!-- Style.css -->
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/style.css">
    <link rel="stylesheet" type="text/css" href="./../resources/assets/css/jquery.mCustomScrollbar.css">
    <link rel="stylesheet" type="text/css" href="./../styles/korean.css" />

        <style>
            body{
                font-family: NanumBarunGothic;
            }
        </style>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['bar']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['', '명 또는 갯수'],
            ['트립라이브 유저수', ${countUser}],
            ['여행금지 국가수', ${countBanList}],
            ['국외 사건 사고수', ${countCountryAccident}],
            ['국외 안전 정보 건수', ${countSafetyList}],
            ['해외 경고 수', ${countTavelAlarm}]
        ]);

        var options = {
            chart: {
            title: '트립라이브 통계치',
            subtitle: '사이트 정보 요약',
            },
            bars: 'horizontal' // Required for Material Bar Charts.
        };

        var chart = new google.charts.Bar(document.getElementById('barchart_material'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
        window.addEventListener('resize',drawChart, false);
        }

    $(()=>{
        window.addEventListener('resize',drawChart, false);
    })
        
    </script>
    
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
		<div class="home_title">admin</div>
	</div>
</div>
    <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="preloader-wrapper">
                <div class="spinner-layer spinner-blue">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
                <div class="spinner-layer spinner-red">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-yellow">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>

                <div class="spinner-layer spinner-green">
                    <div class="circle-clipper left">
                        <div class="circle"></div>
                    </div>
                    <div class="gap-patch">
                        <div class="circle"></div>
                    </div>
                    <div class="circle-clipper right">
                        <div class="circle"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            
            <!-- 헤더  -->

            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                
                 <!-- 사이드바  -->
                    
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <div class="page-body">
                                        <div class="row">
                                            <!-- SITE VISIT CHART start -->
                                            <!-- <div class="col-md-12 col-lg-6">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Site Visit Chart</h5>
                                                        <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="morris-site-visit"></div>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <!-- SITE VISIT CHART Ends -->
                                            <!-- Bar Chart start -->
                                            <div class="col-lg-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>통계수치</h5>
                                                        
                                                        
                                                        <span>크롤링 데이터 수를 알려드립니다.</span>
                                                    </div>
                                                    <div class="card-block col-lg-10">
                                                        <div id="barchart_material" style="width: 100%; height: 500px;"></div>
                                                        <!-- <div id="line-example"></div> -->
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- Bar Chart Ends -->
                                            <!-- EXTRA AREA CHART start -->
                                            <!-- <div class="col-lg-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>월별 컨택 건수</h5>
                                                        <span>월별로 생성한 컨택과 성사된 컨택이 나타납니다</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="morris-extra-area"></div>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <!-- EXTRA AREA CHART Ends -->
                                            <!-- Area Chart start -->
                                            <!-- <div class="col-lg-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Area Chart</h5>
                                                        <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="area-example"></div>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <!-- Area Chart Ends -->
                                            <!-- LINE CHART start -->
                                            <!-- <div class="col-md-12 col-lg-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>컨택 생성 유저 순위</h5>
                                                        <span>유저별 컨택 생성 순위입니다</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="morris-bar-chart"></div>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <!-- LINE CHART Ends -->
                                            <!-- Donut chart start -->
                                            <!-- <div class="col-md-12 col-lg-6">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Donut Chart</h5>
                                                        <span>lorem ipsum dolor sit amet, consectetur adipisicing elit</span>
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="donut-example"></div>
                                                    </div>
                                                </div>
                                            </div> -->
                                            <!-- Donut chart Ends -->
                                            <div class="col-md-12 col-lg-12">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>메세지 보내기</h5>
                                                        <form class="mt-2">
                                                            <select name="isoNum" id="country" class="dropdown_item_select search_input border mt-2">
                                                                <option value="">전체</option>
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
                                                            <textarea id="tx" name="contents" class="col-md-12 col-lg-12 mt-2" style="height: 100px;" placeholder="고객님들께 보낼 메세지를 입력해주세요" maxlength="40" required></textarea>
                                                            <button type="button" id="msg_btn" class="btn btn-grey col-lg-12 mt-1">보내기</button>
                                                        </form>
                                                        
                                                    </div>
                                                    <div class="card-block">
                                                        <div id="morris-bar-chart"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div id="styleSelector">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->
    

    <!-- Warning Section Starts -->
    <!-- Older IE warning message -->
    <!--[if lt IE 10]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
    <!-- Warning Section Ends -->

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

    <!-- Required Jquery -->
    <script type="text/javascript" src="../assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="../assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="../assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="../assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="../assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="../assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>

    <!-- slimscroll js -->
    <script src="../assets/js/jquery.mCustomScrollbar.concat.min.js "></script>

    <!-- menu js -->
    <script src="../assets/js/pcoded.min.js"></script>
    <script src="../assets/js/vertical/vertical-layout.min.js "></script>

    <script type="text/javascript" src="../assets/js/script.js "></script>
    

    <!-- Warning Section Ends -->
    <!-- Required Jquery -->
    <script type="text/javascript" src="./../resources/assets/js/jquery/jquery.min.js "></script>
    <script type="text/javascript" src="./../resources/assets/js/jquery-ui/jquery-ui.min.js "></script>
    <script type="text/javascript" src="./../resources/assets/js/popper.js/popper.min.js"></script>
    <script type="text/javascript" src="./../resources/assets/js/bootstrap/js/bootstrap.min.js "></script>
    <!-- waves js -->
    <script src="./../resources/assets/pages/waves/js/waves.min.js"></script>
    <!-- jquery slimscroll js -->
    <script type="text/javascript" src="./../resources/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
    <!-- Morris Chart js -->
    <script src="./../resources/assets/js/raphael/raphael.min.js"></script>
    <script src="./../resources/assets/js/morris.js/morris.js"></script>
    <!-- Custom js -->
    <!-- <script src="./../resources/assets/pages/chart/morris/morris-custom-chart.js"></script> -->
    <script src="./../resources/assets/js/pcoded.min.js"></script>
    <script src="./../resources/assets/js/vertical/vertical-layout.min.js"></script>
    <script src="./../resources/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="./../resources/assets/js/script.js"></script>
    <script>
    //     "use strict";
    //     setTimeout(function(){
    //     $(document).ready(function() {
     
    //         lineChart();
    //         areaChart();
    //         donutChart();
     
    //         $(window).on('resize',function() {
    //             window.lineChart.redraw();
    //             window.areaChart.redraw();
    //             window.donutChart.redraw();
    //         });
            
    //     });
     
    //     <%--
    //         // let numberOfMember = ${fn:replace(numberOfMember,"=",":")};
    //         // let numberOfContact = ${fn:replace(numberOfContact,"=",":")};
    //         // let numberOfSuccessContact = ${fn:replace(numberOfSuccessContact,"=",":")};
    //         // let makingContactUser = ${fn:replace(fn:replace(fn:replace(makingContactUser,"=",":"),"NAME:","NAME:'"),"}","'}")};
    //         // let reservation = ${fn:replace(reservation,"=",":")};
    //     --%>

    //     let pip = [];
        
    //     /*Line chart*/
    //     function lineChart() {
    //         window.lineChart = Morris.Line({
    //             element: 'line-example',
    //            data: numberOfMember,
    //            xkey: 'YEARMONTH',
    //            redraw: true,
    //            ykeys: ['COUNTMEMBER'],
    //            hideHover: 'auto',
    //            labels: ['멤버수'],
    //             lineColors: ['#B4C1D7'],
    //             parseTime : false
    //         });
    //     }
     
    //     /*Area chart*/
    //     function areaChart() {
    //         window.areaChart = Morris.Area({
    //             element: 'area-example',
    //             data: [
    //                 { y: '2006', a: 100, b: 90 },
    //                 { y: '2007', a: 75, b: 65 },
    //                 { y: '2008', a: 50, b: 40 },
    //                 { y: '2009', a: 75, b: 65 },
    //                 { y: '2010', a: 50, b: 40 },
    //                 { y: '2011', a: 75, b: 65 },
    //                 { y: '2012', a: 100, b: 90 }
    //             ],
    //             xkey: 'y',
    //             resize: true,
    //             redraw: true,
    //             ykeys: ['a', 'b'],
    //             labels: ['Series A', 'Series B'],
    //             lineColors: ['#93EBDD', '#64DDBB']
    //         });
    //     }
     
    //     /*Donut chart*/
    //     function donutChart() {
    //         window.areaChart = Morris.Donut({
    //             element: 'donut-example',
    //             redraw: true,
    //             data: [
    //                 { label: "Download Sales", value: 2 },
    //                 { label: "In-Store Sales", value: 50 },
    //                 { label: "Mail-Order Sales", value: 20 }
    //             ],
    //             colors: ['#5FBEAA', '#34495E', '#FF9F55']
    //         });
    //     }
        
    //     let i;
    //     let j;
    //     for(j = 0; j<numberOfContact.length; j++){
    //        for(i = 0; i<numberOfSuccessContact.length; i++){
    //           if(numberOfContact[j].YEARMONTH == numberOfSuccessContact[i].YEARMONTH){
    //              numberOfContact[j].SUCCESSCONTACT = numberOfSuccessContact[i].COUNTSUCCESSCONTACT;
    //              break;
    //           } else {
    //              numberOfContact[j].SUCCESSCONTACT = 0;
    //           }
    //        }      
    //     }
        
    //     // Morris bar chart
    //     Morris.Bar({
    //         element: 'morris-bar-chart',
    //         data: makingContactUser,
    //         xkey: 'NAME',
    //         ykeys: ['COUNTCONTACT'],
    //         labels: ['컨택생성수'],
    //         barColors: ['#5FBEAA'],
    //         hideHover: 'auto',
    //         gridLineColor: '#eef0f2',
    //         resize: true
    //     });
    //     // Extra chart
    //     Morris.Area({
    //         element: 'morris-extra-area',
    //         data: numberOfContact,
    //         lineColors: ['#fb9678', '#7E81CB'],
    //         xkey: 'YEARMONTH',
    //         ykeys: ['COUNTREGICONTACT', 'SUCCESSCONTACT'],
    //         labels: ['전체 컨택수 ', '성사된 컨택'],
    //         pointSize: 0,
    //         lineWidth: 0,
    //         resize: true,
    //         fillOpacity: 0.8,
    //         behaveLikeLine: true,
    //         gridLineColor: '#5FBEAA',
    //         hideHover: 'auto',
    //         parseTime: false  
    //     });
     
    //     /*Site visit Chart*/
     
    //     Morris.Area({
    //         element: 'morris-site-visit',
    //         data: [{
    //             period: '2010',
    //             SiteA: 0,
    //             SiteB: 0,
     
    //         }, {
    //             period: '2011',
    //             SiteA: 130,
    //             SiteB: 100,
     
    //         }, {
    //             period: '2012',
    //             SiteA: 80,
    //             SiteB: 60,
     
    //         }, {
    //             period: '2013',
    //             SiteA: 70,
    //             SiteB: 200,
     
    //         }, {
    //             period: '2014',
    //             SiteA: 180,
    //             SiteB: 150,
     
    //         }, {
    //             period: '2015',
    //             SiteA: 105,
    //             SiteB: 90,
     
    //         }, {
    //             period: '2016',
    //             SiteA: 250,
    //             SiteB: 150,
     
    //         }],
    //         xkey: 'period',
    //         ykeys: ['SiteA', 'SiteB'],
    //         labels: ['Site A', 'Site B'],
    //         pointSize: 0,
    //         fillOpacity: 0.4,
    //         pointStrokeColors: ['#b4becb', '#01c0c8'],
    //         behaveLikeLine: true,
    //         gridLineColor: '#e0e0e0',
    //         lineWidth: 0,
    //         smooth: false,
    //         hideHover: 'auto',
    //         lineColors: ['#b4becb', '#01c0c8'],
    //         resize: true
     
    //     });
    //     },350);

        
        
    // }) 

    // 메세지 ajax
    $("#msg_btn").click(()=>{

            $.ajax({
                type :'post',
                data : ({"contents" : $("#tx").val(), "isoNum" : $("#country").val()}),
                url : '../sendSMS.do',
                success : function(){
                    $("#tx").val("");
                }   	
            })

        })

        

    </script>


    

</body>

</html>
