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
  	  
      <script src="../js/script.js"></script>
      <script src="../js/file.js"></script>
      <script src="../js/member.js"></script>
      <script src="../js/board.js"></script>
     
   </head>
   <body>
   
   		<!-- 카테고리 메뉴 박스 -->
		<div class="cateContBox" id="cateMenuOpenBox">
			<ul>
				<li>
					<a href="/digital">
						디지털
					</a>
				</li>
				<li>
					<a href="/fashion">
						패션
					</a>
				</li>
				<li>
					<a href="/etc">
						etc
					</a>
				</li>
			</ul>
			<button id="closeModalBtn"><i class="fas fa-times"></i></button>
		</div>

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