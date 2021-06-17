<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>관리자 페이지</title>  
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
        <link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../style/styles.css" rel="stylesheet" />
        <link rel="stylesheet" type="text/css" href="../styles/manager.css">

                
        <link rel="stylesheet" type="text/css" href="../styles/bootstrap4/bootstrap.min.css">
        <link href="../plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
        <link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">
        <link rel="stylesheet" type="text/css" href="../styles/korean.css" />

        <style>
            body{
                font-family: NanumBarunGothic;
            }
        </style>

        <%-- pop업창 --%>
        <script>
            function move_box(an, box) {
            //링크된 위치에서 부터의 설정값 지정
            var cleft = 100;  //왼쪽마진  
            var ctop = -250;  //상단마진
            var obj = an;
            while (obj.offsetParent) {
                cleft += obj.offsetLeft;
                ctop += obj.offsetTop;
                obj = obj.offsetParent;
            }
            box.style.left = cleft + 'px';
            ctop += an.offsetHeight + 8;
            if (document.body.currentStyle &&
                document.body.currentStyle['marginTop']) {
                ctop += parseInt(
                document.body.currentStyle['marginTop']);
            }
            box.style.top = ctop + 'px';
            }

            function show_hide_box(an, width, height, borderStyle) {
            var href = an.href;
            //db값 가져오기
            // alert(href)
            var boxdiv = document.getElementById(href);

            if (boxdiv != null) {
                if (boxdiv.style.display=='none') {
                move_box(an, boxdiv);
                boxdiv.style.display='block';
                } else
                boxdiv.style.display='none';
                return false;
            }

            boxdiv = document.createElement('div');
            boxdiv.setAttribute('id', href);
            boxdiv.style.display = 'block';
            boxdiv.style.position = 'absolute';
            boxdiv.style.width = width + 'px';
            boxdiv.style.height = height + 'px';
            boxdiv.style.border = borderStyle;
            boxdiv.style.backgroundColor = '#fff';

            var contents = document.createElement('iframe');
            contents.scrolling = 'no';
            contents.frameBorder = '0';
            contents.style.width = width + 'px';
            contents.style.height = height + 'px';
            contents.src = href;

            boxdiv.appendChild(contents);
            document.body.appendChild(boxdiv);
            move_box(an, boxdiv);

            return false;
            }
        </script>
    </head>
    
    
    <body>
    <div>
    <!-- 헤더 -->
	<%@include file ="../header.jsp" %>
	<!-- 헤더 종료 -->
    </div>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
             </div>
        </nav>
        <!-- Header-->
<%--         
        <header class="bg-dark py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="text-center text-white">
                    <h1 class="display-4 fw-bolder">회원 목록 테이블</h1>
                    <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
                </div>
            </div>
        </header>
         --%>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MjVfMTE1%2FMDAxNjE5MzM5MjIxNzA3.uKuOM9Mh9kWhIambclzkzF419pJqqcBblYvE_8A7tNcg.c9YFiEh8xwW1Jp4-QJOpq8z_9n-mKXDFTkRydgHLPWsg.JPEG.chaechae0517%2F20210425%25A3%25DF145559.jpg&type=sc960_832" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <%-- db값 가져오기 --%>
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="managersub.do" onClick="return show_hide_box(this,700,600,'1px solid')">아이유</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://search.pstatic.net/common/?src=http%3A%2F%2Fblogfiles.naver.net%2FMjAyMTA0MTdfMjgz%2FMDAxNjE4NjI3MTk1NjU2.ULTJpSEO934_i0umXM73iqyRkI8xE8R0R_iSHMGNJ0Ag.KgUtQ1P3onmoBCbepyn5M6nzKjg0IO_ezWDvRJbG_ckg.JPEG.bangyisle486%2F173312645%25A3%25DF286108209645446%25A3%25DF8653466564622720196%25A3%25DFn.jpg&type=sc960_832" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="managersub.do" onClick="return show_hide_box(this,700,600,'1px solid')">한지현</a></div>
                            </div>
                        </div>
                    </div>
                   
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>
                     
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <!-- 버튼 누르면 삭제 --> 
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <!-- 버튼 누르면 삭제 --> 
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <!-- 버튼 누르면 삭제 --> 
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <!-- 버튼 누르면 삭제 --> 
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <!-- 버튼 누르면 삭제 --> 
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>      
                    <div class="col mb-5">
                        <div class="card h-100">
                            <!-- Product image-->
                            <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />
                            <!-- Product details-->
                            <div class="card-body p-4">
                                <div class="text-center">
                                    <!-- Product name-->
                                    <h5 class="fw-bolder">가입일자</h5>
                                    <!-- Product price-->
                                    2021년06년04일
                                </div>
                            </div>
                            <!-- Product actions-->
                            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <!-- 버튼 누르면 삭제 --> 
                                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">강동우</a></div>
                            </div>
                        </div>
                    </div>      
                    </section>

                    <p style:magging-left=20px>10명</p>
        <!-- Footer-->
        <footer class="py-5 bg-dark">

             
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
