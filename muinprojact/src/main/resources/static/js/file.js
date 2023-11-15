/**
 * 
 */
 console.log("file.js 접속");
 $(document).ready(function(e){
	
	// change start
	$("input[type='file']").change(function(e){
		var form = new FormData();
		var inputFile = $("input[name='profile']");
		
		var files = inputFile[0].files;
		
		for(var i=0;i<files.length;i++){
			
			console.log(files[i]);
			
			form.append("uploadFile",files[i]);
		}
		
		$.ajax({
			url:'../ajax/uploadAjax',
			processData: false,
	        contentType: false,
			data: form,
			type: 'POST',
			dataType: 'json',
			success: function(result){
				if(result.length<=0){
				   alert("이미지 파일을 업로드 해주세요");
				   document.getElementById('profile').value = null;					
				}
			},
			error: function(xhr, status, error) {
                    // 오류가 발생했을 때 수행할 동작
                    console.error("Ajax request failed. Status: " + status + ", Error: " + error);
    				console.error("XHR:", xhr);
    				console.error("Server Response:", xhr.responseText);
            }
			
		});
	});	// change end
});	// ready end