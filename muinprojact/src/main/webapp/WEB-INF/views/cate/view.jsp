<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <!-- Include header.html -->
    <jsp:include page="../include/header.jsp" />
    
   <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
   <script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

	<!-- 컨텐츠 -->
		<div class="contents">
		<h2 class="tit">콘텐츠 페이지</h2>

        <!-- 슬릭 슬라이드 start -->
        <div>
           <h3 class="contTit">나의 매물 - 슬릭 슬라이드 추가</h3>

           <h4 class="contSubTit">디지털</h4>
		   <div class="slick">
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="${pageContext.request.contextPath}/images/defaultImg/whiteKitty.jpg" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀 컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="${pageContext.request.contextPath}/images/defaultImg/cat.png" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
			</div><!-- // slick  -->
			
			<h4 class="contSubTit">패션</h4>
			<div class="slick">
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
			</div><!-- // slick  -->
			
			<h4 class="contSubTit">E.T.C</h4>
			<div class="slick">
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
		        <div class="slickWrapBox">
                     <div class="slickImgBox">
                         <img src="" alt=""  />
                     </div>
                     <div class="slickContBox">
                         <dl>
                             <dt>컨텐츠 타이틀</dt>
                             <dd>xxx원</dd>
                             <dd>컨텐츠 텍스트</dd>
                         </dl>
                     </div>
		        </div>
			</div><!-- // slick  -->	   		   
		    
		   <script>
		   $(function(){
		        $('.slick').each(function() {
	            	$(this).slick({
				      slide: 'div',        //슬라이드될 태그
				      infinite : true,     //무한 반복 옵션     
				      slidesToShow : 1,        // 한 화면에 보여질 컨텐츠 개수
				      slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
				      speed : 500,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
				      arrows : true,         // 옆으로 이동하는 화살표 표시 여부
				      dots : true,         // 스크롤바 아래 점으로 페이지네이션 여부
				      autoplay : false,            // 자동 스크롤 사용 여부
				      autoplaySpeed : 2000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
				      pauseOnHover : true,        // 슬라이드 이동   시 마우스 호버하면 슬라이더 정지
				      vertical : false,        // 세로 방향 슬라이드 옵션
				      prevArrow : "<button type='button' class='slick-prev'><i class='fas fa-angle-left'></i></button>",
				      nextArrow : "<button type='button' class='slick-next'><i class='fas fa-angle-right'></i></button>",
				      draggable : true,     //드래그 가능 여부 
				      responsive: [ // 반응형 웹 구현
				        {  
				          breakpoint: 960, //화면 사이즈
				          settings: {
				            slidesToShow: 1
				          } 
				        },
				        { 
				          breakpoint: 768, //화면 사이즈
				          settings: {    
				            slidesToShow: 1
				          } 
				        }
				      ]
			    	});
				});
		   });
		   </script>        
        </div>
        <!-- // 슬릭 슬라이드 end -->
        
    </div><!-- // contents -->

    <!-- Include footer.html -->
    <jsp:include page="../include/footer.jsp" />        
        