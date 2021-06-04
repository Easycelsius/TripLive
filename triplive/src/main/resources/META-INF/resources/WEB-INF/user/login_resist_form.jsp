<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<html>
    <head>
        <title>트립라이브</title>
        <link rel="stylesheet" href="../styles/style.css">
        <link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
        <link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">
    </head>
    <body>
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <!-- <a href="login_resist_form.do"><button type="button" class="togglebtn" onclick="login()">LOG IN</button></a> -->
                    <button type="button" class="togglebtn" onclick="login()">로그인</button>
                    <button type="button" class="togglebtn" onclick="register()">회원가입</button>
                </div>
                <!-- <div class="social-icons">
                    <img src="../img/fb.png" alt="facebook">
                    <img src="../img/tw.png" alt="twitter">
                    <img src="../img/gl.png" alt="google">
                </div> -->
                <!-- 로그인 폼 -->
                <form id="login" action="login.do" class="input-group" method="POST">
                    <input name="id" type="text" class="input-field" placeholder="아이디" required>
                    <input name="password" type="password" class="input-field" placeholder="비밀번호" required>
                    <input name="cache" type="checkbox" class="checkbox"><span>회원 정보 유지</span>
                    <button class="submit">로그인</button>
                </form>

                <!-- 회원가입 폼 -->
                <form id="register" action="register.do" class="input-group" method="POST">
                    <input name="id" type="text" class="input-field" placeholder="아이디" required>
                    <button type="button" id="check" class="button-wrap search_button float-right" style="margin-top: -5px; margin-left: 20px;">아이디 중복확인</button>
                    <input name="email" type="email" class="input-field" placeholder="이메일" required>
                    <select name="gender" id="gender" class="dropdown_item_select search_input" required="required">
                        <option value="male">남자</option>
                        <option value="female">여자</option>
                    <input name="phone" type="tel" class="input-field" placeholder="전화번호">
                    <input name="password" type="password" class="input-field" placeholder="비밀번호" required>
                    <select name="iso_num" id="country" class="dropdown_item_select search_input" required="required">
                        <option value="-1">거주 및 방문 국가를 선택해주세요</option>
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
                        <option value="0">기타</option>
                    </select>
                    <input type="checkbox" class="checkbox" required><span>개인정보동의</span>
                    <button class="submit">회원가입</button>
                </form>
            </div>
        </div>
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }

            function check(){
                alert("클릭");
            }
        </script>
    </body>
</html>