<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>

<html>
    <head>
        <title>트립라이브 회원정보</title>
        <link rel="stylesheet" href="../styles/style.css">
        <link rel="stylesheet" type="text/css" href="../styles/offers_styles.css">
        <link rel="stylesheet" type="text/css" href="../styles/offers_responsive.css">
        <link rel="stylesheet" type="text/css" href="./../styles/korean.css" />
        <script type="text/javascript" src="../js/jquery-3.2.1.min.js "></script>
    </head>
    <body class="korean_BarunGothic">
        <div class="wrap">
            <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <!-- <a href="login_resist_form.do"><button type="button" class="togglebtn" onclick="login()">LOG IN</button></a> -->
                    <button type="button" class="togglebtn korean_BarunGothic" onclick="login()">로그인</button>
                    <button type="button" class="togglebtn korean_BarunGothic" onclick="register()">회원가입</button>
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
                    <input name="remember-me" type="checkbox" class="checkbox"><span>회원 정보 유지</span>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <button class="submit">로그인</button>
                </form>

                <!-- 회원가입 폼 -->
                <form id="register" action="register.do" class="input-group" method="POST">
                    <input id="register_id" name="id" type="text" class="input-field" placeholder="아이디" required>
                    <button type="button" id="check" class="button-wrap search_button float-right" style="margin-top: -5px; margin-left: 20px;">아이디 중복확인</button>
                    <input name="email" type="email" class="input-field" placeholder="이메일" required>
                    <select name="gender" id="gender" class="dropdown_item_select search_input" required="required">
                        <option value="male">남자</option>
                        <option value="female">여자</option>
                    <input name="phone" type="tel" class="input-field" placeholder="전화번호">
                    <input name="password" type="password" class="input-field" placeholder="비밀번호" required>
                    <select name="isoNum" id="country" class="dropdown_item_select search_input" required="required">
                        <option value="410">거주 및 방문 국가를 선택해주세요</option>
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
                    <input type="checkbox" class="checkbox" required><span>개인정보동의</span>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                    <button id="register_btn" class="submit" disabled="disabled">회원가입</button>
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

            
            // id 중복 체크 여부
            let id_confirm = false

            // ID 중복 체크 버튼 클릭시 ajax_id_check 함수 실행
            $('#check').click(ajax_id_check)

            // ID 중복 체크 함수
            function ajax_id_check(){
                // ajax 통신
                $.ajax({
                    type:'post',
                    data: {'id':$('#register_id').val()},
                    url: 'checkId.do',
                    contentType: "application/x-www-form-urlencoded; charset=UTF-8",
         	        success : check_id_succ
                })
                
                // 이메일 체크 성공시 처리 함수, data가 flase 면 사용할 수 없음
                function check_id_succ(data) {
                    (data=="true") ? id_confirm = true : id_confirm = false

                    if(id_confirm){
                        $('#check').text("사용가능한 아이디")
                        $('#check').attr({disabled:"disabled"})
                        $('#register_btn').removeAttr("disabled")
                    } else {
                        $('#check').text("이미 존재하는 아이디")
                    }
                }
            }

            // id input 박스 텍스트 변경 실시간 감지
            let oldVal
            $("#register_id").on("propertychange change keyup paste input", function() {
                var currentVal = $(this).val();
                if(currentVal == oldVal) {
                    return
                }
            
                oldVal = currentVal

                id_confirm = false
                $('#check').text("아이디 중복확인")
                $('#check').removeAttr("disabled")
                $('#register_btn').attr({disabled:"disabled"})

            });
            

        </script>
    </body>
</html>