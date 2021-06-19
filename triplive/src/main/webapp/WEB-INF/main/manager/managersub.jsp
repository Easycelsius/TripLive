<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<title>트립라이브 관리자 페이지</title>  
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
        <%-- <script>
            function move_box(an, box) {
            //링크된 위치에서 부터의 설정값 지정
            var cleft = 100;  //왼쪽마진  
            var ctop = -300;  //상단마진
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
        </script> --%>
    </head>
    
    
    <body>
    <div>
    <!-- 헤더 -->
	<%-- <%@include file ="../header.jsp" %> --%>
	<!-- 헤더 종료 -->
    </div>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container px-4 px-lg-5">
             </div>
        </nav>
        <!-- Section-->
        <!-- Footer-->

        <footer class="py-5 bg-dark">

             
            <div class="container"><p class="m-0 text-center text-white"> 매니저 서브 페이지</div>

        </footer>
        <div>
            <a href="managersub.do" onClick="self.close();">새창 닫기</a>  
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
 