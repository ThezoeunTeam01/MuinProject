   $(document).ready(function() {
	   		//세션을 이용한 로그인 확인	
            var session = '<%= sessionId %>';
            if(session === "null"){
                $('#myPage').hide();
            } else {
                $('#login').hide();
            }
            $('#logout').click(function(){
	  		 var session = '<%= sessionId %>';
            if(session === "null"){
				alert("로그인해")
            } else {
				alert("로그인됨")
			$.ajax({
	            url: '/logout', // 로그아웃을 처리하는 서버의 엔드포인트에 맞게 수정
	            method: 'POST', // 로그아웃 요청은 주로 POST 방식을 사용
	            success: function(response) {
                // 로그아웃이 성공하면 서버에서 세션을 만료시킬 것이므로 필요한 후속 작업을 수행
                console.log('로그아웃 성공');
            },
          		error: function(error) {
                console.error('로그아웃 실패', error);
            }
        });
                };
     		 });   
            
          // 비밀번호 일치 여부 확인
          function checkPasswordMatch() {
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
          };

          // #checkPasswordBtn 클릭 이벤트 처리
          $('#checkPasswordBtn').click(checkPasswordMatch);
          
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
   			
   			
   
   
   