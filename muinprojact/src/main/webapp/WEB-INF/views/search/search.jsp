<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    <div class="contents">
        <!-- 컨텐츠 -->
      <div class="slick">
           <c:forEach var="board" items="${searchList }" >
           
        
           <div class="slickWrapBox">
               <div class="slickImgBox">
                     <a href="view?bno=${board.boardVO.bno }">
                         <img src="/display?fileName=${board.boardFileVO[0].uploadPath}/s_${board.boardFileVO[0].uuid}_${board.boardFileVO[0].fileName}">
                     </a> 
               </div>
               
               <div class="slickContBox">
                  <a href="view?bno=${board.boardVO.bno }">
                      <dl>
                          <dt>${ board.boardVO.title}</dt>
                          <dd>${board.boardVO.price }</dd>
                          <dd>${board.boardVO.content }</dd>
                      </dl>
                   </a>
               </div>               
           </div>
           
         </c:forEach>
      </div>
      </div>
   <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />
    