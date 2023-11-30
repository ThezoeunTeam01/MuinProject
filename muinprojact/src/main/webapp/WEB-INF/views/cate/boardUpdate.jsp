<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
	<!-- 컨텐츠 -->
    <div class="contents">
		<!-- 게시물 업로드 박스 -->
         <h2 class="tit">게시글 작성</h2>
         <form action="boardUpdate" method="post" enctype="multipart/form-data" id="muinBoardForm" class="formData">
            <div class="uploadBox">
            	<input type="hidden" name="bno" value="${boardList.vo.bno}">
               <input type="hidden" name="id" id="id" value="${sessionScope.id}" >
               
				<!--  게시물 업로드 이미지 확인 -->
				<div class="showUploadfileBox">
					<div class="uploadFlexBox">
						<ul class="">
							<c:forEach var="updateFileList" items="${boardList.fileVo }">
							<li>
								<div>
									<img src="/display?fileName=${updateFileList.uploadPath}/s_${updateFileList.uuid}_${updateFileList.fileName}">
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
				
               <p class="notice_mini">* 이미지는 최대 3개까지 업로드 가능합니다!</p>
               
               <div class="uploadFlex">
                  <label for="boardImage">사진 업로드</label>
                  <input type="file" name="boardImage" id="fileFile" multiple="multiple">   
               </div>
               <div class="uploadFlex">
                  <label for="category">카테고리</label>
                  <select name="category" id="category">
                     <option value="digital">디지털</option>
                     <option value="fashion">패션</option>
                     <option value="etc">etc</option>
                  </select>
               </div>
               <script>
    				// 서버에서 받아온 값을 가정
				    var category = "${boardList.vo.category}";
				
				    // 받아온 값에 해당하는 option을 선택 상태로 만듦
				    document.getElementById("category").value = category	;
				</script>
				
               <div class="uploadFlex">
                  <label for="title">타이틀</label>
                  <input type="text" name="title" value="${boardList.vo.title }" >   
               </div>
               <div class="uploadFlex">
                  <label for="price">가격</label>
                  <input type="number" name="price" value="${boardList.vo.price }" >   
               </div>
               <div class="uploadFlex">
                  <label for="content">글작성</label>
                  <textarea id="content" name="content" rows="5" cols="50">${boardList.vo.content }</textarea>
               </div>      
            </div><!-- // uploadBox -->
            <div class="btnBox">
               <button type="button" class="backBtn btn" onclick="history.go(-1)">뒤로가기</button>               
               <button type="button" class="submitBtn btn" id="boardRegister">수정하기</button>
            </div>
         </form>
	</div><!-- // contents -->
	
	<!-- Include header.html -->
	<jsp:include page="../include/footer.jsp" />
    