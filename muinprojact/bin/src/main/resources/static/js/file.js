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
         
         if(!checkExtension(files[i].name, files[i].size)){
            document.getElementById('profile').value = null;
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
               document.getElementById('profile').value = null;
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
      var uploadUL = $(".imgRatioBox ul");
      var str = "";
      
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
   
   var regiForm = $("#muinRegiForm");
   
   
   $("#register").on("click", function(e){
      
      var id = $("#id").val();
      var str = "";
      
      $(".imgRatioBox ul li").each(function(i, li){
         var jli = $(li);
         
         str += "<input type='hidden' name='fileList["+i+"].fileName' value='"+jli.data("filename")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].uuid' value='"+jli.data("uuid")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].uploadPath' value='"+jli.data("uploadpath")+"'>";
         str += "<input type='hidden' name='fileList["+i+"].id' value='"+id+"'>";
      });
      regiForm.append(str);
      regiCheck();
   });
});   // ready end
   