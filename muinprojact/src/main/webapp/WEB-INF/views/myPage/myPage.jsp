<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
   <!-- 컨텐츠 -->
   <div class="contents">
   
   		<!-- 유저 프로필 -->
       <div>파일 업로드</div>
      <div class="fileUpload">
            <ul>
                <li>
                    <img src="" alt="">
                </li>
                <li>
                    <p>${sessionScope.id }</p>
                </li>
            </ul>
        </div>
        <input type="button" name="logout" id="logout" value="로그아웃" />
        <a href="update"><input type="button" name="update" id="update" value="수정" /></a>
        <!-- 컨텐츠 -->
        <div>
            <h2>컨텐츠 <span>타이틀</span><img alt="" src=""></h2>
            <ul>
                <li>
                    <a>
                        <div>
                            <img alt="" src="">
                        </div>
                        <div>
                            <dl>
                                <dt>컨텐츠 타이틀</dt>
                                <dd>xxx원</dd>
                                <dd>컨텐츠 텍스트</dd>
                            </dl>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
   
       <h2 class="tit">마이페이지</h2>
       
       <form action="register" method="post" id="muinRegiForm" enctype="multipart/form-data">
           <!-- 마이 페이지 -->
           <div class="registerBox">
               <!--  프로필이 노출되는 부분 -->
               <div class="showProfile2">
                  <div class="imgRatioBox">
                       <img src = "${pageContext.request.contextPath}/register/photoView.do" class = "profile-photo" />
                    </div>
               </div>
               <div class="regiFlex">
                   <label for="id">아이디</label>
                   <input type="text" name="id" id="id" readonly="readonly">
               </div>                             
               <div class="regiFlex">
                   <label for="name">이름</label>
                   <input type="text" name="name" id="name" readonly="readonly">
               </div>
               <div class="regiFlex">
                   <label for="birth">생년월일</label>
                   <input type="text" name="birth" id="birth" readonly="readonly">
               </div>
               <!-- 핸드폰 설정 시 - 사용할 건지? 확인 필요 -->
               <div class="regiFlex">
                   <label for="phone">핸드폰</label>
                   <input type="text" name="phone" id="phone" readonly="readonly">
               </div>               
               <div class="regiFlex">
                   <label for="address">주소</label>
                   <input type="text" name="address" id="address" readonly="readonly">
               </div>
           </div><!-- // register_box -->
           
           <div class="btnBox">
               <button type="button" class="backBtn btn">뒤로가기</button>
               <!-- 회원정보 수정 페이지로 이동하는 버튼 -->
               <button type="submit" class="submitBtn btn" onclick="location.href=''">회원정보 변경하기</button>
           </div>
       </form>
   </div><!-- // contents -->

   <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
    