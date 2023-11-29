<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    <script type="text/javascript">
    //로그인 페이지는 헤더를 숨깁니다. 
    $(document).ready(function() {
    	$("header").css("display","none")
    	
    })
    
	</script>
	<!-- 컨텐츠 -->
	 <!-- 로그인 로고 이미지 -->
        <div>
            <a href="/"><img src="../images/logo/logo.png" alt="logo"></a>
        </div>
        <!-- 로그인 폼 -->
        <div>
            <form action="login" method="post">
                <input type="text" name="id" id="id" placeholder="아이디 입력">
                <input type="password" name="pw" id="pw" placeholder="비밀번호 입력">
                <!-- 버튼 컨테이너 -->
                <div>
                    <!-- 로그인 버튼 -->
                    <input type="submit" value="로그인">
                    <!-- 회원가입 버튼 -->
                    <a href="register"><input type="button" value="회원가입"></a>
                </div>
            </form>
        </div>
	<!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
	 
