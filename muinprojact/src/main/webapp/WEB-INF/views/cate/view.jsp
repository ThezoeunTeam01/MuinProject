<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
   <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!-- 컨텐츠 -->
	<div class="contents">
		<h2 class="tit">콘텐츠 페이지</h2>
		<div>
			<%-- <c:forEach var="board" items="${boardList }" > --%>
            <!-- 슬릭 슬라이드 start -->
		    <div>
	            <div>
	                <div class="slick" id="slick">
	                    <div><img src="/display?fileName=${board.boardFileVO[0].uploadPath}/s_${board.boardFileVO[0].uuid}_${board.boardFileVO[0].fileName}"></div>
	                </div><!-- // slick  -->
	            </div>
		    </div>
	        <!-- // 슬릭 슬라이드 end -->			
			<div class="viewProfileBox">
				<div class="mypageProfile">
				   <div class="imgRatioBox">
				        <img src="/display?fileName=${ memberFileVO[0].uploadPath}/s_${ memberFileVO[0].uuid}_${ memberFileVO[0].fileName}">
				    </div>
				</div>
				<div class="mypageInfo"><span class="yourId">${sessionScope.id }</span></div>		
			<div class="price">${board.boardVO.price }</div>
			</div> 
	        <div class="viewInfoBox">
	            <dl>
	                <dt>${board.boardVO.title}</dt>
	                <dd>${board.boardVO.content }</dd>
	            </dl>
	        </div> 
      		<%-- </c:forEach> --%>
      		
    	</div>			        
		<div class="btnBox">
		    <button type="button" class="backBtn btn" onclick="">글 목록</button>
		    <button type="button" class="submitBtn btn" id="">구매하기</button>
		</div>
    </div><!-- // contents -->

    <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />        
        