<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include header.html -->
   <jsp:include page="../include/header.jsp" />
   
   <script type="text/javascript">
	   //로그인 페이지는 헤더를 숨깁니다. 
	   $(document).ready(function() {
	   	$("header").css("display","none")
	   })
	</script>

      <!-- 로그인 폼 -->
      <div class="ContFixedBox">
      	<div class="loginFormBox">
       	<!-- 로그인 로고 이미지 -->
       	<div class="loginLogoBox">
           	<a href="/"><img src="${pageContext.request.contextPath}/images/logo/logo.png" alt=""></a>
       	</div>        			        	
           <form action="login" method="post">
              	<input type="text" name="id" id="id" placeholder="아이디 입력">
              	<input type="password" name="pw" id="pw" placeholder="비밀번호 입력">	
               <!-- 버튼 컨테이너 -->
               <div class="btnBox">
                   <button type="submit" class="submitBtn btn">로그인</button>
               </div>
           </form>
          	<div class="goRegisterBox">
          	    <p>아직 회원이 아니신가요?</p>
          	    <a href="register" class="">회원가입</a>	
              </div>
          </div>
      </div>
        
	<!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
