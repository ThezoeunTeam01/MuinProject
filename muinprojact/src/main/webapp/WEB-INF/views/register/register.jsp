<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include header.html -->
<jsp:include page="../include/header.jsp" />

	<!-- 컨텐츠 --> 
	<div class="contents">
	    <h2 class="tit">무인마켓 회원가입</h2>
	    <form action="register" method="post" id="muinRegiForm" enctype="multipart/form-data"  class="formData">
	        <!-- 회원가입 박스 -->
	        <div class="registerBox">
	            <div class="regiFlex">
	                <label for="id">아이디</label>
	                <input type="text" name="id" id="id" pattern="[a-zA-Z0-9]+" maxlength="8">
	                <button type="button" class="checkBtn btn" id="idCheck">
	                    아이디 중복체크
	                </button>
	            </div>
	            <div class="notice_red" id="idNotice"></div>
	            
	            <div class="regiFlex">
	                <label for="pw">비밀번호</label>
	                <input type="password" name="pw" id="pw" maxlength="8">
	            </div>
	            <div class="notice_red" id="pwNotice1"></div>
	            
	            <div class="regiFlex">
	                <label for="pwCheck">비밀번호 확인</label>
	                <input type="password" name="pwCheck" id="pwCheck" maxlength="8">
	                <button type="button" class="checkBtn btn" id="checkPasswordBtn">
	                    비밀번호 확인 체크
	                </button>               
	            </div>
	            <div class="notice_red" id="pwNotice2"></div>                     
	
	            <div class="regiFlex">
	                <label for="name">이름</label>
	                <input type="text" name="name" id="name">
	            </div>
	            <div class="notice_red" id="nameNotice"></div>
	            
	            <!--  생년월일 8자, 숫자만 입력되도록 pattern 추가 -->
	            <div class="regiFlex">
	                <label for="birth">생년월일</label>
	                <input type="text" name="birth" id="birth" placeholder="ex ) 20230101" maxlength="8" pattern="[0-9]+">
	            </div>
	            <div class="notice_red" id="birthNotice"></div>
	            
	            <div class="regiFlex">
	                <label for="address">주소</label>
	                <input type="text" name="address" id="address">
	            </div>
	            <div class="notice_red" id="addrNotice"></div>
	            
	            <!-- 핸드폰 설정 시 - 숫자만 입력하도록 pattern 추가 -->
	            <div class="regiFlex">
	                <label for="phone">핸드폰</label>
	                <input type="number" name="phone" id="phone" pattern="[0-9]+" maxlength="11">
	            </div>
	            <div class="notice_red" id="phoneNotice"></div>            
	            
	            <div class="regiFlex uploadDiv profile-photo">
	                <label for="profile">프로필 업로드</label>
	                <input type="file" name="profile" id="fileFile">
	            </div>
	            <div class="notice_red" id="ProfileNotice"></div>
	            
				<!--  게시물 업로드 이미지 확인 -->
				<div class="showUploadfileBox">
					<div class="uploadFlexBox" id="uploadButton">
						<ul class="active">
							
						</ul>
					</div>
				</div>
				
	        </div><!-- // register_box -->
	        
	        <div class="btnBox">
	            <button type="button" class="backBtn btn" onclick="history.back()">뒤로가기</button>
	            <!--서밋을 버튼으로 변경 -->
	            <button type="button" class="submitBtn btn" id="register">회원가입</button>
	        </div>
	    </form>
	</div><!-- // contents -->



   <!-- Include header.html -->
    <jsp:include page="../include/footer.jsp" />
    
    