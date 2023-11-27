
 console.log("member.js 접속");
 $(document).ready(function(e){
	
	$("#register").on("click", function (e) {
	    regiCheck();
	});
	

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
      } else if ($("#fileFile").val() === "") {
          alert("프로필 파일을 업로드 하세요!");
          $("#profile").focus();
      }else  if (confirm("회원 가입을 하시겠습니까?")) {
 	    updateFileList();
 	    $("#muinRegiForm").submit();
      }
   };
	
	$("#memberUpdate").on("click", function (e) {
	    updateCheck();
	});
	
	function updateCheck() {
	      if($("#pw").val().length < 1) {
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
	      } else if ($("#fileFile").val() === "") {
	          alert("프로필 파일을 업로드 하세요!");
	          $("#profile").focus();
	      }else  if (confirm("회원정보 수정을 하시겠습니까?")) {
	 	    updateFileList();
	 	    $("#memberUpdateForm").submit();
	      }
	   };	
	
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
   