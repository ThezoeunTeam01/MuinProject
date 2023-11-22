<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
   <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- 컨텐츠 -->
	<div class="contents">
	<h2 class="tit">마이 페이지</h2>
	
		<div class="mypageInfoBox">
	   	    <!-- 유저 프로필 -->
			<div class="fileUpload">
				<div class="mypageProfile">
				   <div class="imgRatioBox">
				        <img src="/display?fileName=${ memberFileVO[0].uploadPath}/s_${ memberFileVO[0].uuid}_${ memberFileVO[0].fileName}">
				    </div>
				</div>
				<div class="mypageInfo"><span class="yourId">${sessionScope.id }</span> 님, 환영합니다!</div>
				<div style="display: flex; flex-direction: column; justify-content: space-evenly; gap: 10px;">
  		        	<button type="button" name="logout" id="logout" class="backBtn btn">로그아웃</button>	
	     			<button type="button" name="update" id="update" class="submitBtn btn" onclick="location.href='memberUpdate'">내 정보 수정</button>
	     		</div>
			</div>
	        <div class="btnBox">
	        	<!-- <input type="button" name="logout" id="logout" value="로그아웃"  class="backBtn btn" /> -->
	        	<button type="button" name="logout" id="logout" class="backBtn btn">로그아웃</button>		
	     		<button type="button" name="update" id="update" class="submitBtn btn" onclick="location.href='memberUpdate'">내 정보 수정</button>
	        </div>
		</div>
		
		<div class="slick">
	     	<c:forEach var="board" items="${boardList }" >
	        <div class="slickWrapBox">
	        
               <div class="slickImgBox">
                   <img src="/display?fileName=${board.fileVOs[0].uploadPath}/s_${board.fileVOs[0].uuid}_${board.fileVOs[0].fileName}">
                   
               </div>
               
               <div class="slickContBox">
                   <dl>
                       <dt>${ board.boardVO.title}</dt>
                       <dd>${board.boardVO.price }</dd>
                       <dd>${board.boardVO.content }</dd>
                   </dl>
               </div>
               
	        </div>
	      </c:forEach>
		</div>
       
    </div><!-- // contents -->

    <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
    