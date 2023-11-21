<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE>
<html>
   <head> 
      <meta charset="utf-8"> 
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
      <meta name="format-detection" content="telephone=no">
      <title>무인마켓</title> 
      <!-- jquery 최신 사용 -->
      <script src="https://code.jquery.com/jquery-latest.min.js"></script>
      <!-- 폰트어썸 아이콘 -->
      <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
      <!-- CSS -->
      <link rel="stylesheet" href="css/reset.css">
      <link rel="stylesheet" href="css/layout.css">
      
      <!-- Script -->
       <%
      String sessionId = (String)session.getAttribute("id");
	   %>
	   
	   <script type="text/javascript">
	   $(document).ready(function(){
		   //세션을 이용한 로그인 확인	
	       var session = '<%= sessionId %>';
	       if(session === "null"){
				//alert(session+"로그인 정보 없음");
	           	$('#myPage').hide();
	       } else {
			   //alert(session+"로그인중");
	           $('#login').hide();
	       }
		   
	       $('#logout').click(function(){
	    	    var session = '<%= sessionId %>';
	    	    if(session === "null"){
	    	       // alert(session + "로그인 정보 없음");
	    	    } else {
	    	       // alert(session + "로그인중");
	    	        $.ajax({
	    	            url: '/logout',
	    	            method: 'POST',
	    	            success: function(response) {
	    	                console.log('로그아웃 성공');
	    	                // 서버에서 리다이렉션을 수행하지 않고 클라이언트에서 직접 처리
	    	                window.location.href = '/'; // 리다이렉션할 페이지의 URL로 수정
	    	            },
	    	            error: function(error) {
	    	                console.error('로그아웃 실패', error);
	    	            }
	    	        });
	    	    }
    		});
	   	  }); 
	   
	   </script>
      <script src="../js/script.js"></script>
      <!-- <script src="../js/file.js"></script> -->
      <script src="../js/member.js"></script>
      <script src="../js/board.js"></script>
     
   </head>
   <body>
   
<!-- 헤더 -->
         <header>
            <div class="headerBox" id="ddd">
               <!-- 로고 -->
               <div class="logo_box">
                  <a href="/" class="logo">
                     <img src="" alt="logo" />
                  </a>
               </div>
               <!-- 검색창 -->
               <div class="search_box">
                  <span><input type="search" name="" placeholder="검색어를 입력해 주세요." /></span>
                  <span><button type="submit"><i class="fas fa-search"></i></button></span>
               </div>
            </div>
         </header>         
<!-- 헤더 -->
         <!-- 컨텐츠 컨테이너 -->
         
         <div class="container">