<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
   <!-- 컨텐츠 -->
      <div class="contents">
               <!-- 게시물 업로드 박스 -->
                  <h2 class="tit">게시글 작성</h2>
                  <form action="boardRegister" method="post" >
                     <div class="uploadBox">
                           <input type="hidden" name="id" value="${sessionScope.id}" >
                        <div class="uploadFlex">
                           <label for="image2">사진 업로드</label>
                           <input type="file" name="image2" >   
                        </div>
                        <div class="uploadFlex">
                           <label for="category">카테고리</label>
                           <select name="category">
                              <option value="1">1</option>
                              <option value="2">2</option>
                              <option value="3">3</option>
                           </select>
                        </div>
                        <div class="uploadFlex">
                           <label for="title">타이틀</label>
                           <input type="text" name="title" >   
                        </div>
                        <div class="uploadFlex">
                           <label for="price">가격</label>
                           <input type="number" name="price" >   
                        </div>
                        <div class="uploadFlex">
                           <label for="content">글작성</label>
                           <textarea id="content" name="content" rows="5" cols="100">
                           </textarea>
                        </div>      
                     </div><!-- // uploadBox -->
                     <div class="btnBox">
                        <button type="button" class="backBtn btn">뒤로가기</button>               
                        <button type="submit" class="submitBtn btn">등록하기</button>
                     </div>
                  </form>
            </div><!-- // contents -->
   <!-- Include header.html -->
    <jsp:include page="../include/footer.jsp" />
    