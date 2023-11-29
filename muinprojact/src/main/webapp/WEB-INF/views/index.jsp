<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- Include header.html -->
    <jsp:include page="include/header.jsp" />
    
	<!-- 컨텐츠 --> 
	<div class="contents">
		<h2 class="subTitBox">무인마켓&nbsp;<span class="mainColorTxt">최신매물&nbsp;</span><a href="/"><img src="${pageContext.request.contextPath}/images/icon/icon.png" alt=""></a></h2>
		<div class="contListBox"><!-- slick -->
			<c:forEach var="board" items="${boardList }" >
				<div class="contListWrapBox"> <!-- slickWrapBox -->
					<div class="contListImgBox"> <!-- slickImgBox -->
						<a href="view?bno=${board.boardVO.bno }">
							<img src="/display?fileName=${board.boardFileVO[0].uploadPath}/s_${board.boardFileVO[0].uuid}_${board.boardFileVO[0].fileName}">
						</a>
					</div>
					<div class="contBox"> <!-- slickContBox  -->
						<a href="view?bno=${board.boardVO.bno }">
							<dl>
								<dt>${ board.boardVO.title}</dt>
								<dd class="numComma">${board.boardVO.price }<span>원</span></dd>
								<dd>${board.boardVO.content }</dd>
							</dl>
						</a>
					</div>
				</div>
			</c:forEach>
		</div>
	</div><!-- // contents -->
	
	<!-- Include footer.html -->
    <jsp:include page="include/footer.jsp" />
	 
