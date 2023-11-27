/**
 * 
 */
 console.log("file.js 접속");
 $(document).ready(function(e){

	/* 임시 추가 - 강한별 */
	// 인풋 파일 영역에 이미지 업로드 되어 있으면 클래스 active 토글 클래스 삭제처리
	// 파일 재선택을 위해 클릭 시 클래스 다시 이전으로 토글되는 것 방지 처리
	// 인풋 파일 선택하기 전 백그라운드 이미지 설정하기
	// 인풋 파일 선택 취소 시에는 클래스 초기화
	var inputs = $("#fileFile");
	var uploadFlexBox = $('.uploadFlexBox > ul');
	var initialInputValue = inputs.val();
	
	// 파일을 선택하기 전에 배경 이미지 설정
	uploadFlexBox.css('background-image', "url('../../images/defaultImg/plus.png')");
	
	// 파일 입력이 변경되었을 때
	inputs.on("change", function() {
	    var filled = $(this).filter(function() {
	        // 파일이 선택되었을 때 true 반환
	        return this.files.length > 0;
	    });
	    // 파일이 선택되었는지 여부에 따라 'active' 클래스 토글
	    uploadFlexBox.toggleClass('active', filled.length === 0);
	});
	
	// 파일 입력이 클릭되었을 때
	inputs.change(function() {
	    // 클릭 전에 파일이 선택되지 않았다면
	    if (this.files.length === 0) {
	        // 파일 선택을 처리하기 위해 'change' 이벤트 트리거
	        $(this).val('').trigger('change');
	    } else if (!initialInputValue) {
	        // 파일이 선택되었고 처음 선택인 경우, 배경 이미지 제거
	        initialInputValue = $(this).val();
	        uploadFlexBox.css('background-image', "none");
	    } else {
	        // 파일이 선택되었고 처음 선택이 아닌 경우, 입력값 초기화
	        $(this).val('');
	        uploadFlexBox.removeClass('active');
	        uploadFlexBox.css('background-image', "none");
	    }
	});
	

   // change start
   $("input[type='file']").change(function(e){
      var uploadUL = $(".showUploadfileBox div ul");
      var form = new FormData();
      var inputFile = $("input[type='file']");

      var files = inputFile[0].files;
      
      for(var i=0;i<files.length;i++){
         
         if(!checkExtension(files[i].name, files[i].size)){
            $("input[type='file']").val("");
            var uploadUL = $(".showUploadfileBox div ul");
            uploadUL.empty();
            return false;
         }else{
            console.log(files[i]);
            form.append("uploadFile",files[i]);
         }                                                   
      }
      
      $.ajax({
         url:'../ajax/uploadAjax',
         processData: false,
           contentType: false,
         data: form,
         type: 'POST',
         dataType: 'json',
         success: function(result){   // fileDTO list 
            if(result.length<=0){
               
               alert("이미지 파일을 업로드 해주세요");
               $("input[type='file']").val("");
            }
            console.log(result);
            showList(result);
         },
         error: function(xhr, status, error) {
                // 오류가 발생했을 때 수행할 동작
                console.error("Ajax request failed. Status: " + status + ", Error: " + error);
                console.error("XHR:", xhr);
                console.error("Server Response:", xhr.responseText);
         }
                     
      });
   });   // change end
   
   // 업로드 제한
   var regex =  new RegExp("(.*?)\.(exe|sh|zip|alz)$");
   var maxSize = 10000000;
   
   function checkExtension(fileName, fileSize){
      if(fileSize >= maxSize){
         alert("최대 사이즈는 10MB입니다.");
         return false;
      }
      else if(regex.test(fileName)){
         alert("이미지 파일만 업로드 할 수 있습니다.");
         return false;
      }
      return true;
   }
   
   // 업로드 결과 보여주기
   function showList(list){
      var uploadUL = $(".showUploadfileBox div ul");
      var str = "";
      uploadUL.empty();
      
      $(list).each(function(i, li){
         var fileCallPath = encodeURIComponent(li.uploadPath+"/s_"+li.uuid+"_"+li.fileName);
         console.log(fileCallPath);
         str += "<li data-uploadpath='"+li.uploadPath+"' data-uuid='"+li.uuid+"' data-filename='"+li.fileName+"'>";
         str += "<div>";
         str += "<img src='/display?fileName="+fileCallPath+"'>";
         str += "</div>";
         str += "</li>";
         console.log("showList str");
         console.log(str);
      });
      uploadUL.append(str);
   }

});   // ready end
   