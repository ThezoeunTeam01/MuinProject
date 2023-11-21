<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
   <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 

	<!-- 컨텐츠 -->
	<div class="contents">
	<h2 class="tit">마이 페이지</h2>
   	    <!-- 유저 프로필 -->
		<div class="fileUpload">
			<div class="mypageProfile">
			   <div class="imgRatioBox">
			        <img src="" class="" />
			    </div>
			</div>
			<div class="mypageInfo"><span class="yourId">${sessionScope.id }</span> 님, 환영합니다!</div>
		</div>
	
        <!--  로그아웃 버튼 임시 추가 처리 -->
        <button type="button" name="logout" id="logout" class="backBtn btn">로그아웃</button>
        
        <div class="btnBox">
        	<!-- <input type="button" name="logout" id="logout" value="로그아웃"  class="backBtn btn" /> -->
        	<button type="button" name="" id="" class="backBtn btn" onclick="history.back()">뒤로가기</button>	
     		<button type="button" name="update" id="update" class="submitBtn btn" onclick="location.href='memberUpdate'">수정</button>
        </div>
       
    </div><!-- // contents -->

    <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
    