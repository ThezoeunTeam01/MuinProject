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
      
   // 비밀번호 일치 여부 확인
   $('#checkPasswordBtn').click(function(){
      
      var pw = $('#pw').val();
      var pwCheck = $('#pwCheck').val();
      
      if(pw==''){
         alert("비밀번호를 입력해주세요");                 
        }else if (pw === pwCheck) {
         $('#pwMatchStatus').text('비밀번호 일치');                 
      } else {
          $('#pwMatchStatus').text('비밀번호 불일치');
             $("#pwCheck").focus();                 
      }                                            
   });
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
               }                  
               else if(result==1){
                  console.log(id)
                  alert("중복되었습니다.");
               }else{
                  console.log(id)
                  alert("사용가능한 아이디 입니다.")
                  $("#id").attr("readonly", true);
                  $("#id").css("opacity","0.5");
               }
            }
         });
   });
   
   $('#delete').click(function(){
      
      
   });
});
       
   // regiCheck 함수
   function regiCheck() {
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
          alert("주소를 입력하세요!");
          $("#address").focus();
      } else if ($("#phone").val() === "") {
          alert("번호를 입력하세요!");
          $("#phone").focus();
      } else if ($("#profile").val() === "") {
          alert("프로필 파일을 업로드 하세요!");
          $("#profile").focus();
      }else  if (confirm("회원 가입을 하시겠습니까?")) {
              $("#muinRegiForm").submit();
      }
   };
   
   // memberUpdateCheck 함수
   function memberUpdateCheck() {
	  if ($("#pw").val().length < 1) {
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
          alert("주소를 입력하세요!");
          $("#address").focus();
      } else if ($("#phone").val() === "") {
          alert("번호를 입력하세요!");
          $("#phone").focus();
      }else  if (confirm("수정 하시겠습니까?")) {
              $("#memberUpdateForm").submit();
      }
   };
   
   
   // boardRegiCheck 함수 - 임시 설정
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
      } else if ($("#profile").val() === "") {
          alert("프로필 파일을 업로드 하세요!");
          $("#profile").focus();
      }else  if (confirm("회원 가입을 하시겠습니까?")) {
              $("#muinRegiForm").submit();
      }
   };     
   
 