$(document).ready(function() {

   // 세션 id 가져오기
   $.getJSON("../ajax/getSessionId", function(data) {         
        const id = data.id; 
        console.log("script.js id="+id+":end");
        
        if(id === null){
            //alert(session+"로그인 정보 없음");
                 $('#myPage').hide();
          } else {
            //alert(session+"로그인중");
              $('#login').hide();
          }
         
         // 로그아웃
       $('#logout').click(function(){
           if(id === "null"){
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
   
   console.log("script.js 접속")
         
    // id 체크
     $('#idCheck').click(function(){
   
         var id = $("#id").val();
         var userid = {"id":id};
         
         $.ajax({
            url:'../ajax/idCheck',
            type:'post',
            data:userid,
            error : function(request, error) {
                 alert(error + "\n" + request.status);     
            },
            success:function(result){
               if(id==''){
                  alert("아이디를 입력해주세요");
               } else if(result==1){
                 // console.log(id)
          	    $("#idNotice").html("이미 사용중인 아이디 입니다.");
          	    $("#id").focus();  
               }else if ($("#id").val().length < 6 || $("#id").val().length > 8) {
	        	$("#idNotice").html("아이디는 최소 6자 이상 8자 이하 문자 및 숫자로 구성해 주세요!");
	        	$("#idNotice").show();
	        	$("#id").focus();
	    	   }  
               else{
                  console.log(id)
                  $("#id").attr("readonly", true);
                  $("#id").css("opacity","0.5");
                  $("#idNotice").html("사용 가능한 아이디입니다.");
               }
            }
         });
   });
   
   $('#delete').click(function(){
      
      
   });
   
    // -- 카테고리 메뉴 모달창 --
    // 모달 열기
    $("#cateMenuOpenBtn").on("click", function () {
        $("#cateMenuOpenBox").show();
    });

    // 모달 닫기
    $("#closeModalBtn").on("click", function () {
        $("#cateMenuOpenBox").hide();
    });    
    
    // -- 슬릭 슬라이더 추가
	$('#slick').each(function() {
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
       

   
  
   
   
/*   // boardRegiCheck 함수 - 임시 설정
   function boardRegiCheck() {
      if (!$("#id").attr("readonly")) {
          alert("아이디 중복체크를 해야 합니다.");
      } else if ($("#pw").val().length < 1) {
          alert("비밀번호를 입력하세요!");
      } else if ($("#pw").val() !== $("#pwCheck").val()) {
          alert("비밀번호 확인란을 확인해 주세요!");
          $("#pwCheck").focus();
      } else if ($("#name").val().length < 1) {
          alert("이름을 입력하세요!");
          $("#name").focus();
      } else if ($("#birth").val().length < 8) {
          alert("생년월일을 입력하세요!");
          $("#birth").focus();
      } else if ($("#address").val() === "") {
          alert("프로필 파일을 업로드 하세요!");
          $("#address").focus();
      } else if ($("#phone").val() === "") {
          alert("번호를 입력하세요!");
          $("#phone").focus();
      } else if ($("#fileFile").val() === "") {
          alert("프로필 파일을 업로드 하세요!");
          $("#profile").focus();
      }else  if (confirm("회원 가입을 하시겠습니까?")) {
              $("#muinRegiForm").submit();
      }
   };   */


   
   
   
 