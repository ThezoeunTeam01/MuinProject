<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    <div class="contents">
        <!-- 카테고리메뉴 -->
        <div>
            <ul>
                <li>
                    <a href="">디지털</a>
                </li>
                <li>
                    <a href="">패션</a>
                </li>
                <li>
                    <a href="">etc</a>
                </li>
            </ul>
        </div>
        <!-- 컨텐츠 -->
        <div class="CateContBox">
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
		</div>
	<!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
	 