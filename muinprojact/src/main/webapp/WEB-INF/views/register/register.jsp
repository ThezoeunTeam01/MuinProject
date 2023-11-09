<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include header.html -->
<jsp:include page="../include/header.jsp" />

<!-- 컨텐츠 -->
<div class="contents">
    <h2 class="tit">무인마켓 회원가입</h2>
    
    <form action="register" method="post" id="muinRegiForm">
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
            <div class="regiFlex">
                <label for="profile">사진 업로드</label>
                <input type="file" name="profile" id="profile">
            </div>
        </div><!-- // register_box -->
        <div class="btnBox">
            <button type="button" class="backBtn btn">뒤로가기</button>
            <button type="submit" class="submitBtn btn" onclick="regiCheck()">회원가입</button>
        </div>
    </form>
</div><!-- // contents -->
   <script src="../js/member.js"></script>
   <script>
       $(document).ready(function() {
          
          // 비밀번호 일치 여부 확인
          function checkPasswordMatch() {
              var pw = $('#pw').val();
              var pwCheck = $('#pwCheck').val();
           
              if(pw==''){
                 alert("비밀번호를 입력해주세요");
              }              
              else if (pw === pwCheck) {
                  $('#pwMatchStatus').text('비밀번호 일치');
              } else {
                  $('#pwMatchStatus').text('비밀번호 불일치');
                  $("#pwCheck").focus();
              }
          }

          // joinCheck 함수
          function regiCheck() {
              if (!$("#id").attr("readonly")) {
                  alert("아이디 중복체크를 해야 합니다.");
              } else if ($("#pw").val().length < 1) {
                  alert("비밀번호를 입력하세요!");
              } else if ($("#pw").val() !== $("#pwCheck").val()) {
                  alert("비밀번호 확인란을 확인해 주세요!");
                  $("#pwCheck").focus();
              } else if ($("#name").val().length < 1) {
                  alert("이름을 입력하세요!");
                  $("#name").focus();
              } else if ($("#birth").val().length < 8) {
                  alert("생년월일을 입력하세요!");
                  $("#birth").focus();
              } else if ($("#address").val() === "") {
                  alert("프로필 파일을 업로드 하세요!");
                  $("#address").focus();
              } else if ($("#phone").val() === "") {
                  alert("주소를 입력하세요!");
                  $("#phone").focus();
              } else if ($("#profile").val() === "") {
                  alert("프로필 파일을 업로드 하세요!");
                  $("#profile").focus();
              } else {
                  // 비밀번호 일치 여부 확인 함수 호출
                  checkPasswordMatch();

                  if (confirm("회원 가입을 하시겠습니까?")) {
                      $("#muinRegiForm").submit();
                  }
              }
          }

          // #checkPasswordBtn 클릭 이벤트 처리
          $
          ('#checkPasswordBtn').click(checkPasswordMatch);
           
       }); 
   </script>

   <!-- Include header.html -->
    <jsp:include page="../include/footer.jsp" />
    
    