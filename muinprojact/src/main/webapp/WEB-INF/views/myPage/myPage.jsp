<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
   

   
    <jsp:include page="../include/header.jsp" />
    
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
   <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
    