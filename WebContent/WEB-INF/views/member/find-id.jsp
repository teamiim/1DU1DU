<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>아이디 찾기</title>


    <!--폰트-->
    <link href="https://fonts.googleapis.com/css2?family=Syne+Tactile&display=swap" rel="stylesheet">

    <!--css-->
    <link href="${ pageContext.servletContext.contextPath }/resources/css/find-id.css" rel="stylesheet" type="text/css">

    <!--파비콘-->
    <link rel="icon" type="image/x-icon" href="../resources/image/android-icon-48x48.png">

    <!-- 제이쿼리 -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script> 
    
</head>





<body>
    
<!-- 헤더 -->
	<jsp:include page="/WEB-INF/views/main/header.jsp" />	
	        <script>
            window.addEventListener('load', function() {
                var allElements = document.getElementsByTagName('*');
                Array.prototype.forEach.call(allElements, function(el) {
                    var includePath = el.dataset.includePath;
                    if (includePath) {
                        var xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function () {
                            if (this.readyState == 4 && this.status == 200) {
                                el.outerHTML = this.responseText;
                            }
                        };
                        xhttp.open('GET', includePath, true);
                        xhttp.send();
                    }
                });
            });
        </script>



	<div class="wrapper">
		<div class="outer">


			<form class="loginArea" action="${ pageContext.servletContext.contextPath }/member/findId" method="post">
				
                
                <h1 id="t11">아이디 찾기</h1>
                <h4>&nbsp 가입시 사용한 이메일 입력</h4>
                <!--이메일 입력칸-->
				<span class="input_area"><input type="email" name="memberId" id="emailFind" maxlength="50"
				placeholder="이메일 입력" required></span>
                <h4>&nbsp 가입시 사용한 연락처 입력</h4>
                <!--연락처 입력칸-->
				<span class="input_area"><input type="text" name="memberPwd" id="phonePwd" maxlength="11"
				placeholder="핸드폰번호 입력" required></span>
                

                <h1></h1>
                <h1></h1>
                

                <!-- 아이디 찾기버튼 -->   
                <span class="input_area"><input type="submit" id="findButton" value="아이디 찾기" onclick="email_check()"></span>
                
                
                <script type>

                    function email_check( emailFind ) {    
                            var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                            return (emailFind != '' && emailFind != 'undefined' && regex.test(emailFind)); 
                        }

                        $("input[type=email]").blur(function(){
                        var email = $(this).val();

                        if( email == '' || email == 'undefined' || phonePwd == '') return false;
                        if( ! email_check(email) ) {
                            alert('올바른 정보를 기입해주세요.');
                            $(".result-email").alert('올바른 정보를 기입해주세요.');
                            $(this).focus();
                            return false;


                        } else {
                        alert('회원님의 아이디는 _____ 입니다.');
                            $(".result-email").alert('메일로 임시 비밀번호를 보냈습니다. 재로그인 후 회원정보수정에서 비밀번호를 재설정해주세요.');
                            location.href="../login/find-id.html";
                        } 
                        });



                    
                    </script>






                 <!--로그인화면 돌아가기-->
                <a href="${ pageContext.servletContext.contextPath }/login/login.jsp" class="myButton" !important> ◀ 로그인화면 돌아가기</a>

                
                

            
            </form>
		</div>
	</div>



                <!--이메일 찾기 유효성 체크-->
                <script>

                    function email_check( email ) {    
                        var regex=/([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
                        return (email != '' && email != 'undefined' && regex.test(email)); 
                    }
    
                    $("input[type=email]").blur(function(){
                    var email = $(this).val();
                    if( email == '' || email == 'undefined') return;
                    if(! email_check(email) ) {
                        $(".result-email").text('이메일 형식으로 적어주세요');
                        $(this).focus();
                        return false;
                    }else {
                        $(".result-email").text('');
                    }
                    });
                    </script>

















    

    <!--푸터 임포트-->

    <!--푸터 임포트-->

    <footer>

	<jsp:include page="/WEB-INF/views/main/footer.jsp" />	
	        <script>
            window.addEventListener('load', function() {
                var allElements = document.getElementsByTagName('*');
                Array.prototype.forEach.call(allElements, function(el) {
                    var includePath = el.dataset.includePath;
                    if (includePath) {
                        var xhttp = new XMLHttpRequest();
                        xhttp.onreadystatechange = function () {
                            if (this.readyState == 4 && this.status == 200) {
                                el.outerHTML = this.responseText;
                            }
                        };
                        xhttp.open('GET', includePath, true);
                        xhttp.send();
                    }
                });
            });
        </script>
    
    </footer>

    
</body>
</html>