<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
     
	<!-- 컨텐츠 -->
	<div class="contents">
	    <h2 class="tit">회원정보 수정</h2>
	    <form action="memberUpdate" method="post" id="memberUpdateForm" enctype="multipart/form-data" class="formData">
	        <!-- 마이 페이지 -->
	        <div class="registerBox">
	            <div class="regiFlex">
	                <label for="id">아이디</label>
	                <input type="text" name="id" id="id" readonly="readonly" value=${memberList[0].id }>
	            </div>
	            <div class="regiFlex">
	                <label for="pw">비밀번호</label>
	                <input type="password" name="pw" id="pw" value=${memberList[0].pw }>
	            </div>
	            <div class="notice_red" id="pwNotice1"></div>
	            
	            <div class="regiFlex">
	                <label for="pwCheck">비밀번호 확인</label>
	                <input type="password" name="pwCheck" id="pwCheck" value=${memberList[0].pw }>
	                <button type="button" class="checkBtn btn" id="checkPasswordBtn">
	                    비밀번호 확인 체크
	                </button>
	            </div>
	            <div class="notice_red" id="pwNotice2"></div>   
	
	            <div class="regiFlex">
	                <label for="name">이름</label>
	                <input type="text" name="name" id="name" value="${memberList[0].name }">
	            </div>
            	<div class="notice_red" id="nameNotice"></div>	            
	            
	            <div class="regiFlex">
	                <label for="birth">생년월일</label>
	                <input type="text" name="birth" id="birth" value="${memberList[0].birth }">
	            </div>
            	<div class="notice_red" id="birthNotice"></div>	            
	            
	            <div class="regiFlex">
	                <label for="address">주소</label>
	                <input type="text" name="address" id="address" value="${memberList[0].address }">
	            </div>
            	<div class="notice_red" id="addrNotice"></div>	            
	            
	            <!-- 핸드폰 설정 시 - 사용할 건지? 확인 필요 -->
	            <div class="regiFlex">
	                <label for="phone">핸드폰</label>
	                <input type="text" name="phone" id="phone" value="${memberList[0].phone }">
	            </div>
            	<div class="notice_red" id="phoneNotice"></div>  	            
	            
	            <!--  프로필 업로드 하는 부분 -->
	            <div class="regiFlex uploadDiv profile-photo">
	                <label for="profile">프로필 업로드</label>
	                <input type="file" name="profile" id="fileFile" >
	            </div>
            	<div class="notice_red" id="ProfileNotice"></div>	            
	            
	            <!--  수정된 프로필이 노출되는 부분 -->
				<div class="showUploadfileBox">
					<div class="uploadFlexBox" id="uploadButton">
						<ul class="active">
	           				<img src="/display?fileName=${fileList[0].uploadPath}/s_${fileList[0].uuid}_${fileList[0].fileName}">
						</ul>
					</div>
				</div>
	        </div><!-- // register_box -->
	        
	        <div class="btnBox">
	          <button type="button" class="backBtn btn" id="memberDelete" onclick="location.href='memberDelete'">회원 탈퇴</button>
     	      <button type="button" class="submitBtn btn" id="memberUpdate">회원정보 변경하기</button>
	        </div>
	        
	    </form>
	</div><!-- // contents -->
	
	<!-- Include footer.html -->	
    <jsp:include page="../include/footer.jsp" />
	 
