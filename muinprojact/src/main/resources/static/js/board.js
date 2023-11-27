/**
 * 
 */
 console.log("board.js 접속");
 $(document).ready(function(e){
	
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
   };
	

/*$("#boardRegister").on("click", function(e){
      var boardForm = $("#muinBoardForm");
      var id = $("#id").val();
      var str = "";
      
      $(".showUploadfileBox div ul li").each(function(i, li){
         var jli = $(li);
         str += "<input type='hidden' name='boardFileList["+i+"].id' value='"+id+"'>";
         str += "<input type='hidden' name='boardFileList["+i+"].fileName' value='"+jli.data("filename")+"'>";
         str += "<input type='hidden' name='boardFileList["+i+"].uuid' value='"+jli.data("uuid")+"'>";
         str += "<input type='hidden' name='boardFileList["+i+"].uploadPath' value='"+jli.data("uploadpath")+"'>";
      });
      boardForm.append(str);
      boardCheck();
   });*/
   
/*   function boardCheck() {
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
      }else  if (confirm("글등록을 하시겠습니까?")) {
              $("#muinBoardForm").submit();
      }
   };*/
   
});   // ready end
