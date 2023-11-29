/**
 * 
 */
 console.log("board.js 접속");
$(document).ready(function() {
	
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
   
	  function updateFileList() {
		var form = $(".formData");
		var id = $("#id").val();
		var str = "";
		var fileList = $("#fileList")
		
		$(".showUploadfileBox div ul li").each(function (i, li) {
		    var jli = $(li);
		    str += "<div id='fileList'>"
		    str += "<input type='hidden' name='boardFileList[" + i + "].fileName' value='" + jli.data("filename") + "'>";
		    str += "<input type='hidden' name='boardFileList[" + i + "].uuid' value='" + jli.data("uuid") + "'>";
		    str += "<input type='hidden' name='boardFileList[" + i + "].uploadPath' value='" + jli.data("uploadpath") + "'>";
		    str += "<input type='hidden' name='boardFileList[" + i + "].id' value='" + id + "'>";
		    str += "</div>"
		});
		form.append(str);
	}
	
});   // ready end
// 카테고리 값 받아오기
    var category = "${boardList.category}";
	console.log(category);
	document.getElementById("category").value = category;
