<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
   <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
   <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!-- 컨텐츠 -->
	<div class="contents">
		<h2 class="tit">콘텐츠 페이지</h2>
		<div>
            <!-- 슬릭 슬라이드 start -->
		    <div>
	            <div class="ContSlickBox">     	
	                <div class="slick" id="slick">
	                	<c:forEach var="boardFileList" items="${boardViewList[0].boardFileVO }">
	                    <div class="slickImgBox">
	                   		 <img src="/display?fileName=${boardFileList.uploadPath}/${boardFileList.uuid}_${boardFileList.fileName}">
	                    </div>
	                    </c:forEach> 
	                </div><!-- // slick  -->	                
	            </div>
		    </div>
	        <!-- // 슬릭 슬라이드 end -->	
	        
	        <div class="viewContBox">		
				<div class="viewProfileBox">
					<div class="mypageProfile">
					   <div class="imgRatioBox">
					        <img src="/display?fileName=${ boardViewList[0].memberFileVO[0].uploadPath}/s_${ boardViewList[0].memberFileVO[0].uuid}_${ boardViewList[0].memberFileVO[0].fileName}">
					    </div>
					</div>
					<div class="mypageInfo"><span class="yourId">${boardViewList[0].boardVO.id }</span><span>님</span></div>		
				<div class="price numComma">${boardViewList[0].boardVO.price }<span>원</span></div>
				</div> 
		        <div class="viewInfoBox">
		            <dl>
		                <dt>${boardViewList[0].boardVO.title}</dt>
		                <dd>${boardViewList[0].boardVO.content }</dd>
		            </dl>
		        </div>
	        </div>
	        
    	</div>			        
		<div class="btnBox">
		    <button type="button" class="backBtn btn" onclick="history.go(-1)">글 목록</button>
		    <button type="button" class="modifyBtn btn" onclick="location.href='boardUpdate?bno=${boardViewList[0].boardVO.bno}'">수정하기</button>
		    <button type="button" class="submitBtn btn" onclick="history.go(-1)">구매하기</button>
		</div>
    </div><!-- // contents -->

    <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />        
        