<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<!-- Include header.html -->
    <jsp:include page="include/header.jsp" />
	<!-- 컨텐츠 -->
	<div class="contents">
		<h2>컨텐츠 <span>타이틀</span><img alt="" src=""></h2>
		<div class="indexContBox">
			<div class="slick">
				<c:forEach var="board" items="${boardList }" >
					<div class="slickWrapBox">
						<div class="slickImgBox">
							<img src="/display?fileName=${board.boardFileVO[0].uploadPath}/s_${board.boardFileVO[0].uuid}_${board.boardFileVO[0].fileName}">
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
		</div>
	</div><!-- // contents -->
	<!-- Include footer.html -->
    <jsp:include page="include/footer.jsp" />
	 
