 
 console.log("member.js 접속");
$(document).ready(function() {
	
	$("#register").on("click", function (e) {
	    regiCheck();
	});
	
	// 비밀번호 일치 여부 확인 // pwMatchStatus -> pwNotice
	$('#checkPasswordBtn').click(function(){
	      
	  var pw = $('#pw').val();
	  var pwCheck = $('#pwCheck').val();
	  
	  if(pw==''){
	     alert("비밀번호를 입력해주세요");                 
	    }else if (pw === pwCheck) {
	     $('#pwNotice2').html('비밀번호 일치');                 
	  } else {
	      $('#pwNotice2').html('비밀번호 불일치');
	      $("#pwCheck").focus();                 
	  }                                            
	});
	
	// 인풋 파일과 파일 업로드 ul 연동
    function setupFileInput() {
        $('#uploadButton').on('click', function () {
            $('#fileFile').click();
        });
    }

    // 페이지 로드 시 함수 호출
    setupFileInput();
	
    // 정규 표현식: 영문 대소문자, 숫자, 특수문자 사용 가능하며, 최소 6자이상 최대 8이하 이어야 함
    var pwPattern = /^[a-zA-Z0-9!@#$%^&*()_+{}\[\]:;<>,.?~\\/]{6,8}$/;
	
	function regiCheck() {

	   if (!$("#id").attr("readonly")) {
	        alert("아이디 중복체크를 해야 합니다.");
	    } else if ($("#id").val() === $("#pw").val()) {
	        alert("아이디와 비밀번호는 동일할 수 없습니다!");
	        $("#pw").focus();
	    }/* else if ($("#pw").val().length >= 6 && $("#pw").val().length <= 8 && pwPattern.test($("#pw").val())) {
	    	$("#pwNotice1").html("비밀번호 조건에 부합합니다.");
		} */
	     else if ($("#pw").val().length < 6 || $("#pw").val().length > 8 || !pwPattern.test($("#pw").val())) {
	        $("#pwNotice1").html("비밀번호는 영문 대소문자, 숫자, 특수문자 등으로 이루어진 6자 이상 8자 이하이어야 합니다.");
	        $("#pwNotice1").show();
	        $("#pw").focus(); 
	    } else if ($("#pw").val() !== $("#pwCheck").val()) {
	        $("#pwNotice2").html("비밀번호 확인란을 확인해 주세요!");
	        $("#pwNotice2").show();
	        $("#pwCheck").focus();
	    } else if ($("#name").val().length < 1) {
	        $("#nameNotice").html("이름을 입력해 주세요!");
	        $("#name").focus();
	    } else if ($("#birth").val().length !== 8) {
	        $("#birthNotice").html("생년월일 8자를 정확히 입력해주세요!");
	        $("#birthNotice").show();
	        $("#birth").focus();
	    } else if ($("#address").val() === "") {
	        $("#addrNotice").html("주소를 입력해 주세요!");
	        $("#address").focus();
	    } else if ($("#phone").val() === "") {
	        $("#phoneNotice").html("핸드폰 번호를 입력해 주세요!");
	        $("#phone").focus();
	    } else if (!/^\d+$/.test($("#phone").val())) {
	        $("#phoneNotice").html("숫자만 입력 가능합니다!");
	        $("#phoneNotice").show();
	        $("#phone").focus();
	    } else if ($("#fileFile").val() === "") {
			$("#ProfileNotice").html("프로필 파일을 업로드해 주세요!");
	        $("#fileFile").focus();
	    }else if (confirm("회원 가입을 하시겠습니까?")) {
	        updateFileList();
	        $("#muinRegiForm").submit();
	    }
	};
   
   
	
	$("#memberUpdate").on("click", function (e) {
	    updateCheck();
	});
	
	function updateCheck() {
	      if ($("#pw").val().length < 6 || $("#pw").val().length > 8 || !pwPattern.test($("#pw").val())) {
	        $("#pwNotice1").html("비밀번호는 영문 대소문자, 숫자, 특수문자 등으로 이루어진 6자 이상 8자 이하이어야 합니다.");
	        $("#pwNotice1").show();
	        $("#pw").focus(); 
	      } else if ($("#pw").val() !== $("#pwCheck").val()) {
	        $("#pwNotice2").html("비밀번호 확인란을 확인해 주세요!");
	        $("#pwNotice2").show();
	        $("#pwCheck").focus();
	      } else if ($("#name").val().length < 1) {
	        $("#nameNotice").html("이름을 입력해 주세요!");
	        $("#name").focus();
	    } else if ($("#birth").val().length !== 8) {
	        $("#birthNotice").html("생년월일 8자를 정확히 입력해주세요!");
	        $("#birthNotice").show();
	        $("#birth").focus();
	    } else if ($("#address").val() === "") {
	        $("#addrNotice").html("주소를 입력해 주세요!");
	        $("#address").focus();
	    } else if ($("#phone").val() === "") {
	        $("#phoneNotice").html("핸드폰 번호를 입력해 주세요!");
	        $("#phone").focus();
	    } else if (!/^\d+$/.test($("#phone").val())) {
	        $("#phoneNotice").html("숫자만 입력 가능합니다!");
	        $("#phoneNotice").show();
	        $("#phone").focus();
	    } /*else if ($("#fileFile").val() === "") {
			$("#ProfileNotice").html("프로필 파일을 업로드해 주세요!");
	        $("#fileFile").focus();
	    }*/ else  if (confirm("회원정보 수정을 하시겠습니까?")) {
	 	    updateFileList();
	 	    $("#memberUpdateForm").submit();
	      }
	   };	
	   
/*	   
	$("#boardRegister").on("click", function (e) {
	  boardCheck();
	});
	
	function boardCheck() {
     if ($("input[type='file']").val().length < 1) {
          alert("사진을 업로드해주세요!!!!!!!!");
          $("input[type='file']").focus();
      } else if ($("select [name='category']").val() == "") {
          alert("카테고리를 입력하세요!!!!!!!!");
          $("#birth").focus();
      } else if ($("input[name='title']").val() === "") {
          alert("제목을 입력해주세요!!!!!!!!");
          $("#address").focus();
      } else if ($("input[name='price']").val() === "") {
          alert("가격을 입력해주세요!!!!!!!");
          $("#phone").focus();
      } else if ($("input[name='content']").val() === "") {
          alert("글 내용을 작성해주세요!!!!!!");
          $("#profile").focus();
      } else  if (confirm("글등록을 하시겠습니까?")) {
 	    updateFileList();
 	    $("#muinBoardForm").submit();
      }
   };	   */
	
   function updateFileList() {
		var form = $(".formData");
		var id = $("#id").val();
		var str = "";
		var fileList = $("#fileList")
		
		$(".showUploadfileBox div ul li").each(function (i, li) {
		    var jli = $(li);
		    str += "<div id='fileList'>"
		    str += "<input type='hidden' name='fileList[" + i + "].fileName' value='" + jli.data("filename") + "'>";
		    str += "<input type='hidden' name='fileList[" + i + "].uuid' value='" + jli.data("uuid") + "'>";
		    str += "<input type='hidden' name='fileList[" + i + "].uploadPath' value='" + jli.data("uploadpath") + "'>";
		    str += "<input type='hidden' name='fileList[" + i + "].id' value='" + id + "'>";
		    str += "</div>"
		});
		form.append(str);
	}
   
});   // ready end
   