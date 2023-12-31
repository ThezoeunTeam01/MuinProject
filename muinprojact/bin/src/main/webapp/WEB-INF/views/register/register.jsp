<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include header.html -->
<jsp:include page="../include/header.jsp" />

<!-- 컨텐츠 -->
<div class="contents">
    <h2 class="tit">무인마켓 회원가입</h2>
    
    <form action="register" method="post" id="muinRegiForm" enctype="multipart/form-data">
        <!-- 회원가입 박스 -->
        <div class="registerBox">
            <div class="alignBoxRight">
             <button type="reset" class="">초기화</button>
          </div>   
            <div class="regiFlex">
                <label for="id">아이디</label>
                <input type="text" name="id" id="id">
                <button type="button" class="checkBtn btn" id="idCheck">
                    아이디 중복체크
                </button>
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
            <div class="regiFlex uploadDiv profile-photo">
                <label for="profile">프로필 업로드</label>
                <input type="file" name="profile" id="profile">
            </div>
            <div class="showProfile">
            	<div class="imgRatioBox">
           			<ul>
           			
           			</ul>
           		</div>
            </div>
                        
        </div><!-- // register_box -->
        <div class="btnBox">
            <button type="button" class="backBtn btn">뒤로가기</button>
            <!--서밋을 버튼으로 변경 -->
            <button type="button" class="submitBtn btn" id="register">회원가입</button>
        </div>
    </form>
</div><!-- // contents -->



   <!-- Include header.html -->
    <jsp:include page="../include/footer.jsp" />
    
    