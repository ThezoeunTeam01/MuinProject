<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
	<!-- 컨텐츠 -->
	<div class="contents">
	    <h2 class="tit">회원정보 수정</h2>
	    
	    <form action="modify" method="post" id="muinRegiForm" enctype="multipart/form-data">
	        <!-- 마이 페이지 -->
	        <div class="registerBox">
	            <div class="regiFlex">
	                <label for="id">아이디</label>
	                <input type="text" name="id" id="id" readonly="readonly">
	            </div>
	            <div class="regiFlex">
	                <label for="pw">비밀번호</label>
	                <input type="password" name="pw" id="pw">
	            </div>
	            <div class="regiFlex">
	                <label for="pwCheck">비밀번호 확인</label>
	                <input type="password" name="pwCheck" id="pwCheck">
	                <button type="button" class="checkBtn btn" id="checkPasswordBtn">
	                    비밀번호 확인 체크
	                </button>               
	            </div>
	            <!-- 비밀번호 일치 불일치 여부 notice 노출 -->
	            <div class="notice_red"  id="pwMatchStatus"></div>                             
	
	            <div class="regiFlex">
	                <label for="name">이름</label>
	                <input type="text" name="name" id="name">
	            </div>
	            <div class="regiFlex">
	                <label for="birth">생년월일</label>
	                <input type="text" name="birth" id="birth">
	            </div>
	            <div class="regiFlex">
	                <label for="address">주소</label>
	                <input type="text" name="address" id="address">
	            </div>
	            <!-- 핸드폰 설정 시 - 사용할 건지? 확인 필요 -->
	            <div class="regiFlex">
	                <label for="phone">핸드폰</label>
	                <input type="text" name="phone" id="phone">
	            </div>
	            <!--  프로필 업로드 하는 부분 -->
	            <div class="regiFlex uploadDiv profile-photo">
	                <label for="profile">프로필 업로드</label>
	                <input type="file" name="profile" id="profile">
	            </div>
	            <!--  수정된 프로필이 노출되는 부분 -->
	            <div class="showProfile">
	            	<div class="imgRatioBox">
	           			<img src = "" class = "profile-photo" />
	           		</div>
	            </div>
	        </div><!-- // register_box -->
	        
	        <div class="btnBox">
	          <button type="button" class="backBtn btn">뒤로가기</button>
     	      <button type="submit" class="submitBtn btn" onclick="location.href=''">회원정보 변경하기</button>
	        </div>
	    </form>
	</div><!-- // contents -->

	<!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
	 
