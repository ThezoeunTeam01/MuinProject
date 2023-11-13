   $(document).ready(function() {
          // 비밀번호 일치 여부 확인
          // #checkPasswordBtn 클릭 이벤트 처리
          $('#checkPasswordBtn').click(function(){
			   var pw = $('#pw').val();
              var pwCheck = $('#pwCheck').val();
           
              if(pw==''){
                 alert("비밀번호를 입력해주세요");
              }              
              else if (pw === pwCheck) {
                  $('#pwMatchStatus').text('비밀번호 일치');
              } else {
                  $('#pwMatchStatus').text('비밀번호 불일치');
                  $("#pwCheck").focus();
              }
		  });
          //id체크
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
		
		
		
       }); 
       
       // joinCheck 함수
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
   			
   			
   
   
   