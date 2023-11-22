<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
	<!-- 컨텐츠 -->
    <div class="contents">
		<!-- 게시물 업로드 박스 -->
         <h2 class="tit">게시글 작성</h2>
         <form action="boardRegister" method="post" enctype="multipart/form-data">
            <div class="uploadBox">
               <input type="hidden" name="id" id="id" value="${sessionScope.id}" >
               
				<!--  게시물 업로드 이미지 확인 -->
				<div class="showUploadfileBox">
					<div class="uploadFlexBox">
						<ul class="active">
							
						</ul>
						<div class=""> </div>
					</div>
				</div>
               	<p class="notice_mini">* 이미지는 최대 3개까지 업로드 가능합니다!</p>
               
               <div class="uploadFlex">
                  <label for="boardImage">사진 업로드</label>
                  <input type="file" name="boardImage" id="fileFile" multiple="multiple">   
               </div>
               <div class="uploadFlex">
                  <label for="category">카테고리</label>
                  <select name="category">
                     <option value="digital">디지털</option>
                     <option value="fashion">패션</option>
                     <option value="etc">etc</option>
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
                  <textarea id="content" name="content" rows="5" cols="50"></textarea>
               </div>      
            </div><!-- // uploadBox -->
            <div class="btnBox">
               <button type="button" class="backBtn btn" >뒤로가기</button>               
               <button type="submit" class="submitBtn btn" id="boardRegister">등록하기</button>
            </div>
         </form>
	</div><!-- // contents -->
	
	<!-- Include header.html -->
	<jsp:include page="../include/footer.jsp" />
    